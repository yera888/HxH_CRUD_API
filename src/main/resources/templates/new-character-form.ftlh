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
      <li><a href="index.html">Home</a></li>
      <li><a href="details.html">Details</a></li>
      <li><a href="about.html">About</a></li>
      <li><a href="new-character-form.html" class="active">Add a Character</a></li>
    </ul>
  </nav>

  <main class="form-page">

    <div class="form-header">
      <p class="details-eyebrow">Expand the Gallery</p>
      <h1>Add a <span>Character</span></h1>
      <p class="form-sub">Fill out each fields below to submit a new character to the gallery.</p>
    </div>

    <div class="form-card">
      <form class="character-form" onsubmit="return false;">

        <div class="form-group">
          <label for="char-name">Name <span class="required">*</span></label>
          <input type="text" id="char-name" name="name" placeholder="e.g. Kurapika" required />
        </div>

        <div class="form-group">
          <label for="char-universe">Universe <span class="required">*</span></label>
          <input type="text" id="char-universe" name="universe" placeholder="e.g. Hunter x Hunter" required />
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
            <select id="char-nen" name="nen_type">
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
            <label for="char-power">Power Level</label>
            <select id="char-power" name="power_level">
              <option value="" disabled selected>Select power level</option>
              <option>★☆☆☆☆ — Weak</option>
              <option>★★☆☆☆ — Below Average</option>
              <option>★★★☆☆ — Average</option>
              <option>★★★★☆ — Strong</option>
              <option>★★★★★ — Elite</option>
            </select>
          </div>
        </div>

        <div class="form-group">
          <label for="char-img">Image URL <span class="required">*</span></label>
          <input type="url" id="char-img" name="image_url" placeholder="https://example.com/image.png" required />
        </div>

        <div class="form-group">
          <label for="char-affiliation">Affiliation</label>
          <input type="text" id="char-affiliation" name="affiliation" placeholder="e.g. Hunter Association, Phantom Troupe" />
        </div>

        <div class="form-actions">
          <button type="submit" class="btn-submit">Submit a Character</button>
          <a href="index.html" class="btn-cancel">Cancel</a>
        </div>

      </form>
    </div>

  </main>

  <label for="char-image">Character Image</label>
  <input type="file" id="char-image" name="char-image" accept="image/*" />

</body>
</html>