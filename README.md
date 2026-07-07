# HxH_CRUD_API

---


### API Endpoints:

```http
GET /api/characters
```

**Response:**

```json
[
  {
    "characterId": 1,
    "name": "Gon Freecss",
    "description": "An energetic and kind-hearted young Hunter searching for his father, Ging.",
    "role": "Protagonist",
    "age": 12,
    "universe": "Hunter x Hunter",
    "species": "Human",
    "nenType": "Enhancement"
  }
]
```

### 2. Get Character by ID

```http
GET /api/characters/{id}
```

**Response:**

```json
{
  "characterId": 1,
  "name": "Gon Freecss",
  "description": "An energetic and kind-hearted young Hunter searching for his father, Ging.",
  "role": "Protagonist",
  "age": 12,
  "universe": "Hunter x Hunter",
  "species": "Human",
  "nenType": "Enhancement"
}
```

Returns `404 Not Found` if no character exists with that id.

### 3. Add a New Character

```http
POST /api/characters
request body:
{
  "name": "Killua Zoldyck",
  "description": "A former child assassin from the Zoldyck family who becomes Gon's best friend.",
  "role": "Deuteragonist",
  "age": 12,
  "universe": "Hunter x Hunter",
  "species": "Human",
  "nenType": "Transmutation"
}
```

**Response:**

```json
{
  "characterId": 2,
  "name": "Killua Zoldyck",
  "description": "A former child assassin from the Zoldyck family who becomes Gon's best friend.",
  "role": "Deuteragonist",
  "age": 12,
  "universe": "Hunter x Hunter",
  "species": "Human",
  "nenType": "Transmutation"
}
```

### 4. Update an Existing Character

```http
PUT /api/characters/{id}
request body:
{
  "name": "Killua Zoldyck",
  "description": "Updated description.",
  "role": "Deuteragonist",
  "age": 14,
  "universe": "Hunter x Hunter",
  "species": "Human",
  "nenType": "Transmutation"
}
```

**Response:**

```json
{
  "characterId": 2,
  "name": "Killua Zoldyck",
  "description": "Updated description.",
  "role": "Deuteragonist",
  "age": 14,
  "universe": "Hunter x Hunter",
  "species": "Human",
  "nenType": "Transmutation"
}
```

Returns `404 Not Found` if no character exists with that id.

### 5. Delete a Character

```http
DELETE /api/characters/{id}
```

**Response:** `204 No Content`. Returns `404 Not Found` if no character is found with that id.

### 6. Get Characters by Category

```http
GET /api/characters/category?type={category}&value={value}
```

Supported `type` values: `universe`, `species`, `role`, `nenType`, `age`.

```http
GET /api/characters/category?type=species&value=Human
```

**Response:**

```json
[
  {
    "characterId": 1,
    "name": "Gon Freecss",
    "description": "An energetic and kind-hearted young Hunter searching for his father, Ging.",
    "role": "Protagonist",
    "age": 12,
    "universe": "Hunter x Hunter",
    "species": "Human",
    "nenType": "Enhancement"
  }
]
```

Returns `400 Bad Request` if `type` is not one of the supported categories.

### 7. Search Characters by Name

```http
GET /api/characters/search?name={searchTerm}
```

```http
GET /api/characters/search?name=Gon
```

**Response:**

```json
[
  {
    "characterId": 1,
    "name": "Gon Freecss",
    "description": "An energetic and kind-hearted young Hunter searching for his father, Ging.",
    "role": "Protagonist",
    "age": 12,
    "universe": "Hunter x Hunter",
    "species": "Human",
    "nenType": "Enhancement"
  }
]
```


--- 


### Link to deploted app from Render:  

https://hxh-crud-api-1.onrender.com


