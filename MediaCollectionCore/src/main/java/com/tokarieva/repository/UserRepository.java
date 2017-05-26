package com.tokarieva.repository;

import com.tokarieva.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer> {
    User findByLogin(String login);
}
