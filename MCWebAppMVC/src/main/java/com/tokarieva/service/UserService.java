package com.tokarieva.service;

import com.tokarieva.domain.User;

public interface UserService {
    void save(User user);
    User findByLogin(String login);
}
