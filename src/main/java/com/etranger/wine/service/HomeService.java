package com.etranger.wine.service;

import java.util.List;

import com.etranger.wine.domain.HomeBean;

public interface HomeService {

	public List<HomeBean> getWineList(int wine_id);
}
