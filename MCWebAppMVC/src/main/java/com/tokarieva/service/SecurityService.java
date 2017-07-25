package com.tokarieva.service;

import com.tokarieva.domain.User;

public interface SecurityService {
    User findLoggedInUser();
    void autologin(String username, String password);
}
