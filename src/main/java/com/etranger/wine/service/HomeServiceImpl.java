package com.etranger.wine.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import com.etranger.wine.dao.HomeDAO;
import com.etranger.wine.domain.HomeBean;

@Service
public class HomeServiceImpl  implements HomeService{
	@Inject
	HomeDAO homeDAO;
	
	@Override
	public List<HomeBean> getWineList(){
		return homeDAO.getWineList();
		
	}
}
