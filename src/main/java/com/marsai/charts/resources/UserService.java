package com.marsai.charts.resources;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	@Autowired
	private UserDao userdao;

	
	public String getPercent1(String year) {
		String matchCount = userdao.getPercent1(year);
		return matchCount;
	}
	
	public String getPercent2(String year) {
		String matchCount = userdao.getPercent2(year);
		return matchCount;
	}
	
	public List<String> getAllPercent(String year) {
		List<String> retValues = userdao.getAllPercent(year);
		return retValues;
	}
	
	
	public String getTotalAmount() {
		String retValues = userdao.getTotalAmount();
		return retValues;
	}

	
}
