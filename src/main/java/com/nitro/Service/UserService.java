package com.nitro.Service;

import com.nitro.Entity.User;
import com.nitro.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

public interface UserService {
    public User findUserByEmail(String email);
    public void saveUser(User user);
}