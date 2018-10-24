
<%@ include file="/WEB-INF/views/include/header.jsp"%>



<div class="box-body">



<form role="form" action="modify?bno=${boardVO.bno }" method="post">

	<input type="hidden" name="bno" value="${boardVO.bno }"> 
	<input type="hidden" name="page" value="${cri.page }"> 
	<input type="hidden" name="perPageNum" value="${cri.perPageNum }">
	<input type="hidden" name="searchType" value="${cri.searchType }">
	<input type="hidden" name="keyword" value="${cri.keyword }">


		<div class="form-group">
			<label for="exampleInputEmail1">Title</label> <input type="text"
				name="title" class="form-control" value="${boardVO.title}"
				readonly="readonly">
		</div>

		<div class="form-group">
			<label for="exampleInputPassword1">Contents</label>
			<textarea class="form-control" name="contents" rows="3"
				readonly="readonly">${boardVO.contents}</textarea>
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Writer</label> <input type="text"
				name="writer" class="form-control" value="${boardVO.userId}"
				readonly="readonly">
		</div>
</form>
</div>

<!-- /.box-body -->
<div class="box-footer" style="background-color: #ecf0f5">


	<div class="row">
		<div class="col-sm-1"></div>
		<div class="btn-gruop">
			<!-- <a href="/board/modify?bno=${boardVO.bno}">MODIFY(href OK)</a>-->
			<button type="button" 
				class="btn btn-info" name="modifybtn" id="modifybtn">MODIFY</button>
			<button type="button" 
				class="btn btn-warning">MODIFY(page)</button>
			<button type="button" 
				class="btn btn-danger">REMOVE</button>
			<!-- <a href="/board/remove?bno=${boardVO.bno}">REMOVE(href OK)</a> -->
			<button type="button" 
				class="btn btn-info">GO LIST</button>

		</div>

	</div>


</div>


<script type="text/javascript">
	$(document).ready(function(){
		var formObj=$("form[role='form']");
		console.log(formObj);
		
		$(".btn-warning").on("click", function(){
			self.location="/sboard/list?page=${cri.page}&perPageNum=${cri.perPageNum}"+"&searchType=${cri.searchType}&keyword=${cri.keyword}";
		});
		
		$(".btn-primary").on("click",function(){
			formObj.submit();
		});
		
	});
</script>



<%@include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>