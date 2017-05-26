package com.tokarieva.controller;

import com.tokarieva.domain.Media;
import com.tokarieva.domain.Movie;
import com.tokarieva.domain.Music;
import com.tokarieva.service.MediaService;
import com.tokarieva.service.SecurityServiceImpl;
import com.tokarieva.util.DefaultUserCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class MainController {

    @Autowired
    private DefaultUserCache defaultUserCache;

    @Autowired
    private SecurityServiceImpl securityService;

    @Autowired
    private MediaService mediaService;

    @GetMapping("/media_main")
    public String mainPage(Model model){
        model.addAttribute("userName", securityService.findLoggedInUser().getLogin());
        return "MainPage";
    }

    @GetMapping("/media_coll")
    public String mediaCollectionPage(Model model) {
        model.addAttribute("userName", securityService.findLoggedInUser().getLogin());
        if (securityService.findLoggedInUser().getLogin().equals("Guest")) {
            model.addAttribute("mediaRows", mediaService.getMediaList(defaultUserCache.getDefaultUserMediaList(), "Movie"));
            model.addAttribute("musicRows", mediaService.getMediaList(defaultUserCache.getDefaultUserMediaList(), "Music"));
        } else {
            model.addAttribute("mediaRows", mediaService.getMovieListByUser(securityService.findLoggedInUser()));
            model.addAttribute("musicRows", mediaService.getMusicListByUser(securityService.findLoggedInUser()));
        }
        return "MediaTemplate";
    }

    @ModelAttribute("media")
    public Media bindMedia(@RequestParam(value = "type", required = false) String type) {
        return "Movie".equals(type) ? new Movie() : new Music();
    }

    @PostMapping("/media_coll/media")
    public String saveMedia(@ModelAttribute("media") Media media){
        mediaService.save(media);
        return "redirect:/media_coll";
    }

    @GetMapping("/media_coll/media")
    public String editMedia(@ModelAttribute("media") Media media, Model model){
        model.addAttribute("title", media.getClass().getSimpleName());
        model.addAttribute("mediaValue", media);
        return "SaveMediaTemplate";
    }

    @GetMapping("/media_coll/newMedia")
    public String newMedia(@RequestParam("type") String type, Model model){
        model.addAttribute("title", type);
        return "NewMediaTemplate";
    }

    @GetMapping("/media_coll/deleteMedia")
    public String deleteMedia(HttpServletRequest request, HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        mediaService.delete(id);
        return "redirect:/media_coll";
    }

}
