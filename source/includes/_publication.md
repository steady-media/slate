# Publication
## GET /publication
```http
GET /api/v1/publication HTTP/1.1
Accept: application/vnd.api+json
X-Api-Key: YOUR_API_KEY
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
      "members-count": 10,
      "paying-members-count": 7,
      "trial-members-count": 2,
      "guest-members-count": 1,
      "monthly-amount": 14223,
      "monthly-amount-in-cents": 14223,
      "editor-name": "Foo Bear",
      "trial-period-activated": true,
      "public": true,
      "js-widget-url": "https://steadyhq.com/widget_loader/0879c0a7-cc51-44fc-ac35-4bec65735d5b",
      "inserted-at" : "2018-08-16T09:15:29.803825Z",
      "updated-at" : "2018-08-16T09:15:29.803830Z"
    }
  }
}
```

`GET https://steadyhq.com/api/v1/publication`

Returns infos about the publication associated with the Api-Key.

### Attributes
See our <a href="http://help.steadyhq.com/2541-publishers-money-and-administration">FAQ</a> for further explanations.

Attribute | Description
--------- | -----------
title | the title of the publication
campaign-page-url | the url of your steady page
members-count | the members count of the publication
paying-members-count | the count of paying members of the publication
trial-members-count | the count of trial members of the publication
guest-members-count | the count of guest members of the publication
monthly-amount | the sum of the membership fees, the publication earns in a month
monthly-amount-in-cents | **DEPRECATED** Use `monthly-amount` instead.
editor-name | the name of the publisher as shown on the Steady Page
trial-period-activated | boolean if trial memberships are enabled for the publication
public | boolean if the publication has been made public
js-widget-url | the url of the JS-Steady-Plugin of your publication
inserted-at | datetime of the creation of the publication
updated-at | datetime when the publication was updated the last time on our system
