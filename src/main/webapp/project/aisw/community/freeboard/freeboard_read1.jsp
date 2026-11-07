<br>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<HEAD>
<TITLE>글 읽기</TITLE>
<%@ include file="../../link.txt"%>
<link href="filegb.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>
	<%@ include file="../../menu.jsp"%>
	<%@ include file="dbconn.jsp"%>
	<%
	String table = request.getParameter("table");
	String sql = null;
	// Connection con= null;
	PreparedStatement st = null;
	ResultSet rs = null;

	int id = Integer.parseInt(request.getParameter("id"));

	try {
		sql = "select * from " + table + " where id=? ";
		st = con.prepareStatement(sql);
		st.setInt(1, id);
		rs = st.executeQuery();

		if (!(rs.next())) {
			out.println("해당 내용이 없습니다");
		} else {
			String em = rs.getString("email");
			if ((em != null) && (!(em.equals(""))))
		em = "<A href=mailto:" + em + ">" + rs.getString("name") + "</A>";
			else
		em = rs.getString("name");
	%>
	<div class="container">
		<table class='table'>
			<thead>
				<tr>
					<th colspan="2" scope="col">제목 : <%=rs.getString("subject")%></th>
				</tr>
			</thead>
			<tboard>
			<tr>
				<td colspan="2" scope="row">글쓴이 : <A href=><%=em%></A>
				</td>
			</tr>
			<tr>
				<td scope="row">작성일 : <%=rs.getString("inputdate")%></td>
				<td scope="row">조회 : <%=rs.getString("readcount")%></td>
			</tr>
			<tr>
				<td colspan="2" scope="row"><%=rs.getString("content").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;")
		.replaceAll("\n", "<br>")%></td>
			</tr>
			<tr>
				<td colspan="2" scope="row"></td>
			</tr>
			</tbody>
		</table>
	</div>
	<div class="text-center">
		<A
			href="freeboard_list1.jsp?table=<%=table%>&go=<%=request.getParameter("page")%>"><img
			src="image/list.jpg" border=0></a> &nbsp; <A
			href="freeboard_rwrite1.jsp?table=<%=table%>&id=<%=request.getParameter("id")%>&page=<%=request.getParameter("page")%>">
			<img src="image/reply.jpg" border=0>
		</A> &nbsp; <A
			href="freeboard_upd1.jsp?table=<%=table%>&id=<%=id%>&page=1"><img
			src="image/edit.jpg" border=0></A> &nbsp; <A
			href="freeboard_del1.jsp?table=<%=table%>&id=<%=id%>&page=1"><img
			src="image/del.jpg" border=0></A>
	</div>
	<%
	sql = "update " + table + " set readcount= readcount + 1 where id= ?";
	st = con.prepareStatement(sql);
	st.setInt(1, id);
	st.executeUpdate();
	}
	rs.close();
	st.close();
	con.close();
	} catch (SQLException e) {
	out.println(e);
	}
	%>

	<%@ include file="../../footer.jsp"%>
</BODY>
</html>