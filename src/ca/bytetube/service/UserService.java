package ca.bytetube.service;

import ca.bytetube.domain.User;

import java.util.List;

public interface UserService {

    public List<User> findAll();


    public void addUser(User user);

   public void delUser(String id);

    public User findUserById(int id);

    public void updateUserInfo(User user);
}
