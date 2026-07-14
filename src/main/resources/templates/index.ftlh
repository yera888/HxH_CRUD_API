Try AI directly in your favorite apps … Use Gemini to generate drafts and refine content, plus get Gemini Pro with access to Google's next-gen AI
1
100%
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>HxH Character Gallery</title>
  <link rel="stylesheet" href="/styles.css" />
</head>
<body>

  <nav class="navbar">
    <ul class="nav-links">
      <li><a href="/character" class="active">Home</a></li>
      <li><a href="/about">About</a></li>
      <li><a href="/character/new">Add a Character</a></li>
    </ul>
  </nav>

  <header class="hero">
    <div class="hero-content">
      <p class="hero-eyebrow">Welcome to the</p>
      <h1>Hunter x Hunter<br /><span>Gallery</span></h1>
      <p class="hero-sub">Explore the world of Hunter X Hunter and join Gon on his journey to find his father.</p>
    </div>
  </header>

  <main class="gallery-section">
    <div class="search-bar-wrapper">
      <form action="/character/search" method="get">
        <input type="text" class="search-bar" name="name" placeholder="Search by name..." aria-label="Search characters" />
      </form>
    </div>

    <div class="search-bar-wrapper">
      <form action="/character/category" method="get" style="display:flex; gap:0.5rem; max-width:480px; width:100%;">
        <select name="type" class="search-bar" style="max-width:160px;">
          <option value="universe">Universe</option>
          <option value="species">Species</option>
          <option value="role">Role</option>
          <option value="nenType">Nen Type</option>
          <option value="age">Age</option>
        </select>
        <input type="text" name="value" class="search-bar" placeholder="Category value..." />
        <button type="submit" class="btn-submit">Filter</button>
      </form>
    </div>

    <div class="card-grid">
      <#list charactersList as character>
        <a href="/character/${character.characterId?c}" class="card">
          <div class="card-img-wrapper">
            <img src="/images/anime.png" alt="${character.name}" />
          </div>
          <div class="card-body">
            <h2 class="card-name">${character.name}</h2>
            <div class="card-tags">
              <#if character.role??><span class="tag">${character.role}</span></#if>
              <#if character.nenType??><span class="tag">${character.nenType}</span></#if>
            </div>
            <ul class="card-details">
              <li><span>Universe</span> ${(character.universe)!'Unknown'}</li>
              <li><span>Species</span> ${(character.species)!'Unknown'}</li>
              <li><span>Age</span> ${character.age?c}</li>
            </ul>
            <p class="card-summary">${character.description}</p>
          </div>
        </a>
      </#list>
    </div>
  </main>

</body>
</html>