package com.tokarieva.service;

import com.tokarieva.User;

public interface SecurityService {
    User findLoggedInUser();
    void autologin(String username, String password);
}
