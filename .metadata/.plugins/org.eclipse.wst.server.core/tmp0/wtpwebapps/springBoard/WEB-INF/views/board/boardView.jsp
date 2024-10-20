<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>boardView</title>
</head>
<script>
	$j(document).ready(function(){
		
		$j("#updateBtn").on("click", function(){
						
			let boardNum = $j(this).data("board-num");
			
			let title = $j("#titleInput").val();
			
			let comment = $j("#commentInput").val();
			
			let modifier = $j("#modifierInput").val();
			
			let boardType = $j("#boardTypeInput").val();
			
			if(title == ""){
				alert("제목을 입력하세요.");
				return ;
			}
			
			if(comment == ""){
				alert("커멘트를 입력하세요.");
				return ;
			}
			
			if(modifier == ""){
				alert("로그인시 수정가능합니다.");
				return ;
			}
	
			
			$j.ajax({
				url : "/board/boardModifyAction.do",
				type :"POST",
				dataType: "json",
				data : {boardNum : boardNum, boardTitle : title, boardComment : comment, modifier:modifier, boardType:boardType},
				success:function(data){
	
					alert("수정완료");
					
					alert("메세지:"+data.success);
					location.href = "/board/boardList.do";
	
				}
				, error:function(){
					
					alert("수정에러");
				}
	
				
			});
			
		});
		
	});


</script>
<body>
<table align="center">
	<tr>
		<td>
			<table border ="1">
				<tr>
					<td width="120" align="center">
					Title
					</td>
					<td width="400">
					<input type="text" id="titleInput" value = "${board.boardTitle}" placeholder="" class=""readonly>
					</td>
				</tr>
				<tr>
					<td height="300" align="center">
					Comment
					</td>
					<td>
					<textarea type="text" id="commentInput" rows="20" cols="55" readonly>${board.boardComment}</textarea>
					</td>
				</tr>
				<tr>
					<td align="center">
					Writer
					</td>
					<td>
					<input type="text" id="" value = "${board.creator}" placeholder="" class="" readonly>
					<input type="hidden" id="modifierInput" value = "${userName}" placeholder="" class="" readonly>
					<input type="hidden" id="boardTypeInput" value = "${board.boardType}" placeholder="" class="" readonly>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		
		<td align="right">
			<a href="/board/boardList.do">List</a>
			
			<!--  <button id ="updateBtn" data-board-num="${board.boardNum }">update</button>-->
			<a href = "/board/${board.boardType}/${board.boardNum}/boardModify.do">update</a>
		</td>
	</tr>
</table>	
</body>
</html>