<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="com.lechou.util.*,com.lechou.user.*"%>
<%@include file="sessioncheck.jsp"%>
<%
	String name = "";
	if(currentUserVO != null)
	{
	   name = currentUserVO.getUsername();
	}
	if(name == null || name.trim().equals(""))
    {
    response.getWriter().print(
			"<script>alert('�ף�����û�е�¼��!');window.location.href='login.jsp'</script>");
return;
    }
String requestURL = "updateheadicon.jsp";
String requestresourcetype ="images";
String iconurl = UserMgr.getInstance().getUserVOById(currentUserVO.getPk_user()).getIconurl();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">

<meta http-equiv="expires" content="0">
<title>�ֳ���-�޸�ͷ��</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="renderer" content="webkit">
<link rel="shortcut icon" type="image/png"
	href="http://zcs6.ncfstatic.com/v3/static/images/icon/title.png?v=">
<link rel="stylesheet" type="text/css"
	href="css/14c4c0d24fba6ed25d8b6758064ef7b8.css">
<script type="text/javascript" async="" src="js/dc.js"></script>
<script type="text/javascript" async="" src="js/ag.js"></script>
<script type="text/javascript"
	src="js/2cc0475e1160ea574d0a9b5ebea60136.js"></script>
<script>
	$(".meun-01").live("click", function() {
		location.href = $(this).data("link");
	})
</script>
<script async="" src="js/ncfpb.1.1.min.js"></script>
<script async="" src="js/zcpb.1.0.min.js"></script>
<script type="text/javascript" id="b5mmain" src="js/b5m.main.js"></script>

</head>
<body>
	<!--header static-->
	<div class="header">
		<div class="wrap clearfix">
			<div class="m-left">
				<h2>
					<a id="nav_logo" alt="�ֳ���" class="img-logo " title="�ֳ���"href="index.jsp"><img
						src="images/logo.png" alt="" /> </a>
				</h2>
				<ul class="m-nav clearfix">
					<li><a  href="index.jsp"><span><i
								class="s-01"></i> </span>������ҳ</a>
					</li>
					
					<li><a href="manageproject.jsp" target="_blank"><i class="s-30"></i>��Ŀ����</a>
					</li>
					<li><a href="manageorder.jsp" target="_blank"><i class="s-03"></i>��������</a>
					</li>
					<li><a href="manageinfo.jsp" target="_blank"><i class="s-phone"></i>��������</a>
					</li>
				</ul>
			</div>
			<div class="m-right clearfix">
				<div id="Js-header-loginBtn">
					<span class="pull-down clearfix"><i class="meun-02"></i><i
						class="meun-01" data-link="exit.jsp?operate=exit#">�˳�</i> </span>
				</div>
				<div id="Js-header-loginBtn">
					<span class="pull-down clearfix"><i class="meun-02"></i><i
						class="meun-01" data-link="manageproject.jsp"><%=name%></i> </span>
				</div>
			</div>
		</div>
	</div>
	<!--header end-->
	<link rel="stylesheet" type="text/css"
		href="css/7ffb95504c3dc3e41f80429d1d3004ea.css">

	<link rel="stylesheet" type="text/css"
		href="css/5de86140d87bd2dbed2f7d202594aff3.css">
	<div class="wrap pb116 clearfix">
	  <h2 class="personal-set">
			<a href="manageproject.jsp" class="mm-blue ml-pm a-personal-set  ">���غ�̨��ҳ</a>��������
		</h2>
		<!--left side static-->
		<div class="personal-set-left">
			<ul>
				<li ><a href="manageinfo.jsp">�����޸�</a>
				</li>
				<li><a href="updatepassword.jsp">�����޸�</a>
				</li>
				<li class="selected"><a href="updateheadicon.jsp">ͷ���޸�</a>
				</li>
				<li><a href="addaddress.jsp">�ռ���ַ����</a>
				</li>

			</ul>
		</div>
		<!--left side end-->

		<div class="personal-set-right">
			
			  <form name="uploadForm" method="POST" enctype="MULTIPART/FORM-DATA"
				action="headiconupload">
				<div class="form-item clearfix pb70">
					<div class="head-portrait">
						<img src="<%=(iconurl==null)?"images/noavatar_middle.gif": "uploadFile/"+iconurl%>" id="avatar">
						
					<p class="p-browse">		
					 <input type="hidden" name="pk_user" value="<%=currentUserVO.getPk_user() %>" />
					  <input type="hidden" name="requestURL" value="<%=requestURL %>" />		
			       <input type="file" name="headicon" size="20" "/>
							<input type="submit" name="submit" value="�ϴ�"></p>
						<p class="caption">ֻ���ϴ�jpg��jpeg��png��ʽ��ͼƬ</p>
					</div>
				</div>
			</form>
		
		</div>
		<!--right side end-->
	</div>

	<!--start of footer-->
	<div id="foottop2"></div>
	<div class="footer">
		<div class="footer-nav">
			<a href="#" rel="nofollow" target="_blank">�������� <i>��</i> </a> <a
				href="#" rel="nofollow" target="_blank">��ϵ���� <i>��</i> </a> <a
				href="#" rel="nofollow" target="_blank">����Э�� <i>��</i> </a> <a
				href="#" rel="nofollow" target="_blank">��Ŀ����淶 <i>��</i> </a> <a
				href="#" target="_blank">���ְ��� <i>��</i> </a> <a href="#"
				target="_blank">�������� <i>��</i> </a>
		</div>
		<div class="footer-icon">
			<span>copyright �0�82015 by lechou all right reserved</span>
		</div>
	</div>
	<!--end of footer-->
	<script type="text/javascript"
		src="js/fe3974b84fb6b50da0f329242078614c.js"></script>
</body>
</html>
