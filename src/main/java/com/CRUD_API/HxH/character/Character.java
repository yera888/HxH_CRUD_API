
package com.CRUD_API.HxH.character;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "characters")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Character {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long characterId;

  @Column(nullable = false)
  private String name;

  @Column(nullable = false, columnDefinition = "TEXT")
  private String description;

  private String role;

  private double age;

  private String universe;

  private String species;

  private String nenType;

  public Character(String name, String description, String role, double age, String universe, String species,
      String nenType) {
    this.name = name;
    this.description = description;
    this.role = role;
    this.age = age;
    this.universe = universe;
    this.species = species;
    this.nenType = nenType;
  }

}