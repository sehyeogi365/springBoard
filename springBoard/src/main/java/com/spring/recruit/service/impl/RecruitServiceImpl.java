package com.spring.recruit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.recruit.dao.RecruitDao;
import com.spring.recruit.service.RecruitService;
import com.spring.recruit.vo.CareerVo;
import com.spring.recruit.vo.CertificateVo;
import com.spring.recruit.vo.EducationVo;
import com.spring.recruit.vo.RecruitVo;


@Service
public class RecruitServiceImpl implements RecruitService {

	@Autowired
	RecruitDao recruitDao;
	

	//채용정보 
	
	//저장
	@Override
	public int recruitInsert(RecruitVo recruitVo) throws Exception{
		
		return recruitDao.recruitInsert(recruitVo);
	}
		
	@Override
	public RecruitVo recruitSelect(String name, String phone) throws Exception{
		
		RecruitVo recruitVo = new RecruitVo();
		
		recruitVo.setName(name);
		recruitVo.setPhone(phone);

		return recruitDao.recruitSelect(recruitVo);
	}
	
	@Override
	public int recruitExistence(RecruitVo recruitVo) throws Exception{
		
		return recruitDao.recruitExistence(recruitVo);
	}
	
	@Override
	public int recruitUpdate(RecruitVo recruitVo) throws Exception{
		
		return recruitDao.recruitUpdate(recruitVo);
	}
	//제출
	
	//학력 추가
	@Override
	public int educateInsert(EducationVo educationVo) throws Exception{
		
		return recruitDao.educateInsert(educationVo);
	}
	
	//학력 조회 
	@Override 
	public List<EducationVo> educateSelect(String seq) throws Exception{
		
		EducationVo educationVo = new EducationVo();
		
		educationVo.setSeq(seq);
		
		return recruitDao.educateSelect(educationVo);
	}

	public int educateExistence(String seq) throws Exception{
		EducationVo educationVo = new EducationVo();
		
		educationVo.setSeq(seq);
		
		return recruitDao.educateExistence(educationVo);
	}
	
	public int educateUpdate(EducationVo educationVo) throws Exception{
		
		return recruitDao.educateUpdate(educationVo);
	}
	
	//경력 추가
	@Override
	public int careerInsert(CareerVo careerVo) throws Exception{
		
		String[] splitValues = careerVo.getTask().split("/");
		
		// 부서와 직급은 task에 저장
	    if (splitValues.length > 1) {
	        careerVo.setTask(splitValues[0] + "/" + splitValues[1]);
	    }

	    // 직책은 salary에 저장
	    if (splitValues.length > 2) {
	        careerVo.setSalary(splitValues[2]);  // salary는 String으로 설정했다고 가정
	    }
	    
		
		return recruitDao.careerInsert(careerVo);
	}
	
	//경력 조회
	@Override
	public List<CareerVo> careerSelect(String seq) throws Exception{
		
		CareerVo careerVo = new CareerVo();
		
		careerVo.setSeq(seq);
		
		return recruitDao.careerSelect(careerVo);
	}
	
	public int careerExistence(String seq) throws Exception{
		CareerVo careerVo = new CareerVo();
		
		careerVo.setSeq(seq);
		
		return recruitDao.careerExistence(careerVo);
	}
	
	public int careerUpdate(CareerVo careerVo) throws Exception{
		
		String[] splitValues = careerVo.getTask().split("/");
		
		// 부서와 직급은 task에 update
	    if (splitValues.length > 1) {
	        careerVo.setTask(splitValues[0] + "/" + splitValues[1]);
	    }

	    // 직책은 salary에 update
	    if (splitValues.length > 2) {
	        careerVo.setSalary(splitValues[2]);  // salary는 String으로 설정했다고 가정
	    }
	    
		return recruitDao.careerUpdate(careerVo);
	}
	
	//자격증 추가
	@Override
	public int certificateInsert(CertificateVo certificateVo) throws Exception{
		
		return recruitDao.certificateInsert(certificateVo);
	}
	
	//자격증 조회
	@Override
	public List<CertificateVo> certificateSelect(String seq) throws Exception{
		
		CertificateVo certificateVo = new CertificateVo();
		
		certificateVo.setSeq(seq);
		return recruitDao.certificateSelect(certificateVo);
	}
	
	public int certificateExistence(String seq) throws Exception{
		CertificateVo certificateVo = new CertificateVo();
		
		certificateVo.setSeq(seq);
		
		return recruitDao.certificateExistence(certificateVo);
	}
	
	public int certificateUpdate(CertificateVo certificateVo) throws Exception{
		
		return recruitDao.certificateUpdate(certificateVo);
	}
	
	
}
