<%@ include file="/WEB-INF/views/include/header.jsp"%>

<div class="box-body">

	<form role="form" action="modify?bno=${boardVO.bno }" method="post">

		<input type="hidden" name="bno" value="${boardVO.bno }"> <input
			type="hidden" name="page" value="${cri.page }"> <input
			type="hidden" name="perPageNum" value="${cri.perPageNum }">
		<%-- <input type="hidden" name="searchType" value="${cri.searchType }"> 
			<input type="hidden" name="keyword" value="${cri.keyword }"> --%>

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
			<button type="button" onClick="javascript:change2('mod2')"
				class="btn btn-info" name="modifybtn" id="modifybtn">MODIFY</button>
			<button type="button" onClick="javascript:change2('remove')"
				class="btn btn-danger">REMOVE</button>
			<!-- <a href="/board/remove?bno=${boardVO.bno}">REMOVE(href OK)</a> -->
			<button type="button" onClick="javascript:change2('listPage')"
				class="btn btn-warning">GO LIST</button>

		</div>
	</div>

</div>

<!-- 
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);

		$(".btn-warning").on("click", function() {
			formObj.attr("action", "/sboard/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$(".btn-danger").on("click", function() {
			formObj.attr("action", "/sboard/removePage");
			formObj.submit();
		});

		$(".btn-primary").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/sboard/list");
			formObj.submit();
		});

	});
</script> -->


<script type="text/javascript">
	var bno = '${boardVO.bno}';

	var listPage = '/sboard/list';
	var remove = '/board/remove?bno=' + bno;
	var modify = '/sboard/modify?bno=' + bno;

	function change2(target2) {
		var u2 = '';
		var formObj = $("form[role='form']");
		console.log(formObj);

		if (target2 == 'mod2') {

			$("input[name='title']").removeAttr("readOnly");
			$("textarea[name='contents']").removeAttr("readOnly");

			// pause(); ????
			// if one more click -> $("??").attr("ATTR"); 

			//document.location.href = "/board/readPage?bno=" + ${cri.page};
			$(modifybtn).click(function() {
				formObj.submit();
			});

			u2 = modify;
			return;
		} else if (target2 == 'remove') {
			u2 = remove;
			alert("ok! dlt!");
			
		} else if (target2 == 'listPage') {
			history.back();
			history.reload();
			return;
		}

		document.location.href = u2;

	}

	/* 
	  function move(target) {
		var u = '';
		if (target == 'mod') {
			u = modify;
			$("input[name='title']").removeAttr("readOnly");
			$("textarea[name='contents']").removeAttr("readOnly");

			return;
		} else if (target == 'remove') {
			u = remove;
		} else if (target == 'list') {
			u = listAll;
		} else {
			u = listAll;
		}

		document.location.href = u;
	}   */

	function modify() {
		document.location.href = "/sboard/modify?bno=${boardVO.bno}";
	}
</script>



<%@include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>