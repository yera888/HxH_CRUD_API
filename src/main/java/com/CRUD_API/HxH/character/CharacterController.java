package com.CRUD_API.HxH.character;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class CharacterController {
    
    private final CharacterService characterService;

    public CharacterController(CharacterService characterService) {
        this.characterService = characterService;

    }

    @GetMapping("/about")
    public String about(){
    return "about";
    }

    @GetMapping("/character/{id}")
    public String getCharacterById(@PathVariable long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);

        return "details";

    }
    

}
