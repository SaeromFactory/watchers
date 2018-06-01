package com.watchers.repository;

import com.watchers.common.Mapper;
import com.watchers.model.Users;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Mapper
public interface UserMapper {
    public Users getByEmail(String email);
    public void updateToken(Map<String, Object> param);
    public void addUser(Map<String, Object> param);
    public boolean login(Users users);
    public void logout(HttpSession session);
}
