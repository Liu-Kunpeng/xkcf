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
    #div3 { width: 100%;position:absolute; z-index:2; text-align: center}
    #div5 { width: 100%;position:absolute; z-index:2; text-align: center;font-size: 215px}
    div input{
        font-size: 52px;
    }

    A:link {
        COLOR:#FF0; TEXT-DECORATION: none
    }
    A:visited {
        COLOR:#FF0; TEXT-DECORATION: none
    }
    A:hover {
        COLOR:#F00 TEXT-DECORATION: underline
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

        if(lusername1){
            lusername1=lusername1.replaceAll("!","%");
            lusername1=lusername1.replaceAll("%21","%");
            lusername1=unescape(lusername1);

            if(!lusername){
                lusername1=dusername1;
            }
        }else{
            lusername1=dusername1;
        }

        function check(){
            obj2 = document.getElementById("input1").value;


            if (obj2.length==0) {
                alert('还没填联系电话呀!');
                return false;
            }
            document.getElementById("form1").submit();
        }

    </SCRIPT>
</head>

<body>
<form action="/xkcj/hb/add" method="post" id="form1">
<div id="div0">
    <img id="img1" alt="祝您新年快乐！" style="WIDTH: 100%;" src="${resource(dir: 'images', file: 'hb21.gif')}">



    <input type="hidden" value="" name="moneyManager" id="inp1" >
    <input type="hidden" value="" name="moneyManagerPhone" id="inp2" >
    <script>
        document.getElementById("inp1").value=lusername;
        document.getElementById("inp2").value=lusername1;
    </script>
    <div id="div3" ><input id="input1" placeholder="输入您的手机号码，领取红包大礼！" maxlength="13" name="Investors"></div>
    <div id="div5" ><a style="cursor: pointer" onclick="check();">&nbsp;&nbsp;&nbsp;&nbsp;</a></div>

</div>
</form>
<audio controls autoplay loop style="height: 0;">
    <source src="${resource(dir: '', file: 'a.mp3')}" type="audio/mp3" loop="true">
</audio>


</body>

</html>
<script type="text/javascript">
    window.onload = function() {
        document.getElementById("div3").style.top= document.getElementById("img1").clientHeight * 0.786 +"px";
        document.getElementById("div5").style.top= document.getElementById("img1").clientHeight * 0.845 +"px";
        document.getElementById("input1").style.width= document.getElementById("img1").clientWidth * 0.76 +"px";
        document.getElementById("input1").style.height= document.getElementById("img1").clientHeight * 0.039 +"px";
    }
</script>
