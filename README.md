# Content Indexing API

The API provides ways to store and retrieve specific content from publicly available pages in the internet. Content in tags H1, H2, H3 and A (links) will be stored.

## Usage

The API is hosted at https://content-indexing-diegoversiani.herokuapp.com

#### Format

Only `JSON` format is available.

#### Endpoints

##### stored_content

List all previously stored content indexed by the API.

Request:

```
# Will retrieve all previously stored content
https://content-indexing-diegoversiani.herokuapp.com/stored_content
```

Response:

An `array` of objects with "_id", "content" and "url". See example:

```javascript
[
  {
    "_id": "57daeeaca6df916a346a7ad8",
    "content": [
        [ "h1", "Hi, I'm Diego" ],
        [ "h2", "I develop WordPress Websites for meaningful user experiences." ],
        [ "a", { "href": "/about", "text": "I'll go first" }],
        [ "a", { "href": "/contact", "text": "Contact" }],
        [...]
      ],
    "url": "http://diegoversiani.me"
  },
  {...}
]
```


##### stored_content/create

Retrieves the url page and store its content, returns the parsed content.

Request:

```
# Will store the parsed content from the url parameter
https://content-indexing-diegoversiani.herokuapp.com/stored_content/create?url=http://google.com
```

Response:

An object for the stored content. See example:

```javascript
{
  "_id": "57e5542ea6df9111501846b8",
  "content": [
      [ "a", { "href": "http://www.google.com.br/imghp?hl=pt-BR&tab=wi", "text": "Images" }],
      [ "a", { "href": "http://maps.google.com.br/maps?hl=pt-BR&tab=wl", "text": "Maps" }],
      [ "a", { "href": "/intl/pt-BR/policies/privacy/", "text": "Privacidade" }],
      [...]
    ],
  "url": "http://google.com"
}
```