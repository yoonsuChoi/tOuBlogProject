<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="downloadBtn">
	<button type="button" class="btn btn-outline-dark"
		style="font-size: 12px;"
		onclick="window.location.href='${pageContext.request.contextPath }/files/resume.pdf'">이력서
		다운</button>
	<button type="button" class="btn btn-outline-dark"
		style="font-size: 12px;"
		onclick="window.location.href='${pageContext.request.contextPath }/files/project.docx'">포트폴리오
		다운</button>
</div>
<div id="sendEmail" class="send">
	<h5>
		<b>Email : :</b>
	</h5>
	<form class="form-horizontal" role="form" id="mailForm">
		<div class="form-group"
			style="padding-top: 15px; border-top: 0.063rem solid rgba(0, 0, 0, 0.2);">
			<label for="name" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="name" name="name"
					placeholder="Name" value="">
			</div>
		</div>
		<div class="form-group">
			<label for="email" class="col-sm-2 control-label">Your Email</label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="email" name="email"
					placeholder="example@google.com" value="">
			</div>
		</div>
		<div class="form-group">
			<label for="title" class="col-sm-2 control-label">Title</label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="title" name="title"
					placeholder="Title" value="">
			</div>
		</div>
		<div class="form-group">
			<label for="message" class="col-sm-2 control-label">Content</label>
			<div class="col-sm-10">
				<textarea class="form-control" rows="4" name="message"
					placeholder="content" id="message"></textarea>
			</div>
		</div>
		<button type="button" id="sendMail" class="btn btn-outline-dark"
			style="font-size: 12px; float: right;">메일 보내기</button>
	</form>
</div>
<div id="sendSMSs" class="send"
	style="margin-left: 10%; margin-right: 10%; margin-top: 8%;">
	<h5>
		<b>SMS : :</b>
	</h5>
	<form class="form-horizontal" role="form" id="SMSForm">
		<div class="form-group"
			style="padding-top: 15px; border-top: 0.063rem solid rgba(0, 0, 0, 0.2);">
			<label for="Phone Num" class="col-sm-2 control-label">Number</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="pnumber" name="pnumber"
					placeholder="Phone Num" value="">
			</div>
		</div>
		<div class="form-group">
			<label for="message" class="col-sm-2 control-label">Message</label>
			<div class="col-sm-10">
				<textarea class="form-control" rows="4" name="pmessage"
					placeholder="content" id="pmessage"></textarea>
			</div>
		</div>
		<button type="button" id="sendSMS" class="btn btn-outline-dark"
			style="font-size: 12px; float: right;">문자 보내기</button>
	</form>

</div>
