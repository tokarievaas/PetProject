package com.tokarieva.service;

import com.tokarieva.domain.Media;
import com.tokarieva.domain.User;

import java.util.List;

public interface MediaService {
    void save(Media media);
    List<Media> getMediaList(Iterable<Media> medias, String mediaType);
    List<Media> getMovieListByUser(User user);
    List<Media> getMusicListByUser(User user);
    void delete(int id);
}
