package shop.mtcoding.rodongin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AnnouncementController {
    
    @GetMapping({"/","/announcement"})
    public String announcement(){
        return "announcement/announcement";
    }

    @GetMapping("announcement/announcementDetail")
    public String announcementDetail(){
        return "announcement/announcementDetail";
    }

    @GetMapping("announcementSaveForm/announcementSaveForm")
    public String announcementSaveForm(){
        return "announcement/announcementSaveForm";
    }
}
