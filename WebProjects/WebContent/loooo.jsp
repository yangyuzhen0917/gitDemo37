<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>ç»å½</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">
            </div>

            <form action="login.action" method="post">
                <div class="panel loginbox">
                    <div class="text-center margin-big padding-big-top"><h1>å­¦æ ¡éè¯¾ç³»ç»</h1></div>
                    <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">

                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input input-big" name="name" placeholder="ç»å½ç¨æ·å/å­¦å·/å·¥å·/çµè¯" value="103040801" data-validate="required:è¯·å¡«åè´¦å·" />
                                <span class="icon icon-user margin-small"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input input-big" name="password" placeholder="ç»å½å¯ç " value="123456" data-validate="required:è¯·å¡«åå¯ç " />
                                <span class="icon icon-key margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field" style="text-align: center;font-size:18px" >
                                <input type="radio"  name="qx" value="student" checked="checked" />å­¦ç&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio"  name="qx" value="teacher" />èå¸&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio"  name="qx" value="manager" />æå¡ç®¡çå
                            </div>
                        </div>

                    </div>
                    <div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" value="ç»å½" ></div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>


</html>