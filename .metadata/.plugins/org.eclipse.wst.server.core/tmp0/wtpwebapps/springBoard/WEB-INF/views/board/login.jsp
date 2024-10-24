<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<script type="text/javascript">
	
	$j(document).ready(function(){
		
		
		$j("#loginBtn").on("click", function(event){
			
			event.preventDefault();
			
			var $frm = $j('.logingForm :input');
			var param = $frm.serialize();
			
			let id = $j("#idInput").val();
			let pw = $j("#pwInput").val();
			
			if(id == ""){
				alert("아이디를 입력하세요.");
				return ;
			}
			
			if(pw == ""){
				alert("비밀번호를 입력하세요.");
				return ;
			}
			
			$j.ajax({
				url : "/board/loginAction.do",
			    dataType: "json",
			    type: "POST",
			    data : param,
			    success: function(data, textStatus, jqXHR)
			    {
					
			    	if(data.success=="Y"){
			    		alert("로그인완료");
						
						alert("메세지:"+data.success);
						
						location.href = "/board/boardList.do?pageNo=1";
			    		
			    	} else {
			    		
			    		alert("로그인 실패");
			    	}
			    	
					//여기 수정해보기 상수가 아닌 pageNo response로 받아와야 하나? 
					
			    },
			    error: function (jqXHR, textStatus, errorThrown)
			    {
			    	alert("실패");
			    }
				
				
			});

		});
	
	});
	
	
</script>
<body>
	<form class="logingForm">
		<table align="center">
			<tr>
				<td align="left">
					<a href="/board/boardList.do">List</a>
				</td>
			</tr>
			<tr>
				<td>
					<table border ="1"> 
						<tr>
							<td width="120" align="center">
							id
							</td>
							<td width="200">
								<input id="idInput" name="userId" type="text" size="20" value=""> 
								
							</td>
						</tr>
						<tr>
							<td width="120" align="center">
								pw
							</td>
							<td width="200">
								<input id="pwInput" name="userPw" type="password" size="20" value=""> 
							</td>
						</tr>	
					
					</table>
				</td>	
			</tr>
			<tr>
			<td align="right">
				<button id="loginBtn">login</button>
			</td>
		</tr>		
		</table>
	
	</form>

</body>
</html>