package com.web;

import java.util.List;
import java.util.Map;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

public class HandshakingInterceptor extends HttpSessionHandshakeInterceptor{
@Override
public boolean beforeHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
		Map<String, Object> attributes) throws Exception {
	User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	String Id = user.getUsername();
	attributes.put("userId", Id);
	return super.beforeHandshake(request, response, wsHandler, attributes);
}
	
}
