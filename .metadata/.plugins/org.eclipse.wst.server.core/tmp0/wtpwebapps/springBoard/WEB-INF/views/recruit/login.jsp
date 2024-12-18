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
		
		$j("#nameInput").focus()
		
		$j("#applyBtn").on("click", function(event){
			
			event.preventDefault();
			
			var $frm = $j('.loginForm :input');
			var param = $frm.serialize();
			
			//alert("param"+param);
			
			let name = $j("#nameInput").val();
			let phone = $j("#phoneInput").val();
			
			if(name == ""){
				alert("이름을 입력하세요.");
				$j("#nameInput").focus()
				return ;
			}
			
			if(phone == ""){
				alert("전화번호를 입력하세요.");
				$j("#phoneInput").focus()
				return ;
			}
			
			$j.ajax({
				url : "/recruit/loginAction.do",
			    dataType: "json",
			    type: "POST",
			    data : param,
			    success: function(data, textStatus, jqXHR)
			    {
					
			    	if(data.success=="Y"){
			    		alert("로그인완료");
						
						alert("메세지:"+data.success);
						
						location.href = "/recruit/mainPage.do";
			    		
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
	
	//영어, 특수문자, 숫자 제거(이름)
	function filterInput1(input) {
	    setTimeout(function() {
	        input.value = input.value.replace(/[a-zA-Z]/g, '')  // 영어 제거
	                                .replace(/[~!@#$%^&*()_+|<>?:{}.,\/]/g, '')
	                                .replace(/[0-9]/g, '');  // 특수문자 제거
	    }, 0); // 입력이 완료된 후에 영어, 특수문자, 숫자 제거
	}
	
	//한글, 영어, 특수문자 제거 (전화번호)
	function filterInput2(input) {
	    setTimeout(function() {
	        input.value = input.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '')  // 한글 제거
	                                .replace(/[a-zA-Z]/g, '')// 영어제거
	                                .replace(/[~!@#$%^&*()_+|<>?:{}.,\/]/g, '');  // 특수문자 제거
	    }, 0); // 입력이 완료된 후에 한글, 영어, 특수문자 제거
	}
	
</script>
<body>
	<form class="loginForm">
		<table align="center">
			
			<tr>
				<td>
					<table border ="1"> 
						<tr>
							<td width="120" align="center">
								<b>이름</b>
							</td>
							<td width="200">
								<input id="nameInput" name="name" type="text"oninput="filterInput1(this)"  maxlength='254'size="20" value=""> 
								
							</td>
						</tr>
						<tr>
							<td width="120" align="center">
								<b>휴대폰번호</b>
							</td>
							<td width="200">
								<input id="phoneInput" name="phone" type="text" oninput="filterInput2(this)" maxlength='254'size="20" value=""> 
							</td>
						</tr>	
						<tr >
						<td colspan="3" align="center">
							<button id="applyBtn">입사지원</button>
						</td>
					</tr>	
					</table>
				</td>	
			</tr>
				
		</table>
	
	</form>

</body>
</html>