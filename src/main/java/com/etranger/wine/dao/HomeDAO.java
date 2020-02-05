package com.etranger.wine.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.etranger.wine.domain.HomeBean;

public interface HomeDAO {

	public List<HomeBean> getWineList(int wine_id);

}
