
package com.CRUD_API.HxH.character;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AppController {

  @GetMapping
  public ResponseEntity<String> homePage() {
    String html = "<html> <body><h1>The HxH Character API!</h1>" +
        "<p>API endpoints:</p>" +
        " <ul><li><a href=\"/api/characters\">/api/characters</a></li>" +
        "<li><a href=\"/api/characters/1\">/api/characters/{id} (you can replace 1 with any character ID)</a></li>" +
        "<li><a href=\"/api/characters/search?name=Gon\">/api/characters/search?name=Gon (find characters whose name contains a string)</a></li>"
        +
        "<li><a href=\"/api/characters/category?type=universe&value=Hunter x Hunter\">/api/characters/category?type=universe&value=Hunter x Hunter (filter by category: universe, species, role, nenType, or age)</a></li>"
        +
        "</ul>" +
        "<p> Try POST, PUT, and DELETE requests using EchoAPI</p>" +
        "<p> To create a new character, send a POST request to <code>/api/characters</code> with a JSON body like:</p>"
        +
        "<pre>{\"name\": \"Gon Freecss\", \"description\": \"An energetic young Hunter searching for his father.\", \"role\": \"Protagonist\", \"age\": 12, \"universe\": \"Hunter x Hunter\", \"species\": \"Human\", \"nenType\": \"Enhancement\"}</pre>"
        +
        "<p>To update a character, send a PUT request to <code>/api/characters/{id}</code> with a JSON body containing the updated fields.</p>"
        +
        "<p>To delete a character, send a DELETE request to <code>/api/characters/{id}</code>.</p>"
        +
        " </body></html>";

    return ResponseEntity.status(HttpStatus.OK)
        .contentType(MediaType.TEXT_HTML)
        .body(html);

  }

}