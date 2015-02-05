<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>西控财富祝您春节快乐</title>
    <meta name='keywords' content='西控财富'>
    <meta name='description' content='西控财富祝您春节快乐'>

    <style type="text/css">
    div,body{margin:0px;padding:0px;}
    #div0 { width: 100% }
    #div4 { width: 100%;position:absolute; z-index:2; text-align: center;color: #f4e600;font-size: 166px;font-weight: 900;width: 70%;padding-left: 10%;}

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
            document.getElementById("form1").action=url
            document.getElementById("form1").submit();
        }

    </SCRIPT>
</head>

<body>
<form method="post" id="form1">
    <input type="hidden" name="onlyIdLkp" value="1">
</form>
<div id="div0">
    <img id="img1" alt="祝您新年快乐！" style="WIDTH: 100%;" src="${resource(dir: 'images', file: 'hb33.gif')}">




    <div id="div4" ><a href="javascript:check();">&nbsp;&nbsp;&nbsp;&nbsp;</a></div>
</div>
<audio controls autoplay loop style="height: 0;">
    <source src="${resource(dir: '', file: 'a.mp3')}" type="audio/mp3" loop="true">
</audio>


</body>

</html>
<script type="text/javascript">
    window.onload = function() {
        document.getElementById("div4").style.top= document.getElementById("img1").clientHeight * 0.813 +"px";
    }
</script>