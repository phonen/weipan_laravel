<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport"
        content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <title><?php echo isset($title) ? $title : env('APP_TITLE'); ?></title>
  <link type="text/css" href="/public/statics/cz/css/bootstrap.min.css" rel="stylesheet">
  <link type="text/css" href="/public/statics/cz/css/donation.css" rel="stylesheet">
  <script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
  <script src="/public/statics/cz/layer_mobile/layer.js"></script>
</head>
<body>
<div class="box">
  <form id="form" class="form-inline" onsubmit='return false;'>
    <ul class='box_' id="box">
      <li>10<span>美元</span><input onclick='change(1)' type="number" name="price" value="10" readonly></li>
      <li>50<span>美元</span><input onclick='change(4)' type="number" name="price" value="50" readonly></li>
      <li>100<span>美元</span><input onclick='change(2)' type="number" name="price" value="100" readonly></li>
      <li>200<span>美元</span><input onclick='change(3)' type="number" name="price" value="200" readonly></li>
    </ul>

    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon">$</div>
        <input type="number" name='price' class="form-control" id="prices" placeholder="其他"
               style="   height: 45px;"
               value=''>
        <div class="input-group-addon">美元</div>
      </div>
    </div>  
    <button id="buttone" type='button' style='border:1px solid #5cb85c;' class="btn btn-success">公众号支付（仅限在公众号内）</button>  
    <button id="buttonb" type='button' style='border:1px solid #5cb85c;' class="btn btn-success">微信原生支付</button>
    <button id="buttonc" type='button' style='border:1px solid #5cb85c;' class="btn btn-success">中云微信支付</button>
    <button id="buttona" type='button' style='border:1px solid #5cb85c;' class="btn btn-success">中云支付宝支付</button>
    <button id="buttond" type='button' style='border:1px solid #5cb85c;' class="btn btn-success">个人二维码支付宝</button>

    <a href="/account/rechargeRecord">
      <button type='button' style='border:1px solid #204d74;' class="btn btn-primary">充值纪录</button>
    </a>
  </form>
</div>
<script>
  window.onload = function () {
    //初始化赋值
    var buttona = document.getElementById('buttona');
     var buttonb = document.getElementById('buttonb');
     var buttonc = document.getElementById('buttonc');
     var buttond = document.getElementById('buttond');
      var buttone = document.getElementById('buttone');
    var port = document.getElementById('form'),
      input = port.getElementsByTagName('input');
    var sum = document.getElementById('box').getElementsByTagName('li');
    var dex = 0;
    value = ""//dex记录点击；；；value上传的值
    function bb() {
      sum[dex].style.border = '2px solid #0a9cff';
      sum[dex].style.background = "url(/public/statics/cz/images/_03.gif) no-repeat right top";
      value = input[dex].value;
    }

    bb();

    //点击选中
    for (var i = 0; i < sum.length; i++) {
      sum[i].dex = i;
      sum[i].onclick = function () {
        dex = this.dex;
        aa();
        bb();
      };
    }
    //还原默认值
    function aa() {
      for (var j = 0; j < sum.length; j++) {
        sum[j].style.background = "";
        sum[j].style.border = '2px solid #b6bdc5';
      }
    }

    //手动输入判断
    var inputs = document.getElementById('prices');
    inputs.onfocus = function () {
      aa();
      this.style.focus = 'none';
    }
    $("#prices").blur(function () {
      aa();
      if (inputs.value != parseFloat(inputs.value) && inputs.value.length != 0) {
        inputs.value = '';
        layer.open({
          content: '请输入正确格式的价格'
          , skin: 'msg'
          , time: 2 //2秒后自动关闭
        });
      }
      value = inputs.value;
    });
    //提交

    
        buttonb.onclick = function () {
      var msg = $('#msg').val();
      if (value == null || value == undefined || value == '') {
        layer.open({
          content: '支付金额不能为空'
          , skin: 'msg'
          , time: 2 //2秒后自动关闭
        });
      } else if (value == 0) {
        layer.open({
          content: '支付金额必须大于0'
          , skin: 'msg'
          , time: 2 //2秒后自动关闭
        });
      } else {
        var price = value;
        window.location.href = '/account/wechatpay/' + price;


      }
    }
    
    
    
            buttonc.onclick = function () {
      var msg = $('#msg').val();
      if (value == null || value == undefined || value == '') {
        layer.open({
          content: '支付金额不能为空'
          , skin: 'msg'
          , time: 2 //2秒后自动关闭
        });
      } else if (value == 0) {
        layer.open({
          content: '支付金额必须大于0'
          , skin: 'msg'
          , time: 2 //2秒后自动关闭
        });
      } else {
        var price = value;
        window.location.href = '/account/zypay/' + price;


      }
    }
    
                    buttona.onclick = function () {
      var msg = $('#msg').val();
      if (value == null || value == undefined || value == '') {
        layer.open({
          content: '支付金额不能为空'
          , skin: 'msg'
          , time: 2 //2秒后自动关闭
        });
      } else if (value == 0) {
        layer.open({
          content: '支付金额必须大于0'
          , skin: 'msg'
          , time: 2 //2秒后自动关闭
        });
      } else {
        var price = value;
        window.location.href = '/account/zypayb/' + price;
     }
    }
    
                        buttond.onclick = function () {
      var msg = $('#msg').val();
      if (value == null || value == undefined || value == '') {
        layer.open({
          content: '支付金额不能为空'
          , skin: 'msg'
          , time: 2 //2秒后自动关闭
        });
      } else if (value == 0) {
        layer.open({
          content: '支付金额必须大于0'
          , skin: 'msg'
          , time: 2 //2秒后自动关闭
        });
      } else {
        var price = value;
        window.location.href = '/account/xftali/';
     }
    }
                            buttone.onclick = function () {
      var msg = $('#msg').val();
      if (value == null || value == undefined || value == '') {
        layer.open({
          content: '支付金额不能为空'
          , skin: 'msg'
          , time: 2 //2秒后自动关闭
        });
      } else if (value == 0) {
        layer.open({
          content: '支付金额必须大于0'
          , skin: 'msg'
          , time: 2 //2秒后自动关闭
        });
      } else {
        var price = value;
        window.location.href = '/account/wxgzh/' + price;
     }
    }
    
    
  }
</script>
</body>
</html>