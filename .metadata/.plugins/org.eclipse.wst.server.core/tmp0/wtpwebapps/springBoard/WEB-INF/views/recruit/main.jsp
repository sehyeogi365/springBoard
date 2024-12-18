<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>mainPage</title>

<style>
	.maintitle {
         text-align: center; /* h3 태그 텍스트 가운데 정렬 */
         font-weight: bolder;
       }
     .title {
     	font-weight: bolder;
     }  
</style>
</head>
<script type="text/javascript">

	$j(document).ready(function(){
        
		$j("#birthInput").focus()
		
		$j("#educationInsert").on("click", function(event){
			
			event.preventDefault();
			
			var $frm = $j('.educateForm :input');
			var param = $frm.serialize();
			/*
			//alert(param);
			var checked = $j('#educateCheckBox').is(':checked');
			let seq = $j("#seqInput").val();
			let startPeriod = $j("#startDate").val();
			let endPeriod = $j("#endDate").val();
			let division = $j("#divisionInput").val();
			let school = $j("#schoolInput").val();
			let location = $j("#locationInput").val();
			let major = $j("#majorInput").val();
			let grade = $j("#gradeInput").val();
			
			if(checked == false){
				alert("체크박스를 선택하세요.");
				$j("#educateCheckBox").focus()
				return ;
			}
			
			if(startPeriod == ""){
				alert("재학기간 시작일을 입력하세요.");
				$j("#startDate").focus()
				return ;
			}
			if(startPeriod.length != 7){
				alert("재학기간 시작일 YYYY.MM형태로 입력하세요.");
				$j("#startDate").focus()
				return ;
			}
			if(endPeriod == ""){
				alert("재학기간 종료일을 입력하세요.");
				$j("#endDate").focus()
				return ;
			}
			if(endPeriod.length != 7){
				alert("재학기간 종료일 YYYY.MM형태로 입력하세요.");
				$j("#endDate").focus()
				return ;
			}
			if(division == ""){
				alert("구분셀렉터를 선택하세요.");
				$j("#divisionInput").focus()
				return ;
			}
			if(school == ""){
				alert("학교를 입력하세요.");
				$j("#schoolInput").focus()
				return ;
			}
			if(location == ""){
				alert("소재지를 입력하세요.");
				$j("#locationInput").focus()
				return ;
			}
			if(major == ""){
				alert("전공을 입력하세요.");
				$j("#majorInput").focus()
				return ;
			}
			if(grade == "" || grade == "0.0"){
				alert("학점을 입력하세요.");
				$j("#gradeInput").focus()
				return ;
			}
			if(grade.length < 3){
				alert("학점을 x.x 형태로 입력하세요.");
				$j("#gradeInput").focus()
				return ;
			}
				
			*/
				
		});
		
		$j("#educationDelete").off("click", function(event){
			event.preventDefault();

		    deleteEducationRow();
		});
	
		
		$j("#careerInsert").on("click", function(event){
			event.preventDefault();
			
			var checked = $j("#careerCheckBox").is(':checked');
			
			var $frm = $j('.careerForm :input');
			var param = $frm.serialize();
			
			//alert("param" + param);
				
			let seq = $j("#seqInput").val();
			/*
			let employmentDate = $j("#employmentDate").val();
			let resignDate = $j("#resignDate").val();
			let company = $j("#compInput").val();
			let dept = $j("#deptInput").val();
			let area = $j("#areaInput").val();
			
			let part = dept.split("/");
			let task = part[0]; 
			let salary = part[1] + part[2];  
				
			var slashCount = (dept.match(/\//g) || []).length;

			
			if(employmentDate == ""){
				alert("고용일을 입력해주세요.");
				$j("#employmentDate").focus()
				return ;
			}
			
			if(employmentDate != null && employmentDate.length != 7){
				alert("고용일을 YYYY.MM 형식으로 입력해주세요.");
				$j("#employmentDate").focus()
				return ;
			}
			
			if(resignDate == ""){
				alert("퇴사일을 입력해주세요.");
				$j("#resignDate").focus()
				return ;
			}
			
			if(resignDate != null && resignDate.length != 7){
				alert("퇴사일을 YYYY.MM 형식으로 입력해주세요.");
				$j("#resignDate").focus()
				return ;
			}	
			
			if(company == ""){
				alert("회사명을 입력해주세요.");
				$j("#compInput").focus()
				return ;
			}
			if(dept == ""){
				alert("부서명을 입력해주세요.");
				$j("#deptInput").focus()
				return ;
			}
			
			if(slashCount !== 2){
				alert("부서/직급/직책 형식이 안 맞습니다.");
				$j("#deptInput").focus()
				return ;
			}
			
			if(area == ""){
				alert("지역을 입력해주세요.");
				$j("#areaInput").focus()
				return ;
			}*/

		});
		
		$j("#careerDelete").off("click", function(event){
			event.preventDefault();
	
			deleteCareerRow();		
		});

		
		$j("#certificateInsert").on("click", function(event){
			event.preventDefault();
			
			var checked = $j("#certificateCheckBox").is(':checked');
		
			var $frm = $j('.certificateForm :input');
			var param = $frm.serialize();
			/*
			let ceritificate = $j("#ceritificateInput").val();
			let acquisitionDate = $j("#acquisitionDate").val();
			let issuePlace = $j("#issuePlaceInput").val();
	
			
			if(ceritificate == ""){
				alert("자격증을 입력해주세요.");
				$j("#ceritificateInput").focus()
				return ;
			}
			
			if(acquisitionDate == ""){
				alert("취득일을 입력해주세요.");
				$j("#acquisitionDate").focus()
				return ; 
			}
			
			if(acquisitionDate != null && acquisitionDate.length !=7){
				alert("취득일을 YYYY.MM형태로 입력하세요.");
				$j("#acquisitionDate").focus()
				return ;
			}
			
			if(issuePlace == ""){
				alert("발행처를 입력해주세요.");
				$j("#issuePlaceInput").focus()
				return ;
			}
			*/
		});
		
		$j("#certificateDelete").off("click", function(event){
			event.preventDefault();
			
			deleteCertificate();
	
		});
		
		$j("#saveBtn").on("click", function(event){
			event.preventDefault();
			
			var check = document.querySelector('input[name="educationCheck"]');
			
			var careerChecked = document.querySelector('input[name="careerCheck"]'); 
				
			var certificateChecked = document.querySelector('input[name="certificateCheck"]');
			
			var $frm = $j('.recruitForm :input');
			var param1 = $frm.serialize();
			
			var $frm2 = $j('.educateForm :input');
			var param2 = $frm2.serialize();
			
			var $frm3 = $j('.careerForm :input'); 
			var param3 = $frm3.serialize();
			
			var $frm4 = $j('.certificateForm :input');
			var param4 = $frm4.serialize();
			
			//여기도 체크박스 인풋이 체크되었을때만 넣기 

			let param = param1 +'&' + param2;// +'&'+ param3 +'&'+ param4;
			
			if (careerChecked && careerChecked.checked) {
				var $frm3 = $j('.careerForm :input'); 
				var param3 = $frm3.serialize();
			    param += '&' + param3;
			}

			if (certificateChecked && certificateChecked.checked) {
				var $frm4 = $j('.certificateForm :input');
				var param4 = $frm4.serialize();
			    param += '&' + param4;
			}
			console.log("Serialized param: ", param);
		 	//
		 	param+= '&submit=' + 'N';//추가내용
		 	
		 	alert("param: " + param);
			//recruit정보들 입력
			let name = $j("#nameInput").val();
			let birth = $j("#birthInput").val();
			let gender = $j("#genderInput").val();
			let phone = $j("#phoneInput").val();
			let email = $j("#emailInput").val();
			let address = $j("#addressInput").val();
			let location =$j("#locationInput").val();
			let workType = $j("#workTypeInput").val();
			
	
			if(!check.checked){
				alert("학력체크박스를 체크해주세요");
				return;	
			}
			
			
			//학력정보를 입력 유효성검사
			let startPeriod = $j("#startDate").val();
			let endPeriod = $j("#endDate").val();
			let division = $j("#divisionInput").val();
			let school = $j("#schoolInput").val();
			let schoolLocation = $j("#schoolLocationInput").val();
			let major = $j("#majorInput").val();
			let grade = $j("#gradeInput").val();
			
			//경력 정보
			let seq = $j("#seqInput").val();
			
			let employmentDate = $j("#employmentDate").val();
			let resignDate = $j("#resignDate").val();
			let company = $j("#compInput").val();
			let dept = $j("#deptInput").val();
			let area = $j("#areaInput").val();
			
			let part = dept.split("/");
			let task = part[0]; 
			let salary = part[1] + part[2];  
					
			var slashCount = (dept.match(/\//g) || []).length;
			
			//경력체크 되었을때
			if(careerChecked.checked){
			    
				if(employmentDate == ""){
					alert("고용일을 입력해주세요.");
					$j("#employmentDate").focus()
					return ;
				}
				
				if(employmentDate != null && employmentDate.length != 7){
					alert("고용일을 YYYY.MM 형식으로 입력해주세요.");
					$j("#employmentDate").focus()
					return ;
				}
				
				if(resignDate == ""){
					alert("퇴사일을 입력해주세요.");
					$j("#resignDate").focus()
					return ;
				}
				
				if(resignDate != null && resignDate.length != 7){
					alert("퇴사일을 YYYY.MM 형식으로 입력해주세요.");
					$j("#resignDate").focus()
					return ;
				}	
				
				if(company == ""){
					alert("회사명을 입력해주세요.");
					$j("#compInput").focus()
					return ;
				}
				if(dept == ""){
					alert("부서명을 입력해주세요.");
					$j("#deptInput").focus()
					return ;
				}
				
				if(slashCount !== 2){
					alert("부서/직급/직책 형식이 안 맞습니다.");
					$j("#deptInput").focus()
					return ;
				}
				
				if(area == ""){
					alert("지역을 입력해주세요.");
					$j("#areaInput").focus()
					return ;
				}
				
			}
			
			
			//자격증 정보
			let ceritificate = $j("#ceritificateInput").val();
			let acquisitionDate = $j("#acquisitionDate").val();
			let issuePlace = $j("#issuePlaceInput").val();

			//자격증 체크 되었을때
			if(certificateChecked.checked){
			    
				if(ceritificate == ""){
					alert("자격증을 입력해주세요.");
					$j("#ceritificateInput").focus()
					return ;
				}
				
				if(acquisitionDate == ""){
					alert("취득일을 입력해주세요.");
					$j("#acquisitionDate").focus()
					return ; 
				}
				
				if(acquisitionDate != null && acquisitionDate.length !=7){
					alert("취득일을 YYYY.MM형태로 입력하세요.");
					$j("#acquisitionDate").focus()
					return ;
				}
				
				if(issuePlace == ""){
					alert("발행처를 입력해주세요.");
					$j("#issuePlaceInput").focus()
					return ;
				}	
			}
			
			
			if(name == ""){
				alert("이름을 입력하세요.");
				$j("#nameInput").focus()
				return ;
			}
			if(birth == ""){
				alert("생년월일을 입력하세요.");
				$j("#birthInput").focus()
				return ;
			}
			if(birth != "" && birth.length != 10){
				alert("생일 YYYY.MM.DD 형태로 입력해주세요.");
				$j("#birthInput").focus()
				return ;
			}	
			if(gender == ""){
				alert("성별을 선택하세요.");
				$j("#genderInput").focus()
				return ;
			}
			if(phone == ""){
				alert("전화번호를 입력하세요.");
				$j("#phoneInput").focus()
				return ;
			}			
			if(email == ""){
				alert("이메일을 입력하세요.");
				$j("#emailInput").focus()
				return ;
			}
			if(address == ""){
				alert("주소를 입력하세요.");
				$j("#addressInput").focus()
				return ;
			}
			if(location == ""){
				alert("희망근무지를 입력하세요.");
				$j("#locationInput").focus()
				return ;
			}
			if(workType == ""){
				alert("근무형태를 입력하세요.");
				$j("#workTypeInput").focus()
				return ;
			}
			
			if(startPeriod == ""){
				alert("재학기간 시작일을 입력하세요.");
				$j("#startDate").focus()
				return ;
			}
			if(startPeriod.length != 7){
				alert("재학기간 시작일 YYYY.MM형태로 입력하세요.");
				$j("#startDate").focus()
				return ;
			}
			if(endPeriod == ""){
				alert("재학기간 종료일을 입력하세요.");
				$j("#endDate").focus()
				return ;
			}
			if(endPeriod.length != 7){
				alert("재학기간 종료일 YYYY.MM형태로 입력하세요.");
				$j("#endDate").focus()
				return ;
			}
			if(division == ""){
				alert("구분셀렉터를 선택하세요.");
				$j("#divisionInput").focus()
				return ;
			}
			if(school == ""){
				alert("학교를 입력하세요.");
				$j("#schoolInput").focus()
				return ;
			}
			if(schoolLocation == ""){
				alert("소재지를 입력하세요.");
				$j("#schoolLocationInput").focus()
				return ;
			}
			if(major == ""){
				alert("전공을 입력하세요.");
				$j("#majorInput").focus()
				return ;
			}
			if(grade == ""){
				alert("학점을 입력하세요.");
				$j("#gradeInput").focus()
				return ;
			}
			if(grade.length < 3){
				alert("학점을 x.x 형태로 입력하세요.");
				$j("#gradeInput").focus()
				return ;
			}
			

			$j.ajax({
				url : "/recruit/recruitInsertAction.do",
			    dataType: "json",
			    type: "POST",
			    data : param,
			    success: function(data, textStatus, jqXHR)
			    {
					alert("작성완료");
					
					alert("메세지:"+data.success);
					
					location.reload();
					//여기 수정해보기 상수가 아닌 pageNo response로 받아와야 하나? 
					
			    },
			    error: function (jqXHR, textStatus, errorThrown)
			    {
			    	alert("실패");
			    	alert("param" + param);
			    	alert("textStatus" + textStatus);
			    }
			});
			
		});
		
		$j("#submitBtn").on("click", function(event){
			event.preventDefault();
					
			var $frm = $j('.recruitForm :input');
			var param1 = $frm.serialize();
			
			var $frm2 = $j('.educateForm :input');
			var param2 = $frm2.serialize();
			
			//var $frm3 = $j('.careerForm :input');
			//var param3 = $frm3.serialize();
			
			//var $frm4 = $j('.certificateForm :input');
			//var param4 = $frm4.serialize();
			 	
		 	//let param = param1 +'&' + param2 +'&'+ param3 +'&'+ param4;
		 	
			let param = param1 +'&' + param2;// +'&'+ param3 +'&'+ param4;
			
			if (careerChecked && careerChecked.checked) {
				var $frm3 = $j('.careerForm :input'); 
				var param3 = $frm3.serialize();
			    param += '&' + param3;
			}

			if (certificateChecked && certificateChecked.checked) {
				var $frm4 = $j('.certificateForm :input');
				var param4 = $frm4.serialize();
			    param += '&' + param4;
			}
		 	param+= '&submit=' + 'Y';//추가내용
			//recruit정보들 입력
			let name = $j("#nameInput").val();
			let birth = $j("#birthInput").val();
			let gender = $j("#genderInput").val();
			let phone = $j("#phoneInput").val();
			let email = $j("#emailInput").val();
			let address = $j("#addressInput").val();
			let location =$j("#locationInput").val();
			let workType = $j("#workTypeInput").val();
			
			var check = document.querySelector('input[name="educationCheck"]');
			
			var careerChecked = document.querySelector('input[name="careerCheck"]'); 
				
			var certificateChecked = document.querySelector('input[name="certificateCheck"]'); 
			
			if(!check.checked){
				alert("학력체크박스를 체크해주세요");
				return;	
			}
			
			
			//학력정보를 입력 유효성검사
			let startPeriod = $j("#startDate").val();
			let endPeriod = $j("#endDate").val();
			let division = $j("#divisionInput").val();
			let school = $j("#schoolInput").val();
			let schoolLocation = $j("#schoolLocationInput").val();
			let major = $j("#majorInput").val();
			let grade = $j("#gradeInput").val();
			
			//경력 정보
			let seq = $j("#seqInput").val();
			
			let employmentDate = $j("#employmentDate").val();
			let resignDate = $j("#resignDate").val();
			let company = $j("#compInput").val();
			let dept = $j("#deptInput").val();
			let area = $j("#areaInput").val();
			
			let part = dept.split("/");
			let task = part[0]; 
			let salary = part[1] + part[2];  
					
			var slashCount = (dept.match(/\//g) || []).length;
			
			
			
			//경력체크 되었을때
			if(careerChecked.checked){
				if(employmentDate == ""){
					alert("고용일을 입력해주세요.");
					$j("#employmentDate").focus()
					return ;
				}
				
				if(employmentDate != null && employmentDate.length != 7){
					alert("고용일을 YYYY.MM 형식으로 입력해주세요.");
					$j("#employmentDate").focus()
					return ;
				}
				
				if(resignDate == ""){
					alert("퇴사일을 입력해주세요.");
					$j("#resignDate").focus()
					return ;
				}
				
				if(resignDate != null && resignDate.length != 7){
					alert("퇴사일을 YYYY.MM 형식으로 입력해주세요.");
					$j("#resignDate").focus()
					return ;
				}	
				
				if(company == ""){
					alert("회사명을 입력해주세요.");
					$j("#compInput").focus()
					return ;
				}
				if(dept == ""){
					alert("부서명을 입력해주세요.");
					$j("#deptInput").focus()
					return ;
				}
				
				if(slashCount !== 2){
					alert("부서/직급/직책 형식이 안 맞습니다.");
					$j("#deptInput").focus()
					return ;
				}
				
				if(area == ""){
					alert("지역을 입력해주세요.");
					$j("#areaInput").focus()
					return ;
				}
				
			}
			
			
			//자격증 정보
			let ceritificate = $j("#ceritificateInput").val();
			let acquisitionDate = $j("#acquisitionDate").val();
			let issuePlace = $j("#issuePlaceInput").val();

			//자격증 체크 되었을때
			if(certificateChecked.checked){
				if(ceritificate == ""){
					alert("자격증을 입력해주세요.");
					$j("#ceritificateInput").focus()
					return ;
				}
				
				if(acquisitionDate == ""){
					alert("취득일을 입력해주세요.");
					$j("#acquisitionDate").focus()
					return ; 
				}
				
				if(acquisitionDate != null && acquisitionDate.length !=7){
					alert("취득일을 YYYY.MM형태로 입력하세요.");
					$j("#acquisitionDate").focus()
					return ;
				}
				
				if(issuePlace == ""){
					alert("발행처를 입력해주세요.");
					$j("#issuePlaceInput").focus()
					return ;
				}	
			}
			
			
			if(name == ""){
				alert("이름을 입력하세요.");
				$j("#nameInput").focus()
				return ;
			}
			if(birth == ""){
				alert("생년월일을 입력하세요.");
				$j("#birthInput").focus()
				return ;
			}
			if(birth != "" && birth.length != 10){
				alert("생일 YYYY.MM.DD 형태로 입력해주세요.");
				$j("#birthInput").focus()
				return ;
			}	
			if(gender == ""){
				alert("성별을 선택하세요.");
				$j("#genderInput").focus()
				return ;
			}
			if(phone == ""){
				alert("전화번호를 입력하세요.");
				$j("#phoneInput").focus()
				return ;
			}			
			if(email == ""){
				alert("이메일을 입력하세요.");
				$j("#emailInput").focus()
				return ;
			}
			if(address == ""){
				alert("주소를 입력하세요.");
				$j("#addressInput").focus()
				return ;
			}
			if(location == ""){
				alert("희망근무지를 입력하세요.");
				$j("#locationInput").focus()
				return ;
			}
			if(workType == ""){
				alert("근무형태를 입력하세요.");
				$j("#workTypeInput").focus()
				return ;
			}
			
			if(startPeriod == ""){
				alert("재학기간 시작일을 입력하세요.");
				$j("#startDate").focus()
				return ;
			}
			if(startPeriod.length != 7){
				alert("재학기간 시작일 YYYY.MM형태로 입력하세요.");
				$j("#startDate").focus()
				return ;
			}
			if(endPeriod == ""){
				alert("재학기간 종료일을 입력하세요.");
				$j("#endDate").focus()
				return ;
			}
			if(endPeriod.length != 7){
				alert("재학기간 종료일 YYYY.MM형태로 입력하세요.");
				$j("#endDate").focus()
				return ;
			}
			if(division == ""){
				alert("구분셀렉터를 선택하세요.");
				$j("#divisionInput").focus()
				return ;
			}
			if(school == ""){
				alert("학교를 입력하세요.");
				$j("#schoolInput").focus()
				return ;
			}
			if(schoolLocation == ""){
				alert("소재지를 입력하세요.");
				$j("#schoolLocationInput").focus()
				return ;
			}
			if(major == ""){
				alert("전공을 입력하세요.");
				$j("#majorInput").focus()
				return ;
			}
			if(grade == ""){
				alert("학점을 입력하세요.");
				$j("#gradeInput").focus()
				return ;
			}
			if(grade.length < 3){
				alert("학점을 x.x 형태로 입력하세요.");
				$j("#gradeInput").focus()
				return ;
			}
			

			$j.ajax({
				url : "/recruit/recruitInsertAction.do",
			    dataType: "json",
			    type: "POST",
			    data : param,
			    success: function(data, textStatus, jqXHR)
			    {
					alert("작성완료");
					
					alert("메세지:"+data.success);
					
					location.reload();
					//여기 수정해보기 상수가 아닌 pageNo response로 받아와야 하나? 
					
			    },
			    error: function (jqXHR, textStatus, errorThrown)
			    {
			    	alert("실패");
			    	alert("param" + param);
			    	alert("textStatus" + textStatus);
			    }
			});
			
		});
		
		
	});
	//자동점찍기 연월 YYYY.MM
	const autoDot = (target) => {
	     setTimeout(function() {
		      target.value = target.value
		     .replace(/[~!@#$%^&*()_+|<>?:{}.,\/]/g, '')
		     .replace(/[a-zA-Z]/g, '')
		     .replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '')
		     .replace(/^(\d{0,4})(\d{0,2})$/g, "$1.$2").replace(/(\-{1,2})$/g, "");//2014.02 형태로 .찍기
		 }, 0);
	}
	//자동점찍기 학점
	const autoDot2 = (target) => {
	     setTimeout(function() {
	    	  let value = target.value
		      target.value = target.value
		     .replace(/[~!@#$%^&*()_+|<>?:{}.,\/]/g, '')
		     .replace(/[a-zA-Z]/g, '')
		     .replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '')
		     .replace(/^(\d{0,1})(\d{0,2})$/g, "$1.$2").replace(/(\-{1,2})$/g, "");//3.0 형태로 .찍기
		  	 // 숫자가 있을 경우에만 소수점 처리
	      	 // 입력 값이 비어 있을 경우
		     
	     
	     }, 0);
	}
	
	//자동점찍기 생년월일 YYYY.MM.DD
	const autoDot3 = (target) => {
	     setTimeout(function() {
		      target.value = target.value
		     .replace(/[~!@#$%^&*()_+|<>?:{}.,\/]/g, '')
		     .replace(/[a-zA-Z]/g, '')
		     .replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '')
		     .replace(/^(\d{0,4})(\d{0,2})(\d{0,2})$/g, "$1.$2.$3").replace(/(\-{1,2})$/g, "");//2014.02.01 형태로 .찍기
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
	//특수문자, 숫자 제거 (자격증)
	function filterInput4(input) {
	    setTimeout(function() {
	        input.value = input.value.replace(/[~!@#$%^&*()_+|<>?:{}.,\/]/g, '')
									 .replace(/[0-9]/g, '');  // 숫자 제거
	    }, 0); // 입력이 완료된 후에 숫자 특수문자 제거
	}
	//영어 제거(부서/직급/직책)
	function filterInput5(input) {
	    setTimeout(function() {
	        input.value = input.value.replace(/[a-zA-Z]/g, '')// 영어제거
	        		
	    }, 0); // 입력이 완료된 후에 숫자 특수문자 제거
	}

	
	
	//테이블 행 추가/삭제
	
	function addEducationRow() {
	  // table element 찾기
	  const table = document.getElementById('educationTable');
	  
	  // 새 행(Row) 추가
	  const newRow = table.insertRow();
	  
	  // 새 행(Row)에 Cell 추가
	  const newCell1 = newRow.insertCell(0);
	  const newCell2 = newRow.insertCell(1);
	  const newCell3 = newRow.insertCell(2);
	  const newCell4 = newRow.insertCell(3);
	  const newCell5 = newRow.insertCell(4);
	  const newCell6 = newRow.insertCell(5);
	  //자바 스크립트에서 동적으로 요소 만들기 
	  const input1 = document.createElement('input');
	  
	  input1.setAttribute('name', 'educationCheck');
	  input1.setAttribute('type', 'checkbox');
	  
	  const input2 = document.createElement('input');
	  
	  input2.setAttribute('id', 'startDate');
	  input2.setAttribute('name', 'admissionDate');
	  input2.setAttribute('type', 'text');
	  input2.setAttribute('maxlength', 7);
	  input2.setAttribute('oninput', 'autoDot(this)');
	  input2.setAttribute('value', ' '); // 초기 값 설정, 필요하면 값 입력 
	  //input2.value = ''; 
	  
	  const input3 = document.createElement('input');
	  
	  input3.setAttribute('id', 'endDate');
	  input3.setAttribute('name', 'graduateDate');
	  input3.setAttribute('type', 'text');
	  input3.setAttribute('maxlength', 7);
	  input3.setAttribute('oninput', 'autoDot(this)');
	  input3.setAttribute('value', ' '); //
	  //input3.value = ''; 
	// 두 번째 셀에 select 요소 추가
	  const select = document.createElement('select');
	  select.setAttribute('id', 'divisionInput');
	  select.setAttribute('name', 'division');
	  select.setAttribute('style', 'width: 50px;');
	  
	  // 옵션 추가 함수
	  function addOption(value, text, isSelected = false) {
	    const option = document.createElement('option');
	    option.value = value;
	    option.text = text;
	    if (isSelected) {
	      option.selected = true; // 기본 선택값 설정
	    }
	    select.appendChild(option);
	  }

	  // 옵션 동적으로 추가 (educate.division에 따른 값 설정)
	  //const educateDivision = '재학'; // 예시 값, 실제 데이터에 따라 설정
	  //addOption(educateDivision, educateDivision, true); // 첫 번째 옵션, 기본 선택값
	  addOption('재학', '재학');
	  addOption('중퇴', '중퇴');
	  addOption('졸업', '졸업');
	  
	  //학교 소재지 자바 스크립트에서 동적으로 요소 만들기 
	  const input4 = document.createElement('input');
	  
	  input4.setAttribute('id', 'schoolInput');
	  input4.setAttribute('name', 'schoolName');
	  input4.setAttribute('type', 'text');
	  input4.setAttribute('maxlength', 7);
	  input4.setAttribute('oninput', 'filterInput2(this)');
	  input4.setAttribute('value', ' '); //템플릿 리터럴 문법에서 el태그 구문은 백틱(`)으로 감싸진 문자열 안에서만 동작 
	  //input4.value = ''; 	
	  const select2 = document.createElement('select');
	  select2.setAttribute('id', 'schoolLocationInput');
	  select2.setAttribute('name', 'schoolLocation');
	  select2.setAttribute('style', 'width: 70px;');
	  
	  // 옵션 추가 함수
	  function addOption2(value, text, isSelected = false) {
	    const option = document.createElement('option');
	    option.value = value;
	    option.text = text;
	    if (isSelected) {
	      option.selected = true; // 기본 선택값 설정
	    }
	    select2.appendChild(option);
	  }

	  // 옵션 동적으로 추가 (educate.division에 따른 값 설정)
	  //const educateLocation = '서울'; // 예시 값, 실제 데이터에 따라 설정
	  // 첫 번째 옵션, 기본 선택값
	  //addOption2(`educate.location`, `educate.location`); // 
	  addOption2('서울', '서울');
	  addOption2('인천', '인천');
	  addOption2('강원도', '강원도');
	  addOption2('충청도', '충청도');
	  addOption2('전라도', '전라도');
	  addOption2('경상도', '경상도');
	  addOption2('제주도', '제주도');
	  
	  //전공
	  const input5 = document.createElement('input');
	  input5.setAttribute('id', 'majorInput');
	  input5.setAttribute('name', 'major');
	  input5.setAttribute('type', 'text');
	  input5.setAttribute('maxlength', 7);
	  input5.setAttribute('oninput', 'filterInput2(this)');
	  input5.setAttribute('style', 'width: 95%;');
	  input5.setAttribute('value', ' ');//
	  //input5.value = ''; 
	  //학점
	  const input6 = document.createElement('input');
	  input6.setAttribute('id', 'gradeInput');
	  input6.setAttribute('name', 'grade');
	  input6.setAttribute('type', 'text');
	  input6.setAttribute('maxlength', 4);
	  input6.setAttribute('style', 'width: 95%');
	  input6.setAttribute('oninput', 'autoDot2(this)');
	  input6.setAttribute('value', ' ');
	  //input6.value = ''; 	
	  // Cell에 텍스트 추가
	  //체크박스
	  newCell1.appendChild(input1);
	  input1.value ='';
	  //근무기간
	  newCell2.appendChild(input2);
	  newCell2.appendChild(document.createElement('br'));
	  newCell2.appendChild(document.createTextNode("~"));
	  newCell2.appendChild(document.createElement('br'));
	  newCell2.appendChild(input3);
	  //구분
	  newCell3.appendChild(select);
	  //학교명(소재지)
	  newCell4.appendChild(input4);
	  newCell4.appendChild(select2);
	  //전공
	  newCell5.appendChild(input5);
	  //학점
	  newCell6.appendChild(input6);

	}
	
	function deleteEducationRow(rownum) {

      // table element 찾기
      
      const table = document.getElementById('educationTable');
      
      const checkboxes = table.querySelectorAll('input[name="educationCheck"]:checked'); // 체크된 체크박스 찾기

      // 체크된 체크박스가 있는 경우에만 삭제
      if (checkboxes.length === 0) {
          alert("삭제할 항목을 선택하세요.");
          return;
      }
      
      var result = confirm("삭제 하시겠습니까?");
		
		if(!result){
			return ;
		}
		
      checkboxes.forEach(checkbox => {
          const row = checkbox.closest('tr'); // 체크박스가 속한 행(Row)을 찾기
          if (row) {
              table.deleteRow(row.rowIndex); // 행 삭제
          }
      });

    }
	
	function addCareerRow() {
	  // table element 찾기
	  const table = document.getElementById('careerTable');
	  
	  // 새 행(Row) 추가
	  const newRow = table.insertRow();
	  
	  // 새 행(Row)에 Cell 추가
	  const newCell1 = newRow.insertCell(0);
	  const newCell2 = newRow.insertCell(1);
	  const newCell3 = newRow.insertCell(2);
	  const newCell4 = newRow.insertCell(3);
	  const newCell5 = newRow.insertCell(4);
	  
	  //자바 스크립트에서 동적으로 요소 만들기 
	  const input1 = document.createElement('input');
	  
	  input1.setAttribute('name', 'careerCheck');
	  input1.setAttribute('type', 'checkbox');
	  
	  const input2 = document.createElement('input'); 
	  
	  input2.setAttribute('id', 'employmentDate');
	  input2.setAttribute('name', 'startPeriod');
	  input2.setAttribute('type', 'text');
	  input2.setAttribute('maxlength', 7);
	  input2.setAttribute('oninput', 'autoDot(this)');
	  input2.setAttribute('value', ' ');
 
	  const input3 = document.createElement('input'); 
	  
	  input3.setAttribute('id', 'resignDate');
	  input3.setAttribute('name', 'endPeriod');
	  input3.setAttribute('type', 'text');
	  input3.setAttribute('maxlength', 7);
	  input3.setAttribute('oninput', 'autoDot(this)');
	  input3.setAttribute('value', ' ');

	  const input4 = document.createElement('input'); 
	  
	  input4.setAttribute('id', 'compInput');
	  input4.setAttribute('name', 'compName');
	  input4.setAttribute('type', 'text');
	  input4.setAttribute('style', 'width: 95%');
	  input4.setAttribute('maxlength', 254);
	  input4.setAttribute('size', 12);
	  input4.setAttribute('oninput', 'filterInput2(this)');
	  input4.setAttribute('value', ' ');

	  const input5 = document.createElement('input'); 
	  
	  input5.setAttribute('id', 'deptInput');
	  input5.setAttribute('name', 'task');
	  input5.setAttribute('type', 'text');
	  input5.setAttribute('style', 'width: 95%');
	  input5.setAttribute('maxlength', 254);
	  input5.setAttribute('size', 12);
	  input5.setAttribute('oninput', 'filterInput5(this)');
	  input5.setAttribute('value', ' ');
	  
	  const input6 = document.createElement('input'); 
	  
	  input6.setAttribute('id', 'areaInput');
	  input6.setAttribute('name', 'location');
	  input6.setAttribute('type', 'text');
	  input6.setAttribute('style', 'width: 95%');
	  input6.setAttribute('maxlength', 254);
	  input6.setAttribute('size', 12);
	  input6.setAttribute('oninput', 'filterInput2(this)');
	  input6.setAttribute('value', ' ');
	  // Cell에 텍스트 추가
	  
	  newCell1.appendChild(input1);//
	  
	  newCell2.appendChild(input2);//근무기간
	  newCell2.appendChild(document.createTextNode("~"));
	  newCell2.appendChild(document.createElement('br'));
	  newCell2.appendChild(input3);
	  
	  newCell3.appendChild(input4);//회사명
	  newCell4.appendChild(input5);//부서직급직책
	  newCell5.appendChild(input6);//지역
	}
		
	function deleteCareerRow(rownum) {

      // table element 찾기
      //const table = document.getElementById('careerTable');
      
      // 행(Row) 삭제
      //const newRow = table.deleteRow(rownum);
      
        const table = document.getElementById('careerTable');
		
		const checkboxes = table.querySelectorAll('input[name="careerCheck"]:checked'); // 체크된 체크박스 찾기
		
	      // 체크된 체크박스가 있는 경우에만 삭제
	    if (checkboxes.length === 0) {
	        alert("삭제할 항목을 선택하세요.");
	        return;
	    }
		
		var result = confirm("삭제 하시겠습니까?");
		
		if(!result){
			return ;
		}

		checkboxes.forEach(checkbox => {
            const row = checkbox.closest('tr'); // 체크박스가 속한 행(Row)을 찾기
            if (row) {
                table.deleteRow(row.rowIndex); // 행 삭제
            }
        });
    }
	
	function addCertificateRow() {
		  // table element 찾기
		  const table = document.getElementById('certificateTable');
		  
		  // 새 행(Row) 추가
		  const newRow = table.insertRow();
		  
		  // 새 행(Row)에 Cell 추가
		  const newCell1 = newRow.insertCell(0);
		  const newCell2 = newRow.insertCell(1);
		  const newCell3 = newRow.insertCell(2);
		  const newCell4 = newRow.insertCell(3);
		  
		  // input 요소 생성
		  //자바 스크립트에서 동적으로 요소 만들기 
		  const input1 = document.createElement('input');
		  
		  input1.setAttribute('name', 'certificateCheck');
		  input1.setAttribute('type', 'checkbox');
		  
		  const input2 = document.createElement('input');
		  input2.setAttribute('id', 'ceritificateInput');
		  input2.setAttribute('name', 'qualifiName');
		  input2.setAttribute('type', 'text');
		  input2.setAttribute('maxlength', 254);
		  input2.setAttribute('size', 20);
		  input2.setAttribute('oninput', 'filterInput4(this)');
		  input2.setAttribute('value', ' ');
		  
		  const input3 = document.createElement('input');
		  input3.setAttribute('id', 'acquisitionDate');
		  input3.setAttribute('name', 'acquDate');
		  input3.setAttribute('type', 'text');
		  input3.setAttribute('maxlength', 7);
		  input2.setAttribute('size', 20);
		  input3.setAttribute('oninput', 'autoDot(this)');
		  input3.setAttribute('value', ' ');
		  
		  const input4 = document.createElement('input');
		  input4.setAttribute('id', 'issuePlaceInput');
		  input4.setAttribute('name', 'organizeName');
		  input4.setAttribute('type', 'text');
		  input4.setAttribute('maxlength', 254);
		  input4.setAttribute('size', 20);
		  input4.setAttribute('oninput', 'filterInput4(this)');
		  input4.setAttribute('value', ' ');
		  
		  // Cell에 텍스트 추가
		  newCell1.appendChild(input1);
		  newCell2.appendChild(input2);
		  newCell3.appendChild(input3);
		  newCell4.appendChild(input4);

		}
			
		function deleteCertificateRow(rownum) {

	      // table element 찾기

	      const table = document.getElementById('certificateTable');   

	      // 행(Row) 삭제

	      //const newRow = table.deleteRow(rownum);
	      
	      //const table = document.getElementById('certificateTable');
			
		  const checkboxes = table.querySelectorAll('input[name="certificateCheck"]:checked'); // 체크된 체크박스 찾기
			
		      // 체크된 체크박스가 있는 경우에만 삭제
		    if (checkboxes.length === 0) {
		        alert("삭제할 항목을 선택하세요.");
		        return;
		    }
			
			var result = confirm("삭제 하시겠습니까?");
			
			if (!result) {
		        return; // 사용자가 취소를 선택한 경우 함수 종료
		    }

			checkboxes.forEach(checkbox => {
	            const row = checkbox.closest('tr'); // 체크박스가 속한 행(Row)을 찾기
	            if (row) {
	                table.deleteRow(row.rowIndex); // 행 삭제
	            }
	        });

	    }
		/*
		function calculateDifference() {
		    // 입력된 날짜 가져오기startDate
		    const startDateValue = $j("#startDate").val();
		    const endDateValue = $j("#endDate").val();
		    console.log("startDateValue" + startDateValue);
			console.log("endDateValue" + endDateValue);
			
			var startYear = parseInt(startDateValue.substr(0,4));
			var endYear = parseInt(endDateValue.substr(0,4));
			
			var diffInDays = endYear - startYear;
			console.log("diffInDays" + diffInDays);
			
		    $j("#enrollmentPeriod").text(diffInDays+"년");
		}*/
	
	
</script>
<body>

<h3 class="maintitle">입사 지원서</h3>



	<table align="center" style="width: 70%;" border = "1">
		<tr><td>

		<table id="wholeTable" align="center" style="width: 100%;">
	
		
			<tr style="border:none;">
				<td style="border:none;">
				<form class="recruitForm">
				<table id="infoTable" align="center" style="width: 60%;" border = "1">
					<tr id="tableHeader">
						<th width="40" align="center">
							이름
						</th>
						<td width="120" align="center">
							<input id="nameInput" name="name" type="text" maxlength='20' style="width: 95%;" oninput="filterInput2(this)" value="${name}">
						</td>
						<th width="40" align="center">
							생년월일
						</th>
						<td width="120" align="center">
							<input id="birthInput" name="birth" type="text" maxlength='10' style="width: 95%;" oninput="autoDot3(this)" value="${recruit.birth }">
						</td>
					</tr>
					<tr id="">
						<th width="40" align="center">
							성별
						</th>
						<td width="120">
							<select id="genderInput" name ="gender" style="width: 50px;">
								<option value="남자" ${recruit.gender == '남자' ? 'selected' : ''}>남자</option>
    							<option value="여자" ${recruit.gender == '여자' ? 'selected' : ''}>여자</option>
							</select>
						</td>
						<th width="40" align="center">
							연락처
						</th>
						<td width="120" align="center">
							<input id="phoneInput" name="phone" type="text" maxlength='11' style="width: 95%;" oninput="filterInput3(this)" value="${phone}">
						</td>
					</tr>
					<tr id="">
						<th width="40" align="center">
							email
						</th>
						<td width="120" align="center">
							<input id="emailInput" name="email" type="text" maxlength='254' style="width: 95%;" value="${recruit.email }">
						</td>
						<th width="40" align="center">
							주소
						</th>
						<td width="120" align="center">
							<input id="addressInput" name="addr" type="text" maxlength='254' style="width: 95%;" value="${recruit.addr }">
						</td>
					</tr>
					<tr id="">
						<th width="60" align="center">
							희망근무지
						</th>
						<td width="120" >
							<select id="locationInput" name="hopeLocation" style="width: 70px;">
								<option value="서울" ${recruit.hopeLocation == '서울' ? 'selected' : ''}>서울</option>
							    <option value="인천" ${recruit.hopeLocation == '인천' ? 'selected' : ''}>인천</option>
							    <option value="강원도" ${recruit.hopeLocation == '강원도' ? 'selected' : ''}>강원도</option>
							    <option value="충청도" ${recruit.hopeLocation == '충청도' ? 'selected' : ''}>충청도</option>
							    <option value="전라도" ${recruit.hopeLocation == '전라도' ? 'selected' : ''}>전라도</option>
							    <option value="경상도" ${recruit.hopeLocation == '경상도' ? 'selected' : ''}>경상도</option>
							    <option value="제주도" ${recruit.hopeLocation == '제주도' ? 'selected' : ''}>제주도</option>
							</select>
						</td>
						<th width="60" align="center" style="bold">
							근무형태
						</th>
						<td width="120">
							<select id="workTypeInput" name="workType" style="width: 70px;">
								<option value="" selected>선택하세요</option>
							    <option value="계약직" ${recruit.workType == '계약직' ? 'selected' : ''}>계약직</option>
							    <option value="정규직" ${recruit.workType == '정규직' ? 'selected' : ''}>정규직</option>
							</select>
						</td>
					</tr>
				
				</table>
				</form>
			</td>
		</tr>
		<c:choose>
			<c:when test ="${recruit.submit eq 'Y' }">
			<tr style="">
			<td style="">
				<table id="infoTable2" style="width: 80%;" align="center"  border = "1">
					<tr id="tableHeader">
						<th width="120" align="center">
							학력사항
						</th>
						<th width="120" align="center">
							경력사항
						</th>
						<th width="120" align="center">
							희망연봉
						</th>
						<th width="120" align="center">
							희망근무지/근무형태
						</th>
					</tr>
					<tr id="">
						<td width="" >
							대학교( 
							<c:forEach var="educate" items="${educateList }">
								<c:choose>
								<c:when test= "${educate.admissionDate != null }">
								<c:set var="admissionDate" value="${educate.admissionDate}" />
				                <c:set var="graduateDate" value="${educate.graduateDate}" />
				
				                <c:set var="admissionYear" value="${fn:substring(admissionDate, 0, 4)}" />
				                <c:set var="admissionMonth" value="${fn:substring(admissionDate, 5, 7)}" />
				                <c:set var="graduateYear" value="${fn:substring(graduateDate, 0, 4)}" />
				                <c:set var="graduateMonth" value="${fn:substring(graduateDate, 5, 7)}" />
				
				                <c:set var="yearDiff" value="${graduateYear - admissionYear}" />
				                <c:set var="monthDiff" value="${graduateMonth - admissionMonth}" />
				
				                <c:set var="totalYears" value="${yearDiff + (monthDiff >= 0 ? 0 : -1)}" />
				                <c:set var="totalMonths" value="${(monthDiff >= 0 ? monthDiff : (12 + monthDiff))}" />
							
								<c:choose>
									<c:when test ="${totalYears >=4}">
										4년
									</c:when>
									<c:when test ="${totalYears >=3}">
										3년
									</c:when>
									<c:when test ="${totalYears >=2}">
										2년
									</c:when>
								</c:choose>
									
								</c:when>
							</c:choose>
							</c:forEach>
							) 
							<c:forEach var="educate" items="${educateList }">
							${educate.division }
							</c:forEach>
						</td>
						<td width="">
							경력 
							<c:forEach var="career" items="${careerList }">
							<c:choose>
								<c:when test= "${career.startPeriod != null }">
								<c:set var="startPeriod" value="${career.startPeriod}" />
				                <c:set var="endPeriod" value="${career.endPeriod}" />
				
				                <c:set var="startPeriodYear" value="${fn:substring(startPeriod, 0, 4)}" />
				                <c:set var="startPeriodMonth" value="${fn:substring(startPeriod, 5, 7)}" />
				                <c:set var="endPeriodYear" value="${fn:substring(endPeriod, 0, 4)}" />
				                <c:set var="endPeriodMonth" value="${fn:substring(endPeriod, 5, 7)}" />
				
				                <c:set var="yearDiff" value="${endPeriodYear - startPeriodYear}" />
				                <c:set var="monthDiff" value="${endPeriodMonth - startPeriodMonth}" />
				
				                <c:set var="totalYears" value="${yearDiff + (monthDiff >= 0 ? 0 : -1)}" />
				                <c:set var="totalMonths" value="${(monthDiff >= 0 ? monthDiff : (12 + monthDiff))}" />
				
									${totalYears } 년 ${totalMonths } 개월
							
								</c:when>
							</c:choose>
							</c:forEach>
						</td>
						<td width="">
							회사내규에 따름
						</td>
						<td width="">
							${recruit.hopeLocation }전체 <br>
							${recruit.workType }
						</td>
					</tr>				
					
				</table>	
			</td>
			</tr>
			</c:when>
			<c:otherwise>
			</c:otherwise>
		</c:choose>
		
		<tr style="border:none;">
			<td style="border:none;">
			<h3 class="title">학력</h3>
			</td>
		</tr>	
		<tr style="border:none;">
			<td style="border:none;">
			<div style="text-align: right;"><!-- 제출시 버튼이 안보이게하던, 클릭을 막던 하자 -->
				<c:choose> 
				<c:when test="${recruit.submit eq 'Y'}">
					<button id="">추가</button><!-- 행추가 -->
					<button id="">삭제</button><!-- 행삭제 -->
				</c:when>	
				<c:otherwise>
					<button type="button" id="" onclick='addEducationRow()'>추가</button><!-- 행추가 -->
					<button type="button" id=""  onclick='deleteEducationRow(-1)'>삭제</button><!-- 행삭제 -->
				</c:otherwise>
				</c:choose>		
			</div>
			</td>
		</tr>
			<br>
			
		<tr style="border:none;">
			<td style="border:none;">
			<form class="educateForm">
			<table id="educationTable" style="width: 80%;" align="center" border = "1">
				<tr id="tableHeader">
					<th width="10" align="center" style="">
						
					</th>
					<th width="100" align="center" style="">
						재학기간
					</th>
					<th width="20" align="center">
						구분
					</th>
					<th width="100" align="center">
						학교명(소재지)
					</th>
					<th width="100" align="center">
						전공
					</th>
					<th width="100" align="center">
						학점
					</th>
				</tr>
				<c:forEach var="educate" items="${educateList}">
				<tr id="">
					<td width="" >
						<input name="educationCheck" type="checkbox"/>
					</td>
					<td width="" >
						<input id="startDate" type="text" name="admissionDate" maxlength='7' oninput="autoDot(this)" value="${educate.admissionDate }"/><br>
						~<br>
						<input id="endDate"type="text" name="graduateDate" maxlength='7' oninput="autoDot(this)" value="${educate.graduateDate }"/>
					</td>
					<td width="" >
						<select id="divisionInput" name="division" style="width: 50px;">
							<option value="재학" ${educate.division == '재학' ? 'selected' : ''}>재학</option>
						    <option value="중퇴" ${educate.division == '중퇴' ? 'selected' : ''}>중퇴</option>
						    <option value="졸업" ${educate.division == '졸업' ? 'selected' : ''}>졸업</option>
						</select>
					</td>
					<td width="">
						<input id="schoolInput" name="schoolName" type="text" oninput="filterInput2(this)" value="${educate.schoolName }"/><br>
						<select id="schoolLocationInput" name ="schoolLocation" style="width: 70px;">
							<option value="서울" ${educate.schoolLocation == '서울' ? 'selected' : ''}>서울</option>
						    <option value="인천" ${educate.schoolLocation == '인천' ? 'selected' : ''}>인천</option>
						    <option value="강원도" ${educate.schoolLocation == '강원도' ? 'selected' : ''}>강원도</option>
						    <option value="충청도" ${educate.schoolLocation == '충청도' ? 'selected' : ''}>충청도</option>
						    <option value="전라도" ${educate.schoolLocation == '전라도' ? 'selected' : ''}>전라도</option>
						    <option value="경상도" ${educate.schoolLocation == '경상도' ? 'selected' : ''}>경상도</option>
						    <option value="제주도" ${educate.schoolLocation == '제주도' ? 'selected' : ''}>제주도</option>
						</select>
					</td>
					<td width="">
						<input id="majorInput" name="major" type="text" oninput="filterInput2(this)" style="width: 95%;" value="${educate.major }"/>
					</td>
					<td width="">
						<input id="gradeInput" name="grade" type="text" oninput="autoDot2(this)" maxlength='4' style="width: 95%;" value="${educate.grade }"/>
						<input id="seqInput"  name="seq" type="hidden"value="${recruit.seq}">
						
					</td>
					
				</tr>
				</c:forEach>
			</table>
			</form>
			</td>
		</tr>
			
		<tr style="border:none;"><td style="border:none;">
		<h3 class="title">경력</h3>
		</td></tr>	
		<tr style="border:none;"><td style="border:none;">
		<div style="text-align: right;"><!-- 제출시 버튼이 안보이게하던, 클릭을 막던 하자 -->
			<c:choose> 
				<c:when test="${recruit.submit eq 'Y'}">
					<button id="">추가</button><!-- 행추가 -->
					<button id="">삭제</button><!-- 행추가 -->
				</c:when>	
				<c:otherwise>
					<button id="" onclick='addCareerRow()'>추가</button><!-- 행추가 -->
					<button id="" onclick='deleteCareerRow(-1)'>삭제</button><!-- 행삭제 -->
				</c:otherwise>
			</c:choose>			
		</div>
		<br>
		</td></tr>
		<tr style="border:none;"><td style="border:none;">
		<form class="careerForm">
		<table id="careerTable" style="width: 80%;" align="center" border = "1">
				<tr id="tableHeader">
					<th width="10" align="center" style="">
						
					</th>
					<th width="100" align="center" style="">
						근무기간
					</th>
					<th width="90" align="center">
						회사명
					</th>
					<th width="90" align="center">
						부서/직급/직책
					</th>
					<th width="90" align="center">
						지역
					</th>
				</tr>
				<c:forEach var="career" items="${careerList}">
				<tr id="">
					<td width="">
						<input id="careerCheckBox" name="careerCheck" type="checkbox"/>
					</td>
					<td width="">
						<input id="employmentDate" name="startPeriod" type="text" maxlength='7' oninput="autoDot(this)" value="${career.startPeriod }"/>~<br>
						<input id="resignDate" name="endPeriod" type="text" maxlength='7' oninput="autoDot(this)" value="${career.endPeriod }"/>
					</td>
					<td width="">
						<input id="compInput" name="compName" type="text" style="width: 95%;" maxlength='254' size='12' oninput="filterInput2(this)" value="${career.compName }"/>
					</td>
					<td width="">
						<input id="deptInput" name="task" type="text" style="width: 95%;" maxlength='254' size='12' oninput="filterInput5(this)" value="${career.task }/${career.salary}"/>
					</td>
					<td width="">
						<input id="areaInput" name="location" type="text" style="width: 95%;" maxlength='254' size='12' oninput="filterInput2(this)"  value="${career.location }"/>
						
					</td>
				</tr>
				</c:forEach>
			
			</table>
			</form>
		</td></tr>
		<tr style="border:none;"><td style="border:none;">
			<h3 class="title"><strong>자격증</strong></h3>
		</td></tr>
		<tr style="border:none;"><td style="border:none;">
			<div style="text-align: right;"><!-- 제출시 버튼이 안보이게하던, 클릭을 막던 하자 -->
				<c:choose> 
					<c:when test="${recruit.submit eq 'Y'}">
						<button id="">추가</button><!-- 행추가 -->
						<button id="">삭제</button><!-- 행추가 -->
					</c:when>	
					<c:otherwise> <!-- else와 동일 -->
						<button id="" onclick='addCertificateRow()'>추가</button><!-- 행추가 -->
						<button id="" onclick='deleteCertificateRow(-1)'>삭제</button><!-- 행추가 -->
					</c:otherwise>
				</c:choose>
			</div>
		</td></tr>
		<br>
		<tr style="border:none;"><td style="border:none;">
		<form class="certificateForm">
		<table id="certificateTable" align="center" style="width: 80%;" border = "1">
				<tr id="tableHeader">
					<th width="20" align="center">
						
					</th>
					<th width="80" align="center">
						자격증
					</th>
					<th width="80" align="center">
						취득일
					</th>
					<th width="80" align="center">
						발행처
					</th>
				</tr>
				<c:forEach var="certificate" items="${certificateList}">
				<tr id="">
					<td width="20">
						<input id="certificateCheckBox" name="certificateCheck"type="checkbox"/>
					</td>
					<td width="80">
						<input id="ceritificateInput" name="qualifiName" type="text" maxlength='254' size='20' oninput="filterInput4(this)" value="${certificate.qualifiName }"/>
					</td>
					<td width="80">
						<input id="acquisitionDate" name="acquDate" type="text" maxlength='7' size='20' oninput="autoDot(this)" value="${certificate.acquDate }"/>
					</td>
					<td width="80">
						<input id="issuePlaceInput" name="organizeName" type="text" maxlength='254' size='20' oninput="filterInput4(this)" value="${certificate.organizeName }"/>
					</td>
				</tr>
				</c:forEach>	
			</table>
			</form>
			</td></tr>
			<br>	
			
		</table>
		
		</td></tr>
		</table>
		<div class="mt-3"style="text-align: center;"><!-- 제출시 버튼이 안보이게하던, 클릭을 막던 하자 -->
			<c:choose> 
				<c:when test="${recruit.submit eq 'Y'}">
					<button type="button" id="">저장</button>
					<button type="button" id="">제출</button>
				</c:when>	
				<c:otherwise> <!-- else와 동일 -->
					<button type="button" id="saveBtn">저장</button>
					<button type="button" id="submitBtn">제출</button>
				</c:otherwise>
			</c:choose>
		</div>
</body>
</html>