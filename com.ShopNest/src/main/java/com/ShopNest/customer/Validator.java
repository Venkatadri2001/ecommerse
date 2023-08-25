package com.ShopNest.customer;

import com.ShopNest.dbhandler.DataFetcher;

public class Validator {

	public static boolean isvalid(String uname, String pass) {
		
		String dbpass = DataFetcher.fetchPassword(uname);
		if(pass.equals(dbpass))
		{
			return true;
		}
		else {
			return false;
		}
	}

}
