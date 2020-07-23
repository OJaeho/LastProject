<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" >
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" >
	<meta name="viewport" content="user-scalable=1, initial-scale=0.1, width=device-width, target-densitydpi=device-dpi" >
		

	

	<script src="./nexacro17lib/framework/SystemBase.js"></script>
<script src="./nexacro17lib/framework/SystemBase_HTML5.js"></script>
<script src="./nexacro17lib/framework/SystemBase_Runtime.js"></script>
<script src="./nexacro17lib/framework/BasicObjs.js"></script>
<script src="./nexacro17lib/framework/ErrorDefine.js"></script>
<script src="./nexacro17lib/framework/Platform_HTML5.js"></script>
<script src="./nexacro17lib/framework/Platform_Runtime.js"></script>
<script src="./nexacro17lib/framework/Platform.js"></script>
<script src="./nexacro17lib/framework/CssObjs.js"></script>
<script src="./nexacro17lib/framework/Device.js"></script>
<script src="./nexacro17lib/framework/Device_Android.js"></script>
<script src="./nexacro17lib/framework/Device_Windows.js"></script>
<script src="./nexacro17lib/framework/Device_iOS.js"></script>
	
    <script src="./nexacro17lib/component/CompBase/Element_HTML5.js"></script>
    <script src="./nexacro17lib/component/CompBase/Element_Runtime.js"></script>
    <script src="./nexacro17lib/component/CompBase/CompBase.js"></script>
    <script src="./nexacro17lib/component/CompBase/CompEventBase.js"></script>
    <script src="./nexacro17lib/component/CompBase/Data.js"></script>
    <script src="./nexacro17lib/component/CompBase/EditBase.js"></script>
    <script src="./nexacro17lib/component/CompBase/FormBase.js"></script>
    <script src="./nexacro17lib/component/CompBase/TitleBar.js"></script>
    <script src="./nexacro17lib/component/CompBase/StatusBar.js"></script>
    <script src="./nexacro17lib/component/CompBase/FrameBase.js"></script>
    <script src="./nexacro17lib/component/CompBase/ScrollBar.js"></script>
    <script src="./nexacro17lib/component/CompBase/Step.js"></script>
    <script src="./nexacro17lib/component/CompBase/Animation.js"></script>
    <script src="./nexacro17lib/component/ComComp/Dataset.js"></script>
    <script src="./nexacro17lib/component/ComComp/DomObject.js"></script>
    <script src="./nexacro17lib/component/ComComp/Static.js"></script>
    <script src="./nexacro17lib/component/ComComp/Button.js"></script>
    <script src="./nexacro17lib/component/ComComp/Edit.js"></script>
    <script src="./nexacro17lib/component/ComComp/MaskEdit.js"></script>
    <script src="./nexacro17lib/component/ComComp/TextArea.js"></script>
    <script src="./nexacro17lib/component/ComComp/lang/ko/ime.js"></script>
    <script src="./nexacro17lib/component/ComComp/lang/ja/ime.js"></script>
    <script src="./nexacro17lib/component/ComComp/ImageViewer.js"></script>
    <script src="./nexacro17lib/component/ComComp/CheckBox.js"></script>
    <script src="./nexacro17lib/component/ComComp/Radio.js"></script>
    <script src="./nexacro17lib/component/ComComp/ListBox.js"></script>
    <script src="./nexacro17lib/component/ComComp/Combo.js"></script>
    <script src="./nexacro17lib/component/ComComp/Div.js"></script>
    <script src="./nexacro17lib/component/ComComp/ProgressBar.js"></script>
    <script src="./nexacro17lib/component/ComComp/PopupDiv.js"></script>
    <script src="./nexacro17lib/component/ComComp/Menu.js"></script>
    <script src="./nexacro17lib/component/ComComp/PopupMenu.js"></script>
    <script src="./nexacro17lib/component/ComComp/Spin.js"></script>
    <script src="./nexacro17lib/component/ComComp/DatePicker.js"></script>
    <script src="./nexacro17lib/component/ComComp/Calendar.js"></script>
    <script src="./nexacro17lib/component/ComComp/GroupBox.js"></script>
    <script src="./nexacro17lib/component/ComComp/Tab.js"></script>
    <script src="./nexacro17lib/component/ComComp/FileDialog.js"></script>
    <script src="./nexacro17lib/component/ComComp/FileDownload.js"></script>
    <script src="./nexacro17lib/component/ComComp/FileDownTransfer.js"></script>
    <script src="./nexacro17lib/component/ComComp/FileUpload.js"></script>
    <script src="./nexacro17lib/component/ComComp/FileUpTransfer.js"></script>
    <script src="./nexacro17lib/component/ComComp/VideoPlayer.js"></script>
    <script src="./nexacro17lib/component/ComComp/WebBrowser.js"></script>
    <script src="./nexacro17lib/component/ComComp/GoogleMap.js"></script>
    <script src="./nexacro17lib/component/ComComp/Sketch.js"></script>
    <script src="./nexacro17lib/component/ComComp/ExportObject.js"></script>
    <script src="./nexacro17lib/component/ComComp/ImportObject.js"></script>
    <script src="./nexacro17lib/component/ComComp/Tray.js"></script>
    <script src="./nexacro17lib/component/ComComp/Plugin.js"></script>
    <script src="./nexacro17lib/component/ComComp/VirtualFile.js"></script>
    <script src="./nexacro17lib/component/ComComp/Cell.js"></script>
    <script src="./nexacro17lib/component/Grid/GridInfo.js"></script>
    <script src="./nexacro17lib/component/Grid/Grid.js"></script>
    <script src="./nexacro17lib/component/CompBaseEx/SimpleComp.js"></script>
    <script src="./nexacro17lib/component/CompBaseEx/ComplexComp.js"></script>
    <script src="./nexacro17lib/component/ListView/ListView.js"></script>
    <script src="./nexacro17lib/component/DeviceAPI/SQLite.js"></script>
    <script src="./nexacro17lib/component/DeviceAPI/SQLite_Runtime.js"></script>
    <script src="./nexacro17lib/component/DeviceAPI/DeviceObjs.js"></script>
    <script src="./nexacro17lib/component/DeviceAPI/DeviceObjs_Runtime.js"></script>
    <script src="./nexacro17lib/component/DeviceAPI/Mobile.js"></script>
    <script src="./nexacro17lib/component/DeviceAPI/BluetoothLE.js"></script>
    <script src="./nexacro17lib/component/DeviceAPI/TCPClientSocket.js"></script>
	
    <script src="./environment.xml.js"></script>
     
	<title></title>
</head>
<body style="margin:0;border:none;-ms-touch-action:none;" onload="oninitframework()">
	<script>
		function oninitframework()
		{
			var screeninfo = [
            {"id":"Desktop_screen","type":"desktop","themeid":"theme::default","xadl":"Application_Desktop.xadl.js"}
			];

			nexacro._initHTMLSysEvent(window, document);			
			nexacro._initEnvironment(screeninfo);
            nexacro._prepareManagerFrame(onloadframework);
		}
		function onloadframework()
		{
			nexacro._loadADL();
		}
		function onfinalframework()
		{
			
		}
	</script>
</body>
</html>
