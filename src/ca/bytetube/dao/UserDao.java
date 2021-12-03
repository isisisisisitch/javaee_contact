package ca.bytetube.dao;

import ca.bytetube.domain.Admin;
import ca.bytetube.domain.User;

import java.util.List;
import java.util.Map;

public interface UserDao {

    

    public List<User> findAll();

    public void addUser(User user);

    void delUser(int id);

    public User findUserById(int id);

    public void updateUserInfo(User user);

    int findTotalCount(Map<String, String[]> condition);

    List<User> findByPage(int start, int rows, Map<String, String[]> condition);

    Admin adminLogin(Admin admin);
}
