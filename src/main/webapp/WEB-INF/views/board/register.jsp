<%@ include file="/WEB-INF/views/include/header.jsp"%>

<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
<form id="frm" role="form" method="post" action="registerok"
	enctype="multipart/form=data">
	<div class="box-body">

		<div class="form-group">
			<label for="exampleInputTitle1">TITLE</label> <input type="text"
				name="title" class="form-control" placeholder="Enter title">
		</div>
		<div class="form-group">

			<label for="exampleInputContents1">CONTENTS</label>
			<textarea class="form-control" name="contents" id="contents" rows="3"
				placeholder="Enter contents">
				</textarea>
				<script>
				CKEDITOR.replace('contents', {
					filebrowserUploadUrl: '/community/imageUpload',
					customConfig: '${contextPath}/js/lib/ckeditor/config_oboe.js'
				});
				</script>
				
		</div>
		<div class="form-group">
			<label for="exampleInputUserId1">USERID</label> <input type="text"
				name='userId' class="form-control" placeholder="Enter userId">
		</div>
		<div class="form-group">
			<label for="exampleInputsiteNumber1">SITENUMBER</label> <input
				type="text" name='siteNumber' class="form-control"
				placeholder="Enter siteNumber">
		</div>


		<!-- <div class="form-group">
				<label for="exampleInputbno1">BNO</label> <input type="text"
					name="bno" class="form-control" placeholder="Enter bno" readonly="readonly">
			</div> -->
		<!-- /.box-body -->

		<button type="submit" class="btn btn-primary" name="btn">Regist</button>
	</div>
</form>

<script>
$(function(){
		
	/* CKEDITOR.on('dialogDefinition', function(ev){
		var dialogName=ev.data.name;
		var dialogDefinition=ev.data.definition;
		
		switch (dialogName){
		case 'image':
			dialogDefinition.removeContnets('Link');
			dialogDefinition.removeContents('advanced');
			break;
		}
		
	}); */
});
</script>


</body>
<%@include file="/WEB-INF/views/include/footer.jsp"%>
</html>
