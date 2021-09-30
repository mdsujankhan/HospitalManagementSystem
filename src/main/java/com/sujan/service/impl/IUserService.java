package com.sujan.service.impl;

import javax.servlet.http.HttpServletRequest;

import com.sujan.common.ICommonService;
import com.sujan.model.User;

public interface IUserService extends ICommonService<User> {
	public Boolean processlogin(HttpServletRequest request);
}
