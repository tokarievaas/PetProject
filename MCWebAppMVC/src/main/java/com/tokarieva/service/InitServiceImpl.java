package com.tokarieva.service;

import com.tokarieva.User;
import com.tokarieva.domain.Media;
import com.tokarieva.domain.Movie;
import com.tokarieva.domain.Music;
import com.tokarieva.repository.MediaRepository;
import com.tokarieva.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InitServiceImpl implements InitService {

    private static final String USER_LOGIN = "Guest";

    @Autowired
    private UserService userService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private MediaRepository mediaRepository;

    @Override
    public void initUser() {
        User user = userService.findByLogin(USER_LOGIN);
        if (user == null) {
            performInit();
        }
    }

    private void performInit() {
        User user = new User();
        user.setLogin(USER_LOGIN);
        user.setName("default");
        user.setPassword("no");
        user.setEmail("no");

        Media guardians = new Movie();
        guardians.setUser(user);
        guardians.setName("Guardians of the Galaxy");
        guardians.setYear(2012);
        guardians.setRating((byte) 5);
        ((Movie) guardians).setCategory("comics");
        ((Movie) guardians).setAdultOnly(false);
        ((Movie) guardians).setStudio("Marvel");

        Media element = new Movie();
        element.setUser(user);
        element.setName("5th element");
        element.setYear(1997);
        element.setRating((byte) 5);
        ((Movie) element).setCategory("Sci-Fi");
        ((Movie) element).setAdultOnly(false);
        ((Movie) element).setStudio("Gaumont");

        Media muse = new Music();
        muse.setUser(user);
        muse.setName("Muse");
        muse.setYear(1994);
        muse.setRating((byte) 4);
        ((Music) muse).setPerformer("Matt Bellamy");
        ((Music) muse).setStyle("Alternative rock");

        Media kongos = new Music();
        kongos.setUser(user);
        kongos.setName("Kongos");
        kongos.setYear(2007);
        kongos.setRating((byte)4);
        ((Music) kongos).setPerformer("Daniel Kongos");
        ((Music) kongos).setStyle("Alternative rock");

        Media metallica = new Music();
        metallica.setUser(user);
        metallica.setName("Metallica");
        metallica.setYear(1981);
        metallica.setRating((byte) 5);
        ((Music) metallica).setStyle("Heavy metal");
        ((Music) metallica).setPerformer("James Hetfield");
        System.out.println();
        userRepository.save(user);
        mediaRepository.save(guardians);
        mediaRepository.save(element);
        mediaRepository.save(muse);
        mediaRepository.save(kongos);
        mediaRepository.save(metallica);
    }
}
