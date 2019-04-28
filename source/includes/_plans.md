# Plans
## GET /plans
```http
GET /api/v1/plans HTTP/1.1
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
  "data": [
    {
      "type": "plan",
      "id": "b9d7574f-5246-4c94-ade5-1d4e9b169afc",
      "attributes": {
        "state" : "published",
        "name": "Gold plan",
        "currency" : "EUR",
        "monthly-amount" : 2000,
        "monthly-amount-in-cents" : 2000,
        "annual-amount" : 12000,
        "annual-amount-in-cents" : 12000,
        "benefits" : "foo bar baz",
        "ask-for-shiping-address" : false,
        "goal-enabled" : false,
        "subscriptions-goal" : nil,
        "countdown-enabled" : false,
        "countdown-ends-at" : nil,
        "hidden" : false,
        "image-url": "https://steady.imgix.net/gfx/steady_logo.svg"
        "inserted-at" : "2018-08-16T09:15:29.803825Z",
        "updated-at" : "2018-08-16T09:15:29.803830Z"
      }
    },
    ...
  ]
}
```

`GET https://steadyhq.com/api/v1/plans`

Returns an array with all plans of the publication.

### Attributes
<%= Helper.render_shared("_plan_attributes.md") %>
