package com.CRUD_API.HxH.character;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CharacterController {

    private final CharacterService characterService;

    public CharacterController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/character")
    public String getAllCharacters(Model model) {
        model.addAttribute("charactersList", characterService.getAllCharacters());
        return "index";
    }

    @GetMapping("/character/{id}")
    public String getCharacterById(@PathVariable long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        return "details";
    }

    @GetMapping("/character/new")
    public String createCharacterForm(Model model) {
        model.addAttribute("character", new Character());
        return "new-character-form";
    }

    @PostMapping("/character/save")
    public String createCharacter(Character character) {
        Character created = characterService.createCharacter(character);
        return "redirect:/character/" + created.getCharacterId();
    }

    @GetMapping("/character/update/{id}")
    public String showUpdateForm(@PathVariable long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        return "character-update";
    }

    @PostMapping("/character/update/{id}")
    public String updateCharacter(@PathVariable long id, Character updatedCharacter) {
        Character character = characterService.updateCharacter(id, updatedCharacter);
        if (character != null) {
            return "redirect:/character/" + character.getCharacterId();
        }
        return "redirect:/character/" + id + "?error=true";
    }

    @GetMapping("/character/delete/{id}")
    public String deleteCharacter(@PathVariable long id) {
        characterService.deleteCharacter(id);
        return "redirect:/character";
    }

    @GetMapping("/character/search")
    public String searchCharacters(@RequestParam String name, Model model) {
        model.addAttribute("charactersList", characterService.searchCharactersByName(name));
        return "index";
    }

    @GetMapping("/character/category")
    public String getCharactersByCategory(@RequestParam String type, @RequestParam String value, Model model) {
        try {
            model.addAttribute("charactersList", characterService.getCharactersByCategory(type, value));
        } catch (IllegalArgumentException e) {
            return "redirect:/character?error=true";
        }
        return "index";
    }

}