<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>${character.name} - Character Details</title>
  <link rel="stylesheet" href="/styles.css" />
</head>
<body>

  <nav class="navbar">
    <ul class="nav-links">
      <li><a href="/character">Home</a></li>
      <li><a href="/about">About</a></li>
      <li><a href="/character/new">Add Character</a></li>
    </ul>
  </nav>

  <main class="details-page">

    <div class="details-hero">
      <div class="details-img-wrap">
        <img src="/images/anime.png" alt="${character.name}" />
      </div>
      <div class="details-intro">
        <p class="details-eyebrow">Character Profile</p>
        <h1 class="details-name">${character.name}</h1>
        <div class="details-tags">
          <#if character.role??><span class="tag">${character.role}</span></#if>
          <#if character.nenType??><span class="tag">${character.nenType}</span></#if>
        </div>
        <table class="details-table">
          <tbody>
            <tr><th>Universe</th><td>${(character.universe)!'Unknown'}</td></tr>
            <tr><th>Role</th><td>${(character.role)!'Unknown'}</td></tr>
            <tr><th>Species</th><td>${(character.species)!'Unknown'}</td></tr>
            <tr><th>Nen Type</th><td>${(character.nenType)!'Unknown'}</td></tr>
            <tr><th>Age</th><td>${character.age?c}</td></tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="details-sections">
      <section class="details-block">
        <h2>Description</h2>
        <p>${character.description}</p>
      </section>
    </div>

    <div class="details-back">
      <a href="/character" class="btn-back">&larr; Back to Gallery</a>
      <a href="/about" class="btn-back">About This Site</a>
      <a href="/character/new" class="btn-back">Add a Character</a>
      <a href="/character/update/${character.characterId?c}" class="btn-back" style="color:#34d399; border-color:#34d399;">Edit Character</a>
      <a href="/character/delete/${character.characterId?c}" class="btn-back" style="color:#f87171; border-color:#f87171;" onclick="return confirm('Delete ${character.name}?');">Delete Character</a>
    </div>

  </main>

</body>
</html>