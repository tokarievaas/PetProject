package com.tokarieva.service;

import com.tokarieva.User;
import com.tokarieva.domain.Media;
import com.tokarieva.repository.MediaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MediaServiceImpl implements MediaService {

    @Autowired
    private MediaRepository mediaRepository;

    @Autowired
    private SecurityServiceImpl securityService;

    @Override
    public void save(Media media) {
        media.setUser(securityService.findLoggedInUser());
        mediaRepository.save(media);
    }

    @Override
    public List<Media> getMediaList(Iterable<Media> medias, String mediaType){
        List<Media> mediaList = new ArrayList<>();
        for (Media media: medias){
            if (media.getClass().getSimpleName().equals(mediaType)){
                mediaList.add(media);
            }
        }
        return mediaList;
    }

    @Override
    public List<Media> getMovieListByUser(User user) {
        List<Media> medias = mediaRepository.findByUser(user);
        return getMediaList(medias, "Movie");
    }

    @Override
    public List<Media> getMusicListByUser(User user) {
        List<Media> medias = mediaRepository.findByUser(user);
        return getMediaList(medias, "Music");
    }

    @Override
    public void delete(int id) {
        mediaRepository.delete(id);
    }


}
