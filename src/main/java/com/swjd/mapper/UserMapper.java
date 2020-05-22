package com.swjd.mapper;

import com.swjd.bean.User;

public interface UserMapper {
    // 根据账号和密码查询对象
    public abstract User selNamePwd(User user);
}
