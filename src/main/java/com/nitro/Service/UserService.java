package com.nitro.Service;

import com.nitro.Entity.User;
import com.nitro.Repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserRepo userRepo;

    public Iterable<User> getUser(){
        return userRepo.findAll();
    }
    public void addUser(User user){
        userRepo.save(user);

    }
}

