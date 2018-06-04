package com.watchers.controller;


import com.watchers.model.CommonResponse;
import com.watchers.model.Users;
import com.watchers.service.UserService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.Map;

@RequestMapping("users")
@RestController
public class UserController {

    @Autowired
    private SqlSession sql;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public CommonResponse login(@ModelAttribute Users user) {
        return userService.login(user);
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addUser(Map<String, Object> user) {
        userService.addUser(user);
        return "성공";
    }

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String test(Map<String, Object> user) {
        // DB에 있는거 확인 ?

        if (user.get("id").equals(user.containsKey("id"))) {
            return "redirect:/";
            // 초기 화면으로 이동
        }
        return "redirect:login";
    }

    // ? HttpSession ?
    @RequestMapping(value = "/login/logout")
    public String logout(@ModelAttribute Users user, HttpSession session) {
        String page = "redirect:/";
        session.removeAttribute("id");
        return "";
    }
}

