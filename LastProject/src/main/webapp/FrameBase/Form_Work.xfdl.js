(function()
{
    return function()
    {
        if (!this._is_form)
            return;
        
        var obj = null;
        
        this.on_create = function()
        {
            this.set_name("Form_Work");
            this.set_titletext("Form_Work");
            this.set_font("bold 12px/normal \"Gulim\"");
            if (Form == this.constructor)
            {
                this._setFormPosition(1280,720);
            }
            
            // Object(Dataset, ExcelExportObject) Initialize

            
            // UI Components Initialize
            obj = new Static("Static00","460","27","313","87",null,null,null,null,null,null,this);
            obj.set_taborder("0");
            obj.set_text("공지사항 등록");
            obj.set_color("#009a45");
            obj.set_font("48px/normal \"Gulim\"");
            this.addChild(obj.name, obj);

            obj = new Static("Static01","268","121","82","30",null,null,null,null,null,null,this);
            obj.set_taborder("1");
            obj.set_text("제목");
            this.addChild(obj.name, obj);

            obj = new Static("Static01_00","270","220","82","30",null,null,null,null,null,null,this);
            obj.set_taborder("2");
            obj.set_text("내용");
            this.addChild(obj.name, obj);

            obj = new Edit("nTitlev","268","157","615","43",null,null,null,null,null,null,this);
            obj.set_taborder("3");
            this.addChild(obj.name, obj);

            obj = new TextArea("nContentv","270","262","613","278",null,null,null,null,null,null,this);
            obj.set_taborder("4");
            this.addChild(obj.name, obj);

            obj = new Button("Button00","274","556","86","34",null,null,null,null,null,null,this);
            obj.set_taborder("5");
            obj.set_text("등록");
            obj.set_font("16px/normal \"Gulim\"");
            obj.set_color("#000000");
            obj.set_background("#FFFFFF");
            this.addChild(obj.name, obj);

            // Layout Functions
            //-- Default Layout : this
            obj = new Layout("default","Desktop_screen",1280,720,this,function(p){});
            this.addLayout(obj.name, obj);
            
            // BindItem Information

        };
        
        this.loadPreloadList = function()
        {

        };
        
        // User Script
        this.registerScript("Form_Work.xfdl", function() {
        this.Button00_onclick = function(obj,e)
        {
        	var ntitle =  encodeURI(this.nTitlev.value,"UTF-8");
        	var ncontent = encodeURI(this.nContentv.value,"UTF-8");
        	this.alert(ntitle + ":"+ ncontent)
        	 var id = "urlTest02";
             //var url = "strURL::deptAdd;
        	 var url ="http://localhost:8080/LastProject/registNotice.user?nTitle="+ntitle+"&nContent="+ncontent;
             var reqDs = "";
             var respDs = "";
             var args = "";
             var callback = "afterComplete";
             this.transaction(id, url, reqDs, respDs, args, callback);
          this.received = function(id, code, message)
        {
             alert(code);

        }
        this.afterComplete = function(id, code, message){
        location.href = "getNoticeList.user";

        }
        };


        });
        
        // Regist UI Components Event
        this.on_initEvent = function()
        {
            this.Static00.addEventHandler("onclick",this.Static00_onclick,this);
            this.Static01.addEventHandler("onclick",this.Static01_onclick,this);
            this.Static01_00.addEventHandler("onclick",this.Static01_onclick,this);
            this.nTitlev.addEventHandler("onchanged",this.Edit00_onchanged,this);
            this.Button00.addEventHandler("onclick",this.Button00_onclick,this);
        };

        this.loadIncludeScript("Form_Work.xfdl");
        this.loadPreloadList();
        
        // Remove Reference
        obj = null;
    };
}
)();
