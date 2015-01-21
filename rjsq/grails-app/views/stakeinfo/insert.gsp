
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title></title>
    <link rel="stylesheet"
	href="${createLinkTo(dir:'css/', file:'xcss.css')}" type="text/css" />
    <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
</head>
<body>
<div class="cho"  >

   <g:uploadForm action="save" method="post" onsubmit="return pd()">
       <div class="xzzrq"><span class="xspan">部门:　　</span>
   <input name="department" id="bumen" type="text" placeholder="部门" /></div>
       <div class="xzzrq"><span class="xspan">理财顾问:</span>
 <input name="manageFinances" id="guwen" type="text" placeholder="理财顾问"/></div>
       <div class="xzzrq"><span class="xspan">客户姓名:</span>
<input name="guestName" id="khxm" type="text" placeholder="客户姓名"/></div>
       <div class="xzzrq"><span class="xspan">客户地址:</span>
<input name="guestAddress" id="khdz" type="text" placeholder="客户地址"/></div>
       <div class="xzzrq"><span class="xspan">身份证号:</span>
<input name="guestVid" id="khsfz" type="text" placeholder="客户身份证号" onblur="checksfz()"/></div>
       <div class="xzzrq"><span class="xspan">客户手机:</span>
<input name="guestPhone" id="khsj" type="number" placeholder="客户手机"  onblur="checkphone()" /></div>
<div class="xzzrq">
<span class="xspan">转账日期:</span><input name="transferDate" id="zzrq" type="date" placeholder="转账日期"     />

</div>
       <div class="xzzrq"><span class="xspan">投资金额:</span>
<input  name="fundSum" id="tzje" class="tzje" type="number" onblur="checkfun(this)" placeholder="投资金额"  /><span class=" xspan ">&nbsp;万元</span></div>
<div class="xzzrq">
<span class="xspan">投资期限:</span>
<select name="fundLimit" class="xselect" id="tzqx" name="selse" onchange="planning()" >
    <option selected="selected">--请选择--</option>
    <option value="1">--1个月--</option>
    <option value="3">--3个月--</option>
    <option value="6">--6个月--</option>
    <option value="12">--12个月--</option>
</select>
</div>
    %{--<input name="interestDate" id="jxr" type="text" placeholder="计息日"/>--}%
       <div class="xzzrq">
      <span class="xspan">计息日:　</span> <input name="interestDate" id="jxr" type="date" placeholder="计息日"   onchange="planning()"   />
      </div>
       <div class="xzzrq"><span class="xspan">到期日:　</span>
<input name="overDate" id="dxr" type="text" placeholder="到期日" readonly="readonly"/></div>
       <div class="xzzrq"><span class="xspan">合同编号:</span>
     <input name="compactId" id="htbh" type="text" placeholder="合同编号"/></div>

          <input name="payload" id="file0" type="file" title="添加附件" value="添加附件"   multiple="multiple" />



     <input id="tijiao" type="submit" value="提交" />
    </g:uploadForm>



</div>


</body>

<script>


    function  checksfz () {
        var khsfz=document.getElementById('khsfz');
        if(khsfz.value.length ==0  ){
return false;
        }
        if(khsfz.value.length ==15  ){

        }else if (khsfz.value.length == 18){

        }else {
            alert("请输入一个15或者18位身份证号码");
            khsfz.focus();
            return false;
        }
    }
    function  checkfun (obj) {
        if(!(obj.value>=5)){
            alert('投资金额最低要5万元');
            obj.focus
            return false;
        }
    }



    function checkphone() {

        var xkhsj=document.getElementById('khsj');
        if(xkhsj.value.length ==0  ){
            return false;
        }
        if (xkhsj.value == '') {
            alert('请输入有效的客户手机号!');
            xkhsj.focus();
            return false;
        }else if(xkhsj.value.length!=11){
            alert("请输入一个11位的标准手机号码");
            xkhsj.focus();
            return false;
        }else if(isNaN(xkhsj.value)){
            alert("请输入数字手机号码");
            xkhsj.focus();
            return false;
        }


    }
    function  planning (dates,n) {
        var time= new Date($("#jxr").val())
        time.setDate(time.getDate() +30*$("#tzqx").val())
        time = time.toLocaleDateString();

        $("#dxr").val((time =="Invalid Date")?"":time);
    }

    function pd() {

        if (document.getElementById('bumen').value == '') {
            alert('请输入所在部门!');
            document.getElementById('bumen').focus();
            return false;
        }
        if (document.getElementById('guwen').value == '') {
            alert('请输入理财顾问!');
            document.getElementById('guwen').focus();
            return false;
        }
        if (document.getElementById('khxm').value == '') {
            alert('请输入客户姓名!');
            document.getElementById('khxm').focus();
            return false;
        }
        if (document.getElementById('khdz').value == '') {
            alert('请输入客户地址!');
            document.getElementById('khdz').focus();
            return false;
        }
        if (document.getElementById('khsfz').value == '') {
            alert('请输入客户身份证号!');
            document.getElementById('khsfz').focus();
            return false;
        }
        checksfz ()

        var xkhsj=document.getElementById('khsj');
        if (xkhsj.value == '') {
            alert('请输入有效的客户手机号!');
            xkhsj.focus();
            return false;
        }else if(xkhsj.value.length!=11){
            alert("请输入一个11位的标准手机号码");
            xkhsj.focus();
            return false;
        }else if(isNaN(xkhsj.value)){
            alert("请输入数字手机号码");
            xkhsj.focus();
            return false;
        }


        var xtzje=document.getElementById('tzje');
        if (xtzje.value == '') {
            alert('请输入投资金额!');
            xtzje.focus();
            return false;
        }
        checkfun (xtzje);

        if (document.getElementById('tzqx').value == '') {
            alert('请输入投资期限!');

            return false;
        }
        if (document.getElementById('jxr').value == '') {
            alert('请输入计息日!');
            return false;
        }
        if (document.getElementById('dxr').value == '') {
            alert('请输入到息日!');
            return false;
        }
        if (document.getElementById('htbh').value == '') {
            alert('请输入合同编号!');
            return false;
        }
        if ($("#file0").val()=='') {
            alert('请添加合同附件！');
            return false;
        }



    }
</script>
</html>


%{--

       <input id="file0" type="file" title="添加附件" value="添加附件"   />


<input type="hidden" name="compactFile" value="1"><input type="hidden" name="operate" value="1">

<input  type="button"  id="addPic" value="新增拍照" />

  <div class="img">
        <img src="" id="img0">
    </div>
<script type="text/javascript">
$(document).ready(function(){
	  $("#addPic").click(function(){
		  $("#addPic").before('<input name="payload" id="file0" type="file" title="添加附件" value="添加附件"   /><br/>');
	  });
	});

</script>
<script>
            $("#file0").change(function(){
                var objUrl = getObjectURL(this.files[0]) ;
                console.log("objUrl = "+objUrl) ;
                if (objUrl) {
                    $("#img0").attr("src", objUrl) ;
                }
            }) ;
            //建立一個可存取到該file的url
            function getObjectURL(file) {
                var url = null ;
                if (window.createObjectURL!=undefined) { // basic
                    url = window.createObjectURL(file) ;
                } else if (window.URL!=undefined) { // mozilla(firefox)
                    url = window.URL.createObjectURL(file) ;
                } else if (window.webkitURL!=undefined) { // webkit or chrome
                    url = window.webkitURL.createObjectURL(file) ;
                }
                return url ;
            }
        </script>
--}%


