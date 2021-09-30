package com.sujan.dao.impl;

import com.sujan.common.ICommonDAO;
import com.sujan.model.User;

public interface IUserDAO extends ICommonDAO<User> {
	public Boolean processlogin(User u);
}
