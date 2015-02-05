<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>西控财富祝您春节快乐</title>
    <meta name='keywords' content='西控财富'>
    <meta name='description' content='西控财富祝您春节快乐'>
    <link rel="stylesheet" type="text/css" href="http://static.hudongba.cn/static3/style/1222_1base.css"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="HandheldFriendly" content="true">
    <script>
        var _imgCdn="http://img1.hudongba.cn";

        var appInfo={
            app_v:3.0,
            info_v:2.1,
            system:"",
            pub_system:"pc"
        };
        var _info={
            _id:"54fe",
            _type:"article",
            _title:"给自己点个赞吧",
            _shareUid:"",
            _power:"0",
            _join:"0",
            _lock:false
        };
    </script>
    <style type="text/css">
    div,body{margin:0px;padding:0px;}
    #div0 { width: 100% }
    #div1 { width: 100%;position:absolute; z-index:2; text-align: center;color: #f4e600;font-size: 20px;font-weight: 900;width: 70%;padding-left: 15%;}
    #div2 { width: 100%;position:absolute; z-index:2; text-align: center;color: #f4e600;font-size: 20px;font-weight: 900;width: 70%;padding-left: 28%;}
    #div4 { width: 100%;position:absolute; z-index:2; text-align: center;color: #f4e600;font-size: 66px;font-weight: 900;width: 70%;padding-left: 10%;}

    A:link {
        COLOR:#FF0; TEXT-DECORATION: none
    }
    A:visited {
        COLOR:#FF0; TEXT-DECORATION: none
    }
    A:hover {
        COLOR:#FF0 TEXT-DECORATION: underline
    }
    </style>
    <SCRIPT type="text/javascript">
        String.prototype.replaceAll = function(s1,s2) {
            return this.replace(new RegExp(s1,"gm"),s2);
        }
        function QueryString(item){
            var sValue=location.search.match(new RegExp("[\?\&]"+item+"=([^\&]*)(\&?)","i"))
            return sValue?sValue[1]:sValue
        }
        function QueryString1(item){
            var sValue=location.search.match(new RegExp("[\?\&]"+item+"=([^\&]*)(\&?)","i"))
            //alert(sValue);
            return sValue?sValue[1]:sValue
        }
        var dusername="";
        var dusername1="";
        var lusername=QueryString("input1");
        var lusername1=QueryString1("input2");
        var lusername3=QueryString1("input3");

        if(lusername){
            lusername=lusername.replaceAll("!","%");
            lusername=lusername.replaceAll("%21","%");
            lusername=unescape(lusername);

            if(!lusername){
                lusername=dusername;
            }
        }else{
            lusername=dusername;
        }

        if(!lusername1){
            lusername1=dusername1;
        }
        if(!lusername3){
            lusername3=dusername1;
        }


        function check(){
            lusername=escape(lusername).replaceAll("%","!");
            var url="/xkcj/hbs/hb5?input1="+lusername+"&input2="+lusername1+"&input3="+lusername3;
            location.href=url;
        }

    </SCRIPT>
</head>

<body>
<div id="div0">
    <img id="img1" alt="祝您新年快乐！" style="WIDTH: 100%;" src="${resource(dir: 'images', file: 'hb34.gif')}">



    <div id="div1" ><script>document.write(lusername);</script></div>
    <div id="div2" ><script>document.write(lusername1);</script></div>
    <div id="div4" onclick="_shareInWeixin._show()" ontouchstart=""><a >&nbsp;</a></div>
</div>
<audio controls autoplay loop style="height: 0;">
    <source src="${resource(dir: '', file: 'a.mp3')}" type="audio/mp3" loop="true">
</audio>
<div id="share_weixin" onclick="_shareInWeixin._hide()">
    <div><img id="share_weixin_guide"></div>
    <div><button ontouchstart="" class="button_3">关闭提示</button></div>
</div>

<div id="cover2"></div>

<script src="http://static.hudongba.cn/static3/jquery-1.9.1.min.js"></script>
<script src="http://static.hudongba.cn/static3/_old_14_01_16comm.js"></script>
<script src="http://static.hudongba.cn/static3/online_detail_14_02_04.js"></script>

</body>

</html>
<script type="text/javascript">
    window.onload = function() {
        document.getElementById("div1").style.top= document.getElementById("img1").clientHeight * 0.715 +"px";
        document.getElementById("div2").style.top= document.getElementById("img1").clientHeight * 0.753 +"px";
        document.getElementById("div4").style.top= document.getElementById("img1").clientHeight * 0.813 +"px";
    }
</script>