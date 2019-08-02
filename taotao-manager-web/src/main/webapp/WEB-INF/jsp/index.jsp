<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.4.1/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.4.1/themes/icon.css" />
<script type="text/javascript" src="/js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript">
$().ready(function() {
	$('#menu').tree({
		onClick: function(node) {
			window.alert(node.text);
		}
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
    <div class="easyui-layout" style="width: 100%;" fit="true">
        <div region="west" split="true" title="菜单" style="width: 200px;">
            <ul id="menu" class="easyui-tree" style="margin-top: 10px; margin-left: 5px;">
                <li><span>商品管理</span>
                    <ul>
                        <li data-options="attributes:{'url':'item-add'}">新增商品</li>
                        <li data-options="attributes:{'url':'item-list'}">查询商品</li>
                        <li data-options="attributes:{'url':'item-param-list'}">规格参数</li>
                    </ul></li>
                <li><span>网站内容管理</span>
                    <ul>
                        <li data-options="attributes:{'url':'content-category'}">内容分类管理</li>
                        <li data-options="attributes:{'url':'content'}">内容管理</li>
                    </ul></li>
            </ul>
        </div>
        <div id="content" region="center" style="padding: 0; border: none;">
            <div class="easyui-tabs" style="width: 100%;" fit="true">
                <div title="First Tab" style="padding: 10px;">First Tab</div>
                <div title="Second Tab" closable="true" style="padding: 10px;">Second Tab</div>
                <div title="Third Tab" iconCls="icon-reload" closable="true" style="padding: 10px;">Third Tab</div>
            </div>
        </div>
    </div>
</body>
</html>