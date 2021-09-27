package ca.bytetube.dao;

import ca.bytetube.domain.User;

import java.util.List;

public interface UserDao {

    public List<User> findAll();

    public void addUser(User user);

    void delUser(int id);

    public User findUserById(int id);

    public void updateUserInfo(User user);
}
