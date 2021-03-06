<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="bean.Goods"%>
<%@ page import="bean.GBatch"%>
<%@ page import="bean.Company"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Set"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
	Object user = session.getAttribute("user");
	GBatch gbatch = (GBatch) request.getAttribute("gbatch");
	if (user == null) {
		response.getWriter().println("<script>top.location.href='" + basePath + "';</script>");
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查看商品批次详情</title>
<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css" />
<link rel="stylesheet" href="<%=basePath%>css/select.css" type="text/css" />
<link rel="stylesheet" href="<%=basePath%>editor/themes/default/default.css" />
<link rel="stylesheet" href="<%=basePath%>editor/plugins/code/prettify.css" />
<script charset="utf-8" src="<%=basePath%>editor/kindeditor-all.js"></script>
<script charset="utf-8" src="<%=basePath%>editor/lang/zh-CN.js"></script>
<script charset="utf-8" src="<%=basePath%>editor/plugins/code/prettify.js"></script>
<script type="text/javascript" src=" <%=basePath%>js/jquery.js"></script>
<script type="text/javascript" src=" <%=basePath%>js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src=" <%=basePath%>js/select-ui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/laydate.js"></script>

<script type="text/javascript">
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="gbatch.producerSendContent"]', {
				cssPath : '<%=basePath%>editor/plugins/code/prettify.css',
				uploadJson : '<%=basePath%>editor/jsp/upload_json.jsp',
				fileManagerJson : '<%=basePath%>editor/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
				}
			});
			
			var editor2 = K.create('textarea[name="gbatch.sellerReceiveContent"]', {
				cssPath : '<%=basePath%>editor/plugins/code/prettify.css',
				uploadJson : '<%=basePath%>editor/jsp/upload_json.jsp',
				fileManagerJson : '<%=basePath%>editor/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
				}
			});

			prettyPrint();
});
</script>



</head>

<body>
	<div class="place">
		<span>位置:</span>
		<ul class="placeul">
		<li1><a href="<%=basePath%>mainindex.jsp">首页</a></li1>
			<li1><a href="<%=basePath%>sort/sort_doFind.action">商品分类</a></li1>
			<li1><a href="<%=basePath%>goods/goods_doFind.action">商品列表</a></li1>
			<li1><a href="<%=basePath%>goods/goods_doView.action?goods.goodsId=<%=gbatch.getGoods().getGoodsId()%>">商品详情</a></li1>
			<li1><a href="<%=basePath%>gbatch/gbatch_doFind.action?goodsid=<%=gbatch.getGoods().getGoodsId()%>">批次列表</a></li1>
			<li1><a href="<%=basePath%>oinfo/oinfo_doFind.action?goodsid=<%=gbatch.getGoods().getGoodsId()%>">商品订单</a></li1>
			<li1><a href="<%=basePath%>oinfo/oinfo_doFind.action?batchid=<%=gbatch.getBatchId()%>">批次订单</a></li1>
			<li1><a href="<%=basePath%>gbatch/gbatch_beforedoAdd.action?goodsid=<%=gbatch.getGoods().getGoodsId()%>">添加批次</a></li1>
			<li1><a  style="color:blue;" href="<%=basePath%>gbatch/gbatch_doView.action?gbatch.batchId=<%=gbatch.getBatchId()%>">批次详情</a></li1>
			<li1><a onClick="history.back(-1)">返回</a></li1>
				</ul>
	</div>
	<div class="formbody">

		<div id="usual1" name="usual1" class="usual">


			<div id="tab5" name="tab5" class="tabson">

				<ul class="forminfo">
					<input name="goodsid" id="goodsid" type="hidden" value="<%=gbatch.getGoods().getGoodsId()%>" />
					<li><label>数量<b>*</b></label><input type="text" value="<%=gbatch.getNumTotal()%>" class="dfinput1" readonly="true" style="width:320px;" /></li>
					<li><label>库存<b>*</b></label><input type="text" value="<%=gbatch.getNumStock()%>" class="dfinput1" readonly="true" style="width:320px;" /></li>
					<li><label>保质开始<b>*</b></label><input type="text" value="<%=gbatch.getDateKeep1()%>" class="dfinput1" readonly="true" style="width:320px;" /></li>
					<li><label>保质结束<b>*</b></label><input type="text" value="<%=gbatch.getDateKeep2()%>" class="dfinput1" readonly="true" style="width:320px;" /></li>
					<li><label>生产商<b>*</b></label><input type="text" value="<%=gbatch.getCompanyByProducerId().getCompanyName()%>" class="dfinput1" readonly="true" style="width:320px;" /></li>
					<li><label>发货时间<b>*</b></label><input type="text" value="<%=gbatch.getDateSend()%>" class="dfinput1" readonly="true" style="width:320px;" /></li>
					<li><label>销售商<b>*</b></label><input type="text" value="<%=gbatch.getCompanyBySellerId().getCompanyName()%>" class="dfinput1" readonly="true" style="width:320px;" /></li>
					<li><label>收货时间<b>*</b></label><input type="text" value="<%=gbatch.getDateRec()%>" class="dfinput1" readonly="true" style="width:320px;" /></li>

					<li><label>生产详情<b>*</b></label> <textarea name="gbatch.producerSendContent" readonly="true" style="width:700px;height:250px;visibility:hidden;"><%=gbatch.getProducerSendContent()%></textarea></li>
					<li><label>其他详情<b>*</b></label> <textarea name="gbatch.sellerReceiveContent" readonly="true" style="width:700px;height:250px;visibility:hidden;"><%=gbatch.getSellerReceiveContent()%></textarea></li>

					<li><label>&nbsp;</label> <input name="button" type="button" class="btn" value="数据修改" onClick="javascript:location.href='<%=basePath%>gbatch/gbatch_doEdit.action?gbatch.batchId=<%=gbatch.getBatchId()%>'" /> <label>&nbsp;</label> <input
						name="button" type="button" class="btn" value="返回上级" onClick="history.back(-1)" /></li>
				</ul>
			</div>
		</div>

		<script type="text/javascript">
		$("#usual1 ul").idTabs();
	</script>
		<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
