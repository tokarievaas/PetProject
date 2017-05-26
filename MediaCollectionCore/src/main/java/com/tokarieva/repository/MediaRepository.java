package com.tokarieva.repository;

import com.tokarieva.domain.Media;
import com.tokarieva.domain.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MediaRepository extends CrudRepository<Media, Integer> {
    List<Media> findByUser(User user);
}
