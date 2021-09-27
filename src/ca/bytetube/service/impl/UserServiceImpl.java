package ca.bytetube.service.impl;

import ca.bytetube.dao.UserDao;
import ca.bytetube.dao.impl.UserDaoImpl;
import ca.bytetube.domain.User;
import ca.bytetube.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {
    UserDao userDao = new UserDaoImpl();
    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public void delUser(String id) {
        userDao.delUser(Integer.parseInt(id));
    }

    @Override
    public User findUserById(int id) {
        return userDao.findUserById(id);
    }

    @Override
    public void updateUserInfo(User user) {
        userDao.updateUserInfo(user);
    }
}
