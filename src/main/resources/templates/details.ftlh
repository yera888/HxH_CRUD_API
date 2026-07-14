Try AI directly in your favorite apps … Use Gemini to generate drafts and refine content, plus get Gemini Pro with access to Google's next-gen AI
1
100%
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

    <hr>
    <div class="details-block" style="margin-top:2rem;">
      <h2>Edit Character</h2>
      <form class="character-form" action="/character/update/${character.characterId?c}" method="post">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" name="name" value="${character.name}" required />
        </div>
        <div class="form-group">
          <label for="description">Description</label>
          <textarea id="description" name="description" rows="3" required>${character.description}</textarea>
        </div>
        <div class="form-row">
          <div class="form-group">
            <label for="role">Role</label>
            <input type="text" id="role" name="role" value="${(character.role)!''}" />
          </div>
          <div class="form-group">
            <label for="nenType">Nen Type</label>
            <input type="text" id="nenType" name="nenType" value="${(character.nenType)!''}" />
          </div>
        </div>
        <div class="form-row">
          <div class="form-group">
            <label for="universe">Universe</label>
            <input type="text" id="universe" name="universe" value="${(character.universe)!''}" />
          </div>
          <div class="form-group">
            <label for="species">Species</label>
            <input type="text" id="species" name="species" value="${(character.species)!''}" />
          </div>
        </div>
        <div class="form-group">
          <label for="age">Age</label>
          <input type="number" step="any" id="age" name="age" value="${character.age?c}" />
        </div>
        <div class="form-actions">
          <button type="submit" class="btn-submit">Save Changes</button>
        </div>
      </form>
    </div>

    <div class="details-back">
      <a href="/character" class="btn-back">&larr; Back to Gallery</a>
      <a href="/about" class="btn-back">About This Site</a>
      <a href="/character/new" class="btn-back">Add a Character</a>
      <a href="/character/delete/${character.characterId?c}" class="btn-back" style="color:#f87171; border-color:#f87171;">Delete Character</a>
    </div>

  </main>

</body>
</html>