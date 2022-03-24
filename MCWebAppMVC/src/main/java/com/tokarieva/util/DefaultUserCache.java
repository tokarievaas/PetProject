package com.tokarieva.util;

import com.tokarieva.domain.Media;
import com.tokarieva.domain.User;
import com.tokarieva.repository.MediaRepository;
import com.tokarieva.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class DefaultUserCache {

    private static final int DEFAULT_USER_ID = 1;
    private static User defaultUser;
    private static List<Media> defaultUserMediaList;

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private MediaRepository mediaRepository;

    public User getDefaultUser() {
        if (defaultUser == null){
            defaultUser = userRepository.findById(DEFAULT_USER_ID).get();
        }
        return defaultUser;
    }

    public List<Media> getDefaultUserMediaList() {
        if (defaultUserMediaList == null){
            defaultUserMediaList = mediaRepository.findByUser(getDefaultUser());
        }
        return defaultUserMediaList;
    }
}
