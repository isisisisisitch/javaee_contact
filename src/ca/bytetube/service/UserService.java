package ca.bytetube.service;

import ca.bytetube.domain.Admin;
import ca.bytetube.domain.PageBean;
import ca.bytetube.domain.User;

import java.util.List;
import java.util.Map;

public interface UserService {

    public List<User> findAll();


    public void addUser(User user);

   public void delUser(String id);

    public void delSelected(String[] ids) ;

    public User findUserById(int id);

    public void updateUserInfo(User user);

    public Admin adminLogin(Admin admin);


    PageBean<User> findUserByPage(String currentPage, String rows, Map<String, String[]> condition);
}
