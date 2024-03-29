<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            index
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="./css/x-admin.css" media="all">
    </head>
    <body>
  
            <div class="layui-side layui-bg-black x-side">
                <div class="layui-side-scroll">
                    <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">
                    <!--个人信息-->
                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;" _href="main.html">
                               <i class="layui-icon" style="top: 3px;">&#xe62d;</i><cite>个人信息</cite>
                            </a>
                      <dl class="layui-nav-child">
                                <dd class="">
                                    <dd class="">
                                        <a href="viewUserInf.action">
                                           <cite>信息查看</cite>
                                        </a>
                              </dd>
                                </dd>
                                <dd class="">
                                    <dd class="">
                                        <a href="javascript:;" _href="person_add.html">
                                            <cite>信息修改</cite>
                                        </a>
                                    </dd>
                                </dd>
                                <dd class="">
                                    <dd class="">
                                        <a href="javascript:;" _href="Download.html">
                                            <cite>银行卡管理</cite>
                                        </a>
                                    </dd>
                                </dd>
                            </dl>
                        </li>
                        <!--转账-->
                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;" _href="home_add.html">
                                <i class="layui-icon" style="top: 3px;">&#xe613;</i><cite>转账</cite>
                            </a>
                        </li>
                        <!--存款-->
                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;" _href="Role_management.html">
                                <i class="layui-icon" style="top: 3px;">&#xe612;</i><cite>存款</cite>
                            </a>
                        </li>
                        <!--取款-->
                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;" _href="User_management.html">
                                <i class="layui-icon" style="top: 3px;">&#xe613;</i><cite>取款</cite>
                            </a>
                        </li>
                        <!--网站信息管理-->
                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;">
                                <i class="layui-icon" style="top: 3px;">&#xe629;</i><cite>查询</cite>
                            </a>
                            <dl class="layui-nav-child">
                                <dd class="">
                                    <dd class="">
                                        <a href="javascript:;" _href="Home.html">
                                            <i class="layui-icon"></i><cite>转账查询</cite>
                                        </a>
                                    </dd>
                                </dd>
                                <dd class="">
                                    <dd class="">
                                        <a href="javascript:;" _href="About_us.html">
                                            <i class="layui-icon"></i><cite>存取款查询</cite>
                                        </a>
                                    </dd>
                                </dd>
                            </dl>
                        </li>
                    </ul>
                </div>

            </div>
	</body>
	
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script src="./js/x-admin.js"></script>
        <script>
        var _hmt = _hmt || [];
        (function() {
          var hm = document.createElement("script");
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(hm, s);
        })();
        </script>


	    <script src="./lib/layui/layui.js" charset="utf-8">
	    </script>
	    <script src="./js/x-layui.js" charset="utf-8">
	    </script>
	    <script>
	        layui.use(['form', 'layer'], function() {
	            $ = layui.jquery;
	            var form = layui.form(),
	                layer = layui.layer;
	
	            //自定义验证规则
	            form.verify({
	                nikename: function(value) {
	                    if (value.length < 5) {
	                        return '昵称至少得5个字符啊';
	                    }
	                },
	                pass: [/(.+){6,12}$/, '密码必须6到12位'],
	                repass: function(value) {
	                    if ($('#L_pass').val() != $('#L_repass').val()) {
	                        return '两次密码不一致';
	                    }
	                }
	            });
	
	            console.log(parent);
	            //监听提交
	            form.on('submit(add)', function(data) {
	                console.log(data);
	                //发异步，把数据提交给php
	                layer.alert("增加成功", {
	                    icon: 6
	                }, function() {
	                    // 获得frame索引
	                    var index = parent.layer.getFrameIndex(window.name);
	                    //关闭当前frame
	                    parent.layer.close(index);
	                });
	                return false;
	            });
	

	        });
	    </script>	
</html>