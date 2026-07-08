package com.CRUD_API.HxH.character;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

    @Controller
    public class CharacterController {
    
    private final CharacterService characterService;

    public CharacterController(CharacterService characterService){
        this.characterService = characterService;

    }

    @GetMapping("/about")
    public String about(){
    return "about";
    }

}
