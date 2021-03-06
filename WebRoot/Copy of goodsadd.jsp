<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="bean.Goods"%>
<%@ page import="bean.Sort"%>
<%@ page import="bean.Company"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Set"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
	Object user = session.getAttribute("user");
	List<Sort> sortlist = 	(List<Sort>)request.getAttribute("sortlist");
	List<Company> companylist = (List<Company>)request.getAttribute("companylist");
	if (user == null) {
		response.getWriter().println("<script>top.location.href='" + basePath+ "admin/admin_doLogin.action';</script>");
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加商品</title>



<link rel="stylesheet" href="<%=basePath%>css/style.css"  type="text/css" />
<link rel="stylesheet" href="<%=basePath%>css/select.css"  type="text/css" />
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
			var editor1 = K.create('textarea[name="goods.goodsDescription"]', {
				cssPath : '<%=basePath%>editor/plugins/code/prettify.css',
				uploadJson : '<%=basePath%>editor/jsp/upload_json.jsp',
				fileManagerJson : '<%=basePath%>editor/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['form1'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['form1'].submit();
					});
				}
			});
			prettyPrint();
		});
</script>



<script type="text/javascript">
			KindEditor.ready(function(K) {
				var editor = K.editor({
					cssPath : '<%=basePath%>editor/plugins/code/prettify.css',
					uploadJson : '<%=basePath%>editor/jsp/upload_json.jsp',
					fileManagerJson : '<%=basePath%>editor/jsp/file_manager_json.jsp',
					allowFileManager : true,
				});
				K('#image1').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url1').val(),
							clickFn : function(url, title, width, height, border, align) {
								var div = K('#localImage1');
								div.html('');
								div.append('<img src="' + url + '" width=150 height=160 style="diplay:none" />');
								K('#url1').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				K('#image2').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url2').val(),
							clickFn : function(url, title, width, height, border, align) {
								var div = K('#localImage2');
								div.html('');
								div.append('<img src="' + url + '" width=150 height=160 style="diplay:none" />');
								K('#url2').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				K('#image3').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url3').val(),
							clickFn : function(url, title, width, height, border, align) {
								var div = K('#localImage3');
								div.html('');
								div.append('<img src="' + url + '" width=150 height=160 style="diplay:none" />');
								K('#url3').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				K('#image4').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url4').val(),
							clickFn : function(url, title, width, height, border, align) {
								var div = K('#localImage4');
								div.html('');
								div.append('<img src="' + url + '" width=150 height=160 style="diplay:none" />');
								K('#url4').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				K('#image5').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url5').val(),
							clickFn : function(url, title, width, height, border, align) {
								var div = K('#localImage5');
								div.html('');
								div.append('<img src="' + url + '" width=150 height=160 style="diplay:none" />');
								K('#url5').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				K('#image6').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url6').val(),
							clickFn : function(url, title, width, height, border, align) {
								var div = K('#localImage6');
								div.html('');
								div.append('<img src="' + url + '" width=150 height=160 style="diplay:none" />');
								K('#url6').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				K('#image7').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url7').val(),
							clickFn : function(url, title, width, height, border, align) {
								var div = K('#localImage7');
								div.html('');
								div.append('<img src="' + url + '" width=150 height=160 style="diplay:none" />');
								K('#url7').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				K('#image8').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url8').val(),
							clickFn : function(url, title, width, height, border, align) {
								var div = K('#localImage8');
								div.html('');
								div.append('<img src="' + url + '" width=150 height=160 style="diplay:none" />');
								K('#url8').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				K('#image9').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url9').val(),
							clickFn : function(url, title, width, height, border, align) {
								var div = K('#localImage9');
								div.html('');
								div.append('<img src="' + url + '" width=150 height=160 style="diplay:none" />');
								K('#url9').val(url);
								editor.hideDialog();
							}
						});
					});
				});
			});
</script>
 
 
<script type="text/javascript">
	$(document).ready(function(e) {
		$(".select1").uedSelect({
			width : 320
		});
		$(".select2").uedSelect({
			width : 155
		});
		$(".select3").uedSelect({
			width : 100
		});
	});
</script>


<script type="text/javascript">
!function(){
	laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
	laydate({elem: '#demo'});//绑定元素
}();
</script>



<script type="text/javascript">
	/*验证表单*/
	function checkForm() {
		if (document.getElementById("goods.goodsName").value == "") {
			window.alert('请输入商品名!');
			return false;
		}
		if (document.getElementById("goods.goodsKeyWord").value == "") {
			window.alert('请输入商品关键字!');
			return false;
		}
		if (document.getElementById("content7").value == "") {
			window.alert('请输入商品描述!');
			return false;
		}
		if (document.getElementById("goods.goodsWeight").value == "") {
			window.alert('请输入商品重量!');
			return false;
		}
		if (document.getElementById("goods.goodsRemark").value == "") {
			window.alert('请输入商品备注!');
			return false;
		}
		if (document.getElementById("goods.goodsNumTotal").value == "") {
			window.alert('请输入商品数量!');
			return false;
		}if (document.getElementById("goods.goodsNumStock").value == "") {
			window.alert('请输入商品库存!');
			return false;
		}
		if (document.getElementById("goods.goodsMoneyEntry").value == "") {
			window.alert('请输入商品进货价!');
			return false;
		}
		if (document.getElementById("goods.goodsMoneyRetail").value == "") {
			window.alert('请输入商品销售价!');
			return false;
		}
		if (document.getElementById("goods.goodsMoneyDeliver").value == "") {
			window.alert('请输入商品运费!');
			return false;
		}
		if (document.getElementById("goods.goodsSize1").value == "") {
			window.alert('请输入商品大号规格!');
			return false;
		}
		if (document.getElementById("goods.goodsSize2").value == "") {
			window.alert('请输入商品小号规格!');
			return false;
		}
		if (document.getElementById("goods.goodsUnits").value == "") {
			window.alert('请输入商品单位!');
			return false;
		}
		if (document.getElementById("goods.goodsCheckDate").value == "") {
			window.alert('请输入商品检验日期!');
			return false;
		}
		if (document.getElementById("goods.goodsCheckDepartment").value == "") {
			window.alert('请输入商品检验部门!');
			return false;
		}
		if (document.getElementById("goods.goodsCheckResult").value == "") {
			window.alert('请输入商品检验结果!');
			return false;
		}
		if (document.getElementById("goods.goodsCheckSerial").value == "") {
			window.alert('请输入商品检验序列号!');
			return false;
		}
		if (document.getElementById("sortid2").value == "") {
			window.alert('请输入商品类别!');
			return false;
		}
		if (document.getElementById("sortid").value == "") {
			window.alert('请输入商品类别!');
			return false;
		}
		if (document.getElementById("producerid").value == "") {
			window.alert('请输入商品生产商!');
			return false;
		}
		if (document.getElementById("sellerid").value == "") {
			window.alert('请输入商品销售商!');
			return false;
		}
		if (document.getElementById("goods.img1").value == "") {
			window.alert('请选择商品图片1!');
			return false;
		}
		if (document.getElementById("goods.img2").value == "") {
			window.alert('请选择商品图片2!');
			return false;
		}
		if (document.getElementById("goods.img3").value == "") {
			window.alert('请选择商品图片3!');
			return false;
		}
		if (document.getElementById("goods.img4").value == "") {
			window.alert('请选择商品图片4!');
			return false;
		}
		if (document.getElementById("goods.img5").value == "") {
			window.alert('请选择商品图片5!');
			return false;
		}
		if (document.getElementById("goods.img6").value == "") {
			window.alert('请选择商品图片6!');
			return false;
		}
		if (document.getElementById("goods.img7").value == "") {
			window.alert('请选择商品图片7!');
			return false;
		}
		if (document.getElementById("goods.img8").value == "") {
			window.alert('请选择商品图片8!');
			return false;
		}
		if (document.getElementById("goods.img9").value == "") {
			window.alert('请选择商品图片9!');
			return false;
		}
		
		return true;
	}
</script>



<script type="text/javascript">
	var select1_len =<%=sortlist.size()%>;
	var select2 = new Array(select1_len);
	for (i = 0; i <select1_len; i++) {
		select2[i] = new Array();
	}
</script>



<%
	for(int j = 0; j <sortlist.size(); j++) {
		Sort sort = sortlist.get(j);
// 		out.println("parent"+":"+sort.getSortName());
		Set sortSet = sort.getSorts();
		Iterator iterator1 = sortSet.iterator();
		int k = 0;
		while (iterator1.hasNext()) {
		Sort childrensort = (Sort) iterator1.next();
// 		out.println("children"+":"+childrensort.getSortName());
%>



<script type="text/javascript"> 
	select2[<%=j%>][<%=k%>] = new Option( "<%=childrensort.getSortName()%>","<%=childrensort.getSortId()%>");
// 	window.alert(<%=j%>+"---"+<%=k%>);
</script>



<%
	k++;
		}}
%>


<script type="text/javascript">
	/*该函数，控制二级级联操作*/
	function specieSelChange() {
		var option = document.getElementById("parentsortid");
		var index = option.selectedIndex;
		var temp = document.getElementById("sortid2");
		document.getElementById("sortid2").innerHTML = '';
		for (i = 0; i < select2[index].length; i++) {
			temp.options[i] = new Option(select2[index][i].text,select2[index][i].value);
		}
		temp.options[0].selected = true;
// 		window.alert(document.getElementById("sortid2").innerHTML);
		
		/*var str="";
		for (i = 0; i < select2[index].length; i++) {
			if(i==0){
				str += '<option selected="selected">' + select2[index][i].text + '</option>';
				window.alert(str);
				continue;
			}
			str += '<option>' + select2[index][i].text + '</option>';
		}
		window.alert(str);
		document.getElementById("sortid2").innerHTML = str;
		window.alert(document.getElementById("sortid2").innerHTML);*/
	}
</script>


</head>

<body>
		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li><a href="<%=basePath%>mainindex.jsp">首页</a></li>
				<li><a href="<%=basePath%>goods/goods_beforedoAdd.action" target="rightFrame">商品添加</a></li>
			</ul>
		</div>

		<div class="formbody">

			<div id="usual1" name="usual1" class="usual">

				<div class="itab">
					<ul>
						<li><a href="#tab1" class="selected">商品添加</a></li>
						<li><a href="#tab2">商品图片添加</a></li>
					</ul>
				</div>

				<form action="<%=basePath%>goods/goods_doAdd.action" method="post" onsubmit="return checkForm();" enctype="multipart/form-data" name="form1">
				<div id="tab1" name="tab1" class="tabson">
					<ul class="forminfo">
						<li><label>商品名称<b>*</b></label><input name="goods.goodsName" id="goods.goodsName" type="text" value="" class="dfinput" placeholder="请填写名称" style="width:320px;" /></li>
						<li><label>关 键 字<b>*</b></label><input name="goods.goodsKeyWord" id="goods.goodsKeyWord" type="text" value="" class="dfinput" placeholder="请填写关键字，以英文逗号分隔" style="width:320px;" /></li>
						<li><label>商品重量<b>*</b></label><input name="goods.goodsWeight" id="goods.goodsWeight" type="text" value="" class="dfinput" placeholder="请填写重量" style="width:320px;" /></li>
						<li><label>商品数量<b>*</b></label><input name="goods.goodsNumTotal" id="goods.goodsNumTotal" type="text" value="" class="dfinput" placeholder="请填写数量" style="width:320px;" /></li>
						<li><label>商品库存<b>*</b></label><input name="goods.goodsNumStock" id="goods.goodsNumStock" type="text" value="" class="dfinput" placeholder="请填写库存" style="width:320px;" /></li>
						<li><label>商品备注<b>*</b></label><input name="goods.goodsRemark" id="goods.goodsRemark" type="text" value="" class="dfinput" placeholder="请填写商品备注" style="width:320px;" /></li>
						<li><label>进 货 价<b>*</b></label><input name="goods.goodsMoneyEntry" id="goods.goodsMoneyEntry" type="text" value="" class="dfinput" placeholder="请填写进货价" style="width:320px;" /></li>
						<li><label>商品售价<b>*</b></label><input name="goods.goodsMoneyRetail" id="goods.goodsMoneyRetail" type="text" value="" class="dfinput" placeholder="请填写销售价" style="width:320px;" /></li>
						<li><label>商品运费<b>*</b></label><input name="goods.goodsMoneyDeliver" id="goods.goodsMoneyDeliver" type="text" value="" class="dfinput" placeholder="请填写运费" style="width:320px;" /></li>
						<li><label>商品规格<b>*</b></label><input name="goods.goodsSize2" id="goods.goodsSize2" type="text" value="" class="dfinput" placeholder="请填写小号规格" style="width:320px;" /></li>
						<li><label>商品规格<b>*</b></label><input name="goods.goodsSize1" id="goods.goodsSize1" type="text" value="" class="dfinput" placeholder="请填写大号规格" style="width:320px;" /></li>
						<li><label>商品单位<b>*</b></label><input name="goods.goodsUnits" id="goods.goodsUnits" type="text" value="" class="dfinput" placeholder="请填写商品单位" style="width:320px;" /></li>
						<li><label>检验日期<b>*</b></label> <input name="goods.goodsCheckDate" id="goods.goodsCheckDate" type="text" value="" class="laydate-icon" placeholder="请填写商品检验日期" style="width:320px;"
							onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" /></li>

						<li><label>检验部门<b>*</b></label><input name="goods.goodsCheckDepartment" id="goods.goodsCheckDepartment" type="text" value="" class="dfinput" placeholder="请填写商品检验部门" style="width:320px;" /></li>
						<li><label>检验序列号<b>*</b></label><input name="goods.goodsCheckSerial" id="goods.goodsCheckSerial" type="text" value="" class="dfinput" placeholder="请填写商品检验序列号" style="width:320px;" /></li>
						<li><label>检验状态<b>*</b></label>
							<div class="vocation">
								<select class="select1" name="goods.goodsCheckResult" id="goods.goodsCheckResult">
									<option>已检验</option>
									<option>未检验</option>
								</select>
							</div></li>

							<li><label>商品分类<b>*</b></label>
							<div class="usercity">
								<div class="cityleft">
									<select class="select1" name="sortid" id="sortid">
										<%
										for (int i = 0; i < sortlist.size(); i++) {
										Sort parentsort = sortlist.get(i);
										%>
										<optgroup label="<%=parentsort.getSortName()%>">
										<%
										Set sortSet = parentsort.getSorts();
										Iterator iterator1 = sortSet.iterator();
										while (iterator1.hasNext()) {
										Sort childrensort = (Sort) iterator1.next();
										%>
										<option value="<%=childrensort.getSortId()%>"><%=childrensort.getSortName()%></option>
										<%} %>
										</optgroup>
										<%
											}
										%>
									</select>
								</div></li>

						<li><label>商品分类<b>*</b></label>
							<div class="usercity">
								<div class="cityleft">
									<select class="select2" id="parentsortid" onchange="specieSelChange()">
										<%
											for (int i = 0; i < sortlist.size(); i++) {
											Sort parentsort = sortlist.get(i);
										%>
										<option><%=parentsort.getSortName()%></option>
										<%
											}
										%>
									</select>
								</div>
								<div class="cityright">
									<select class="select2" name="sortid2" id="sortid2">
										<option>请选择</option>
									</select>
								</div></li>

						<li><label>生产商<b>*</b></label>
							<div class="usercity">
								<select class="select1" name="producerid" id="producerid">
									<%
										for (int i = 0; i < companylist.size(); i++) {
										Company producer=companylist.get(i);
									%>
									<option value="<%=producer.getCompanyId()%>"><%=producer.getCompanyName()%></option>
									<%
										}
									%>
								</select>
							</div></li>


						<li><label>销售商<b>*</b></label>
							<div class="usercity">
								<select class="select1" name="sellerid" id="sellerid">
									<%
										for (int i = 0; i < companylist.size(); i++) {
										Company seller=companylist.get(i);
									%>
									<option value="<%=seller.getCompanyId()%>"><%=seller.getCompanyName()%></option>
									<%
										}
									%>
								</select>
							</div></li>

						<li><label>商品介绍<b>*</b></label> <textarea id="goods.goodsDescription" name="goods.goodsDescription" style="width:700px;height:250px;visibility:hidden;"></textarea></li>
					</ul>
				</div>



				<div id="tab2" name="tab2" class="tabson">
					<ul class="forminfo">
					
					<li><label>商品图片1<b>*</b></label>
					<input type="text" value="通用图片" class="dfinput2" readonly="true" />
					<i>提示：请选择分辨率为86*66的图片</i></li>
					<li>
						<div id="localImage1">
							<img src="/app2/uploads/nopic.png" id="preview1" width=150 height=160 style="diplay:none" />
						</div>
					</li>
					<li><input type="hidden" id="url1" name="goods.img1" value=""  /></li>
					<li><p><input type="button" id="image1" value="选择图片" class="btn1"  />（网络图片 + 本地上传）</p></li>
					<div class="xline"></div>
					
					<li><label>商品图片2<b>*</b></label>
					<input type="text" value="通用图片" class="dfinput2" readonly="true" />
					<i>提示：请选择分辨率为86*66的图片</i></li>
					<li>
						<div id="localImage2">
							<img src="/app2/uploads/nopic.png" id="preview2" width=150 height=160 style="diplay:none" />
						</div>
					</li>
					<li><input type="hidden" id="url2" name="goods.img2" value=""  /></li>
					<li><p><input type="button" id="image2" value="选择图片" class="btn1"  />（网络图片 + 本地上传）</p></li>
					<div class="xline"></div>
					
					<li><label>商品图片3<b>*</b></label>
					<input type="text" value="通用图片" class="dfinput2" readonly="true" />
					<i>提示：请选择分辨率为86*66的图片</i></li>
					<li>
						<div id="localImage3">
							<img src="/app2/uploads/nopic.png" id="preview3" width=150 height=160 style="diplay:none" />
						</div>
					</li>
					<li><input type="hidden" id="url3" name="goods.img3" value=""  /></li>
					<li><p><input type="button" id="image3" value="选择图片" class="btn1"  />（网络图片 + 本地上传）</p></li>
					<div class="xline"></div>
					
					<li><label>商品图片4<b>*</b></label>
					<input type="text" value="通用图片" class="dfinput2" readonly="true" />
					<i>提示：请选择分辨率为86*66的图片</i></li>
					<li>
						<div id="localImage4">
							<img src="/app2/uploads/nopic.png" id="preview4" width=150 height=160 style="diplay:none" />
						</div>
					</li>
					<li><input type="hidden" id="url4" name="goods.img4" value=""  /></li>
					<li><p><input type="button" id="image4" value="选择图片" class="btn1"  />（网络图片 + 本地上传）</p></li>
					<div class="xline"></div>
					
					<li><label>商品图片5<b>*</b></label>
					<input type="text" value="通用图片" class="dfinput2" readonly="true" />
					<i>提示：请选择分辨率为86*66的图片</i></li>
					<li>
						<div id="localImage5">
							<img src="/app2/uploads/nopic.png" id="preview5" width=150 height=160 style="diplay:none" />
						</div>
					</li>
					<li><input type="hidden" id="url5" name="goods.img5" value=""  /></li>
					<li><p><input type="button" id="image5" value="选择图片" class="btn1"  />（网络图片 + 本地上传）</p></li>
					<div class="xline"></div>
					
					<li><label>商品图片6<b>*</b></label>
					<input type="text" value="通用图片" class="dfinput2" readonly="true" />
					<i>提示：请选择分辨率为86*66的图片</i></li>
					<li>
						<div id="localImage6">
							<img src="/app2/uploads/nopic.png" id="preview6" width=150 height=160 style="diplay:none" />
						</div>
					</li>
					<li><input type="hidden" id="url6" name="goods.img6" value=""  /></li>
					<li><p><input type="button" id="image6" value="选择图片" class="btn1"  />（网络图片 + 本地上传）</p></li>
					<div class="xline"></div>
					
					<li><label>商品图片7<b>*</b></label>
					<input type="text" value="通用图片" class="dfinput2" readonly="true" />
					<i>提示：请选择分辨率为86*66的图片</i></li>
					<li>
						<div id="localImage7">
							<img src="/app2/uploads/nopic.png" id="preview7" width=150 height=160 style="diplay:none" />
						</div>
					</li>
					<li><input type="hidden" id="url7" name="goods.img7" value=""  /></li>
					<li><p><input type="button" id="image7" value="选择图片" class="btn1"  />（网络图片 + 本地上传）</p></li>
					<div class="xline"></div>
					
					<li><label>商品图片8<b>*</b></label>
					<input type="text" value="通用图片" class="dfinput2" readonly="true" />
					<i>提示：请选择分辨率为86*66的图片</i></li>
					<li>
						<div id="localImage8">
							<img src="/app2/uploads/nopic.png" id="preview8" width=150 height=160 style="diplay:none" />
						</div>
					</li>
					<li><input type="hidden" id="url8" name="goods.img8" value=""  /></li>
					<li><p><input type="button" id="image8" value="选择图片" class="btn1"  />（网络图片 + 本地上传）</p></li>
					<div class="xline"></div>
					
					<li><label>商品图片9<b>*</b></label>
					<input type="text" value="通用图片" class="dfinput2" readonly="true" />
					<i>提示：请选择分辨率为86*66的图片</i></li>
					<li>
						<div id="localImage9">
							<img src="/app2/uploads/nopic.png" id="preview9" width=150 height=160 style="diplay:none" />
						</div>
					</li>
					<li><input type="hidden" id="url9" name="goods.img9" value=""  /></li>
					<li><p><input type="button" id="image9" value="选择图片" class="btn1"  />（网络图片 + 本地上传）</p></li>
					<div class="xline"></div>
					<div class="ibox"></div>
					
					<li><label>&nbsp;</label><input name="button" type="submit" class="btn" value="数据录入" /></li>
					</ul>
				</div>
				
				<div class="ibox"></div>
				<div class="ibox"></div>
				<div class="ibox"></div>


			</div>
		</div>
		</form>
		<script type="text/javascript">
			$("#usual1 ul").idTabs();
		</script>
		<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
		</script>
</body>
</html>
