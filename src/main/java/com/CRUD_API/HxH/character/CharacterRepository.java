package com.CRUD_API.HxH.character;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

  List<Character> findByNameContainingIgnoreCase(String name);

  List<Character> findByUniverseIgnoreCase(String universe);

  List<Character> findBySpeciesIgnoreCase(String species);

  List<Character> findByRoleIgnoreCase(String role);

  List<Character> findByNenTypeIgnoreCase(String nenType);

  List<Character> findByAge(double age);

}
