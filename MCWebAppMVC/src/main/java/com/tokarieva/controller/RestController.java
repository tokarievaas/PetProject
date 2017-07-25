package com.tokarieva.controller;


import com.tokarieva.domain.Media;
import com.tokarieva.util.DefaultUserCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@org.springframework.web.bind.annotation.RestController
public class RestController {

    @Autowired
    private DefaultUserCache defaultUserCache;

    @GetMapping("/media_coll_json")
    public List<Media> mediaCollectionJson(){
        return defaultUserCache.getDefaultUserMediaList();
    }
}
