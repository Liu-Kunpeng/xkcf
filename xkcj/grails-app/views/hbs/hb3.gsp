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
    #div1 { width: 100%;position:absolute; z-index:2; text-align: center;color: #f4e600;font-size: 45px;font-weight: 900;width: 50%;padding-left: 40%;}
    #div2 { width: 100%;position:absolute; z-index:2; text-align: center;color: #f4e600;font-size: 50px;font-weight: 900;width: 50%;padding-left: 40%;}

    </style>

</head>

<body>
<div id="div0">
    <img id="img1" alt="祝您新年快乐！" style="WIDTH: 100%;" src="${resource(dir: 'images', file: 'hb23.gif')}">



    <div id="div1" >${hb?.moneyManager}</div>
    <div id="div2" >${hb?.moneyManagerPhone}</div>
</div>
<audio controls autoplay loop style="height: 0;">
    <source src="${resource(dir: '', file: 'a.mp3')}" type="audio/mp3" loop="true">
</audio>


</body>

</html>
<script type="text/javascript">
    window.onload = function() {
        document.getElementById("div1").style.top= document.getElementById("img1").clientHeight * 0.313 +"px";
        document.getElementById("div2").style.top= document.getElementById("img1").clientHeight * 0.336 +"px";
    }
</script>