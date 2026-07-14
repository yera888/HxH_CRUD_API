Try AI directly in your favorite apps … Use Gemini to generate drafts and refine content, plus get Gemini Pro with access to Google's next-gen AI
1
100%
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Add a Character - HunterxHunter Gallery</title>
  <link rel="stylesheet" href="/styles.css" />
</head>
<body>

  <nav class="navbar">
    <ul class="nav-links">
      <li><a href="/character">Home</a></li>
      <li><a href="/about">About</a></li>
      <li><a href="/character/new" class="active">Add a Character</a></li>
    </ul>
  </nav>

  <main class="form-page">

    <div class="form-header">
      <p class="details-eyebrow">Expand the Gallery</p>
      <h1>Add a <span>Character</span></h1>
      <p class="form-sub">Fill out each fields below to submit a new character to the gallery.</p>
    </div>

    <div class="form-card">
      <form class="character-form" action="/character/save" method="post">

        <div class="form-group">
          <label for="char-name">Name <span class="required">*</span></label>
          <input type="text" id="char-name" name="name" placeholder="e.g. Kurapika" required />
        </div>

        <div class="form-group">
          <label for="char-description">Description <span class="required">*</span></label>
          <textarea id="char-description" name="description" rows="3" placeholder="A short description of the character" required></textarea>
        </div>

        <div class="form-group">
          <label for="char-universe">Universe</label>
          <input type="text" id="char-universe" name="universe" placeholder="e.g. Hunter x Hunter" />
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="char-role">Role</label>
            <select id="char-role" name="role">
              <option value="" disabled selected>Select a role</option>
              <option>Protagonist</option>
              <option>Deuteragonist</option>
              <option>Antagonist</option>
              <option>Anti-Hero</option>
              <option>Supporting Character</option>
              <option>Villain</option>
              <option>Other</option>
            </select>
          </div>

          <div class="form-group">
            <label for="char-nen">Nen Type</label>
            <select id="char-nen" name="nenType">
              <option value="" disabled selected>Select Nen type</option>
              <option>Enhancement</option>
              <option>Transmutation</option>
              <option>Conjuration</option>
              <option>Emission</option>
              <option>Manipulation</option>
              <option>Specialization</option>
              <option>Unknown / None</option>
            </select>
          </div>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="char-species">Species</label>
            <input type="text" id="char-species" name="species" placeholder="e.g. Human" />
          </div>

          <div class="form-group">
            <label for="char-age">Age</label>
            <input type="number" step="any" id="char-age" name="age" placeholder="e.g. 12" />
          </div>
        </div>

        <div class="form-actions">
          <button type="submit" class="btn-submit">Submit a Character</button>
          <a href="/character" class="btn-cancel">Cancel</a>
        </div>

      </form>
    </div>

  </main>

</body>
</html>