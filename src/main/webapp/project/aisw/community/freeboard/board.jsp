<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<HEAD>
<TITLE>게시판</TITLE>
<%@ include file="../../link.txt"%>
<script defer type="text/javascript"
	src="/AIproject/project/_res/_common/js/cms.js"></script>
<script defer type="text/javascript"
	src="/AIproject/project/_res/knu/aisw/js/main-content01.content7204.js"></script>

</HEAD>
<BODY>
	<%@ include file="dbconn.jsp"%>
	<div class="container">
		<div class="main-content-wrap01 cms-edit" id="cms-content">
			<div class="main-content-box main-content-box01">
				<div class="main-mini-wrap">
					<div class="main-mini-box main-mini-box01">
						<div class="mini-tab-box">
							<ul>
								<%
								String sql = null;
								PreparedStatement st = null;
								ResultSet rs = null;
								String[] frame_table = { "freeboard", "gallery" };
								String[] frame_table_ko = { "공지사항", "갤러리" };
								for (int frame = 0; frame < 2; frame++) {
									if (frame == 0) {
										out.println("<li class='active'>");
									} else {
										out.println("<li>");
									}
									out.println("<a class='mini-board-tab ' href='#a' title=" + frame_table_ko[frame] + ">" + frame_table_ko[frame]
									+ "</a>");
									out.println("<div class='mini-board-content'><div class='main-notice-box temp08'><ul>");
									sql = "select * from " + frame_table[frame] + " order by masterid desc";
									st = con.prepareStatement(sql);
									rs = st.executeQuery();
									int count = 0;
									while (count != 3) {
										if (!rs.next()) {
									break;
										}
										int id = rs.getInt("id");
										String inputdate = rs.getString("inputdate");
										String day = inputdate.substring(6, 8);
										String year_month = inputdate.substring(0, 5);
										year_month.replace("-", ".");
										String subject = rs.getString("subject");
										String content = rs.getString("content");
										out.println("<li>");
										out.println("<div class='mini-date'><span>" + day + "</span>" + year_month + "</div>");
										out.println("<div class='mini-txt-box'><div class='mini-title'>");
										out.println("<a href='/AIproject/project/aisw/community/freeboard/freeboard_read1.jsp?table="
										+ frame_table[frame] + "&amp;id=" + id + "&amp;page=1' title='자세히보기'>" + subject + "</a>");
										out.println("</div><div class='mini-txt'>");
										out.println("<a href='/AIproject/project/aisw/community/freeboard/freeboard_read1.jsp?table="
										+ frame_table[frame] + "&amp;id=" + id + "&amp;page=1' title='자세히보기'>" + content + "</a>");
										out.println("</div></div></li>");
										count++;
									}
									if (count == 0) {
										out.println("<li>게시판에 올린 글이 없습니다</li>");
									}
									out.println("</ul></div></div>");
									out.println("<a class='btn-more' href='/AIproject/project/aisw/community/freeboard/freeboard_list1.jsp?table="
									+ frame_table[frame] + "'>더보기</a>");
									out.println("</li>");
								}
								%>
							</ul>
						</div>
					</div>

					<div class="main-mini-box main-mini-box02">
						<h3 class="main-title">서식자료실</h3>
						<div class="main-notice-box temp08">
							<ul>
								<%
								

								//out.println("<li>");
								out.println("<a class='mini-board-tab ' href='#a' title=dataroom></a>");
								out.println("<div class='mini-board-content'><div class='main-notice-box temp08'><ul>");
								sql = "select * from dataroom order by masterid desc";
								st = con.prepareStatement(sql);
								rs = st.executeQuery();
								int count = 0;
								while (count != 3) {
									if (!rs.next()) {
										break;
									}
									int id = rs.getInt("id");
									String inputdate = rs.getString("inputdate");
									String day = inputdate.substring(6, 8);
									String year_month = inputdate.substring(0, 5);
									year_month.replace("-", ".");
									String subject = rs.getString("subject");
									String content = rs.getString("content");
									out.println("<li>");
									out.println("<div class='mini-date'><span>" + day + "</span>" + year_month + "</div>");
									out.println("<div class='mini-txt-box'><div class='mini-title'>");
									out.println("<a href='/AIproject/project/aisw/community/freeboard/freeboard_read1.jsp?table=dataroom&amp;id=" + id
									+ "&amp;page=1' title='자세히보기'>" + subject + "</a>");
									out.println("</div><div class='mini-txt'>");
									out.println("<a href='/AIproject/project/aisw/community/freeboard/freeboard_read1.jsp?table=dataroom&amp;id=" + id
									+ "&amp;page=1' title='자세히보기'>" + content + "</a>");
									out.println("</div></div></li>");
									count++;
								}
								if (count == 0) {
									out.println("<li>게시판에 올린 글이 없습니다</li>");
								}
								out.println("</ul></div></div>");
								out.println(
										"<a class='btn-more' href='/AIproject/project/aisw/community/freeboard/freeboard_list1.jsp?table=dataroom'>더보기</a>");
								out.println("</li>");
								%>
							</ul>
						</div>
						<a class="btn-more"
							href="/AIproject/project/aisw/community/freeboard/freeboard_list1.jsp?table=dataroom"
							title="서식자료실 바로가기 ">더보기</a>

					</div>

				</div>

			</div>

		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
</BODY>
</html>