# Publication
## GET /publication
```http
GET /api/v1/publication HTTP/1.1
Accept: application/vnd.api+json
Authorization: X-Api-Key YOUR_API_KEY
Host: steadyhq.com
```
```http
HTTP/1.1 200 OK
Content-Type: application/vnd.api+json; charset=utf-8
```
```javascript
{
  "data": {
    "type": "publication",
    "id": "0879c0a7-cc51-44fc-ac35-4bec65735d5b",
    "attributes": {
      "title": "Title of your publication",
      "campaign-page-url" : "https://steadyhq.com/your-publication",
      "js-widget-url": "https://steadyhq.com/widget_loader/0879c0a7-cc51-44fc-ac35-4bec65735d5b"
    }
  }
}
```

`GET https://steadyhq.com/api/v1/publication`

Returns infos about the publication associated with the Api-Key.

### Attributes
Attribute | Description
--------- | -----------
title | the title of the publication
campaign-page-url | the url of your steady page
js-widget-url | the url of the JS-Steady-Plugin of your publication