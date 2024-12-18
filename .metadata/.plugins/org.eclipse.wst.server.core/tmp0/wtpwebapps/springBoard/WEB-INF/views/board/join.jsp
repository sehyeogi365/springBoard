<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>join</title>
</head>
<script type="text/javascript">
	
	$j(document).ready(function(){
		
		var isChecked = false;
		
		var isDuplicateId = true;//id중복여부	중복이되야 진행안되니 중복되는걸 기본값	
		//유효성 검사 
		
		//focus
		$j("#idInput").focus()		
			
		//중복아이디 검사하고 교체시 바로 중복됩니다로 나오게 하기
		$j("#idInput").on("input", function(){
			//중복 관련된 상태 초기화
			isChecked = false;
			isDuplicateId = true;
			
		});
		
		$j("#duplicateBtn").on("click", function(event){
			
			event.preventDefault();
			
			let id = $j("#idInput").val();
			
			if(id == ""){
				alert("아이디를 입력하세요.");
				$j("#idInput").focus()	
				return ;
			}
			
			//밸류Y값 일때 중복입니다. d-none 없애기
			//그외일때 사용가능한 아이디입니다. d-none 없애기 
			
			$j.ajax({
				url : "/board/isduplicateId.do",
			    dataType: "json",
			    type: "GET",
			    data : {userId: id},
				success: function(data, textStatus, jqxHR){
					isChecked = true;//체크 한거니 true로 변경
					isDuplicateId = data.success;//리스폰스 받은 밸류값에 따라 
					
					if(isDuplicateId == "Y"){
						//$j("#duplicateYes").removeClass("d-none");
						//$j("#duplicateNo").addClass("d-none");
						alert("isDuplicateId: " + isDuplicateId);
						alert("중복아이디 입니다.");
						$j("#idInput").val("");//초기화
						$j("#idInput").focus()//focus
					} else {
						//$j("#duplicateNo").removeClass("d-none");
						//$j("#duplicateYes").addClass("d-none");
						alert("isDuplicateId: " + isDuplicateId);
						alert("사용할수 있는 아이디 입니다.");
					}
				
					
				}
				, error: function(data, textStatus, jqxHR){
					alert("중복확인 에러");
				}
			});
			
		});
	
		$j("#joinBtn").on("click", function(event){
			
			event.preventDefault();
	
			var $frm = $j('.joinForm :input');
			var param = $frm.serialize();
			//alert("frm" + $frm);
			//alert("param" + param);
			
			let id = $j("#idInput").val();
			let pw = $j("#pwInput").val();
			let pwConfirm = $j("#pwConfirmInput").val();
			let name = $j("#nameInput").val();
			let phoneInput1 = $j("#phoneInput1").val();
			let phoneInput2 = $j("#phoneInput2").val();
			let phoneInput3 = $j("#phoneInput3").val();	
			let postNo = $j("#noInput").val();
			
			// 한글, 영어, 숫자, 특수문자 구분 정규식 모음
			let checkNum = /[0-9]/;
			let checkEng = /[a-zA-Z]/;
			let checkSpc = /[~!@#$%^&*()_+|<>?:{}.,\/]/;
			let checkKor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			//alert("name" + name);
			// 반복문 
			if(id == ""){
				alert("아이디를 입력하세요.");
				$j("#idInput").focus()
				return ;
			}
			if(id.length > 15){
				alert("아이디가 15자 이하여야 합니다.")
				$j("#idInput").focus()
				return ;
			}
	
			if(checkSpc.test(id)||checkKor.test(id)){
				alert("아이디에 영문자와 숫자만 들어가야 합니다.");
				$j("#idInput").focus()
				$j("#idInput").val("");
				return ;
			}		

			if(pw == ""){
				alert("비밀번호를 입력하세요.");
				$j("#pwInput").focus()
				return ;
			}
			
			if(pw.length < 6 || pw.length > 12){				
				alert("비밀번호길이를 6~12자로 해주세요");
				$j("#pwInput").focus()
				return ;
			}
			
			if(pwConfirm == ""){
				alert("비밀번호확인을 입력하세요.");
				$j("#pwConfirmInput").focus()
				return ;
			}
			if(pw != pwConfirm){
				alert("비밀번호가 일치하지 않습니다.");
				$j("#pwConfirmInput").focus()
				return ;
			}
			if(name == ""){
				alert("이름을 입력하세요.");
				$j("#nameInput").focus()
				return ;
			}
			

			if(checkEng.test(name)|| checkSpc.test(name)|| checkNum.test(name)){
				alert("이름에 한글만 포함되어야 합니다.");
				$j("#nameInput").val("");
				$j("#nameInput").focus()
				return ;
			}
		
			
			if(phoneInput1 == ""){
				alert("핸드폰 번호 앞자리를 입력하세요.");
				return ;
			}
			
			if(phoneInput2.length != 4){
				alert("핸드폰 번호 가운데자리 4자리로 입력하세요.");
				$j("#phoneInput2").focus()
				return ;
			}
			if(phoneInput3.length != 4){
				alert("핸드폰 번호 마지막자리 4자리로 입력하세요.");
				$j("#phoneInput3").focus()
				return ;
			}
			

			if(checkEng.test(phoneInput2) || checkSpc.test(phoneInput2) || checkKor.test(phoneInput2)){
				alert("전화번호에 숫자만 포함되어야 합니다.");
				$j("#phoneInput2").val("");
				$j("#phoneInput2").focus()
				return ;
			}

			if(checkEng.test(phoneInput3) || checkSpc.test(phoneInput3) || checkKor.test(phoneInput3)){
				alert("전화번호에 숫자만 포함되어야 합니다.");
				$j("#phoneInput3").val("");
				$j("#phoneInput3").focus()
				return ;
			}

			
			if(postNo !='' && !postNo.includes("-") ){
				alert("postNo에 '-'이 포함되어야 합니다.");
				$j("#noInput").focus()
				return ;
			}
			/*
			if($j("#postNo").val().length() > 8){
				alert("postNo 8글자 이하로 입력하세요.");
				return ;
			}*/
			
			if(!isChecked) {
				alert("중복체크를 진행해주세요.");
				$j("#idInput").focus()
				return ;
			}
					
			$j.ajax({
				url : "/board/joinAction.do",
			    dataType: "json",
			    type: "POST",
			    data : param,
				success: function(data, textStatus, jqXHR)
				{
					
					alert("회원가입 성공");
					
					alert("메시지:"+data.success);
					
					location.href ="/board/boardList.do";
				},
				error: function(jqXHR, textStatus, errorThrown)
				{
					alert("실패");
					//alert("textStatus" + textStatus);
					//alert("errorThrown" + errorThrown);
					alert("상태 코드:"+ jqXHR.status);
					alert("param: " + param);
				}
			});
			
		});
		
	});

	const checkNum = /[0-9]/;
	const checkEng = /[a-zA-Z]/;
	const checkSpc = /[~!@#$%^&*()_+|<>?:{}.,\/]/;
	const checkKor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	/*
	//전화번호 창 숫자만입력 가능하게
	function onlyNumber(event){
		console.log(event.type, event.target.value);
		const input = event.target.value;	
			//포함됐을시에.
			if(checkSpc.test(input) || checkEng.test(input) || checkKor.test(input)){
				 event.preventDefault();  
			}
			
			const regexp = /\D/g;//숫자가 아닌 모든 문자들 찾기 /\D/g; /[^0-9]/g
			
			event.target.value = event.target.value.replace(regexp, '');
		}

	//한글만 입력 가능하게
	function onlyKorean(event){
		console.log(event.type, event.target.value);
		const input = event.target.value;

		
		if(checkEng.test(input) || checkNum.test(input) || checkSpc.test(input)){
			event.preventDefault();  
		}
		
		const regexp = /[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g;//한글이 아닌 모든 문자를 찾기	
		event.target.value = event.target.value.replace(regexp, '');//나머지 문자는 공백으로 입력
		
		
	}
	//영어, 숫자만 입력 가능하게 
	
	function onlyEnglishNumber(event){
		console.log(event.type, event.target.value);
		const input = event.target.value;
		let cleanInput = '';
		const keyCode = event.target.value.charCodeAt(event.target.value.length - 1);
		if(checkKor.test(input) || checkSpc.test(input)){
			event.preventDefault();  
			event.target.value = input.replace(checkKor, '');
		}
		
		// 입력값을 한 글자씩 확인하면서 영어와 숫자만 남기기
	    for (let i = 0; i < input.length; i++) {
	        const char = input.substring(i, i + 1); // 한 글자씩 자르기
	        if (!checkSpc.test(char) && !checkKor.test(char)) {
	            cleanInput += char; // 영어와 숫자만 추가
	        }
	    }
		
	    const isHangul = (keyCode >= 0x1100 && keyCode <= 0x11FF) || (keyCode >= 0xAC00 && keyCode <= 0xD7A3); // 한글 자모 및 완성형
	    if (!isValidKey || isHangeul) {
		    event.preventDefault();
		    return false;
		  }
	    
		//substring 활용해보기
		const regexp = /[^a-zA-Z0-9]/g;//영여ㅓ, 숫자가 아닌 모든 문자 /[^a-zA-Z0-9]/g;
		event.target.value = cleanInput;
		event.target.value = event.target.value.replace(regexp, '');
	}*/
		
	//자동하이픈
	const autoHyphen = (target) => {
	     setTimeout(function() {
		      target.value = target.value
		     .replace(/[~!@#$%^&*()_+|<>?:{}.,\/]/g, '')
		     .replace(/[a-zA-Z]/g, '')
		     .replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '')
		     .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
		 }, 0);
	}
	//한글, 특수문자 제거 (아이디)
	function filterInput(input) {
	    setTimeout(function() {
	        input.value = input.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '')  // 한글 제거
	                                .replace(/[~!@#$%^&*()_+|<>?:{}.,\/]/g, '');  // 특수문자 제거
	    }, 0); // 입력이 완료된 후에 한글, 특수문자를 제거
	}
	//영어, 특수문자, 숫자 제거(이름)
	function filterInput2(input) {
	    setTimeout(function() {
	        input.value = input.value.replace(/[a-zA-Z]/g, '')  // 영어 제거
	                                .replace(/[~!@#$%^&*()_+|<>?:{}.,\/]/g, '')
	                                .replace(/[0-9]/g, '');  // 특수문자 제거
	    }, 0); // 입력이 완료된 후에 영어, 특수문자, 숫자 제거
	}
	//한글, 영어, 특수문자 제거 (전화번호)
	function filterInput3(input) {
	    setTimeout(function() {
	        input.value = input.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '')  // 한글 제거
	                                .replace(/[a-zA-Z]/g, '')// 영어제거
	                                .replace(/[~!@#$%^&*()_+|<>?:{}.,\/]/g, '');  // 특수문자 제거
	    }, 0); // 입력이 완료된 후에 한글, 영어, 특수문자 제거
	}
	
	
</script>
<body>
	<form class="joinForm">
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
							<td width="400">
								<label for=""></label>
								<input id="idInput" name="userId" type="text" oninput="filterInput(this)" maxlength='15' size="12" value=""> 
								<button id ="duplicateBtn">중복확인</button>
								<!--  
								<div class="small d-none" id="duplicateYes">중복된 아이디입니다.</div>
								<div class="small d-none" id="duplicateNo">사용 가능한 아이디입니다.</div>-->
							</td>
						</tr>
						<tr>
							<td width="120" align="center">
								pw
							</td>
							<td width="400">
								<label for=""></label>
								<input id ="pwInput" name="userPw" type="password" maxlength='12' size="12" value=""> 
							</td>
						</tr>
						<tr>
							<td width="120" align="center">
								pwcheck
							</td>
							<td width="400">
								<input id ="pwConfirmInput" name="" type="password" maxlength='12' size="12" value=""> 
							</td>
						</tr>
						<tr>
							<td width="120" align="center">
								name
							</td>
							<td width="400">
								<label for=""></label>
								<input id="nameInput" name="userName" type="text" oninput="filterInput2(this)" maxlength='14' size="12" value=""> 
							</td>
						</tr>
						<tr>
							<td width="120" align="center">
								phone
							</td>
							<td width="400">
							
								<select id="phoneInput1" name="userPhone1" >
									<c:forEach var="phone" items="${codePhoneList}">
									<c:choose>
										<c:when test= "${phone.codeType eq 'phone' }">
										<option value="${phone.codeName}">${phone.codeName}</option>
										</c:when>
									</c:choose>	
									</c:forEach>
								</select>
								-
								<input id="phoneInput2" name="userPhone2" type="text" oninput="filterInput3(this)" maxlength='4' size="4" value=""> 
								-
								<input id="phoneInput3"name="userPhone3" type="text" oninput="filterInput3(this)" maxlength='4' size="4" value=""> 
							</td>
						</tr>
						<tr>
							<td width="120" align="center">
								postNo
							</td>
							<td width="400">
								<input id="noInput" name="postNo" type="text" maxlength='7' oninput="autoHyphen(this)" pattern="010-[0-9]{3,4}"size="12" value=""> 
								
							</td>							
						</tr>
						<tr>
							<td width="120" align="center">
								address
							</td>
							<td width="400">
								<input id="addressInput"name="address" type="text" maxlength ='150' size="12" value=""> 
							</td>
						</tr>
						<tr>
							<td width="120" align="center">
								company
							</td>
							<td width="400">
								<input id="companyInput" name="company" type="text" maxlength = '60' size="12" value=""> 
							</td>
						</tr>
					
					</table>
				</td>	
			</tr>
			<tr>
			<td align="right">
				<button id ="joinBtn">join</button>
			</td>
		</tr>	
		</table>
	</form>

</body>
</html>