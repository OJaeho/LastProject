package com.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class Websocket extends TextWebSocketHandler {
	List<WebSocketSession> sessions = new ArrayList<>();
	Map<String, WebSocketSession> userSessions = new HashMap<>();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("afterConnectionEstablished:" + session);
		sessions.add(session);
		Map<String, Object> map = session.getAttributes();
		String id = (String) map.get("userId");
		System.out.println(id);
		userSessions.put(id, session);
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("handleTextMessage:" + session + " : " + message);
		// protocol:판매자ID, 주문방식
		String msg = message.getPayload();
		System.out.println("msg = " + msg);
		String[] str = message.getPayload().split(",");
		String seller = "seller";
		for (int i = 0; i < str.length; i++) {
			WebSocketSession sellerSession = userSessions.get(seller);
			TextMessage tmpMsg = new TextMessage(str[i]+" "+"주문이 들어왔습니다");
			sellerSession.sendMessage(tmpMsg);
		}
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("afterConnectionEstablished:" + session + ":" + status);
	}
}