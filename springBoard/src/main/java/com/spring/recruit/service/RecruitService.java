package com.spring.recruit.service;

import java.util.List;

import com.spring.recruit.vo.CareerVo;
import com.spring.recruit.vo.CertificateVo;
import com.spring.recruit.vo.EducationVo;
import com.spring.recruit.vo.RecruitVo;

public interface RecruitService {
	
	//채용정보
	public int recruitInsert(RecruitVo recruitVo) throws Exception;
	
	public RecruitVo recruitSelect(String name, String phone) throws Exception;

	public int recruitExistence(RecruitVo recruitVo) throws Exception;
	
	public int recruitUpdate(RecruitVo recruitVo) throws Exception;
	
	//학력
	public int educateInsert(EducationVo educationVo) throws Exception;

	public List<EducationVo> educateSelect(String seq) throws Exception;

	public int educateExistence(String seq) throws Exception;
	
	public int educateUpdate(EducationVo educationVo) throws Exception;
	
	//경력
	public int careerInsert(CareerVo careerVo) throws Exception;
	
	public List<CareerVo> careerSelect(String seq) throws Exception;
	
	public int careerExistence(String seq) throws Exception;
	
	public int careerUpdate(CareerVo careerVo) throws Exception;
	
	//자격증
	public int certificateInsert(CertificateVo certificateVo) throws Exception;
	
	public List<CertificateVo> certificateSelect(String seq) throws Exception;
	
	public int certificateExistence(String seq) throws Exception;
	
	public int certificateUpdate(CertificateVo certificateVo) throws Exception;
}
