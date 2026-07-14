
package com.CRUD_API.HxH.character;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class CharacterService {
  private final CharacterRepository characterRepository;

  public CharacterService(CharacterRepository characterRepository) {
    this.characterRepository = characterRepository;
  }

  public List<Character> getAllCharacters() {
    return characterRepository.findAll();
  }

  public Character getCharacterById(long characterId) {
    return characterRepository.findById(characterId).orElse(null);
  }

  public Character createCharacter(Character character) {
    return characterRepository.save(character);
  }

  public Character updateCharacter(long characterId, Character updatedCharacter) {
    Character existingCharacter = characterRepository.findById(characterId).orElse(null);
    if (existingCharacter != null) {
      existingCharacter.setName(updatedCharacter.getName());
      existingCharacter.setDescription(updatedCharacter.getDescription());
      existingCharacter.setRole(updatedCharacter.getRole());
      existingCharacter.setAge(updatedCharacter.getAge());
      existingCharacter.setUniverse(updatedCharacter.getUniverse());
      existingCharacter.setSpecies(updatedCharacter.getSpecies());
      existingCharacter.setNenType(updatedCharacter.getNenType());
      return characterRepository.save(existingCharacter);
    }
    return null;
  }

  public boolean deleteCharacter(long characterId) {
    if (characterRepository.existsById(characterId)) {
      characterRepository.deleteById(characterId);
      return true;
    }
    return false;
  }

  public List<Character> searchCharactersByName(String name) {
    return characterRepository.findByNameContainingIgnoreCase(name);
  }

  public List<Character> getCharactersByCategory(String category, String value) {
    return switch (category.toLowerCase()) {
      case "universe" -> characterRepository.findByUniverseIgnoreCase(value);
      case "species" -> characterRepository.findBySpeciesIgnoreCase(value);
      case "role" -> characterRepository.findByRoleIgnoreCase(value);
      case "nentype" -> characterRepository.findByNenTypeIgnoreCase(value);
      case "age" -> characterRepository.findByAge(Double.parseDouble(value));
      default -> throw new IllegalArgumentException(
          "Unsupported category: " + category + ". Use one of: universe, species, role, nenType, age.");
    };
  }

}


