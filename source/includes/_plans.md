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
        "monthly-amount-in-cents" : 2000,
        "annual-amount-in-cents" : 12000,
        "currency" : "EUR",
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
Attribute | Description
--------- | -----------
state | draft / published / archived
name | name of the plan
monthly-amount-in-cents | the amount a user with a monthly contract has to pay per month
annual-amount-in-cents | the amount a user with an annual contract has to pay per year
currency | EUR / USD
benefits | the benefits of this plan / null
ask-for-shipping-address | boolean if we ask the user for her shipping address after she subscribed
goal-enabled | boolean if this plan has a goal of a certain amount of subscriptions
subscriptions-goal | integer how many subscription should be reached if goal is enabled / null
countdown-enabled | boolean if a countdown for this plan is enabled
countdown-ends-at | datetime when the countdown will end if it is enabled / null
hidden | boolean if the plan is hidden
image-url | plan image url / null
inserted-at | datetime of the creation of the plan
updated-at | datetime when the plan was updated the last time on our system
