# Subscriptions
## Current status
```http
GET /api/v1/subscriptions/me HTTP/1.1
Accept: application/vnd.api+json
Authorization: Bearer OAUTH2_ACCESS_TOKEN
Host: steadyhq.com
```
```http
HTTP/1.1 200 OK
Content-Type: application/vnd.api+json; charset=utf-8
```
```javascript
// when the user has an active subscription
{
  "data": {
    "type": "subscription",
    "id": "8ef509c7-b8fe-4a56-a366-fadf030bfc64",
    "attributes": {
      "state": "not_renewing",
      "cancelled-at": "2017-05-01T22:00:14.000000Z",
      "expires-at": "2017-05-18T10:55:31.000000Z",
      "monthly-amount-in-cents": 1000,
      "period": "monthly"
    }
  },
  "included": [{
    "type": "plan",
    "id": "b9d7574f-5246-4c94-ade5-1d4e9b169afc",
    "attributes": {
      "name": "Gold plan",
      "image-url": "https://steady.imgix.net/gfx/steady_logo.svg"
    }
  }]
}

// when the user has no active subscription
{
  "data": null
}
```

`GET https://steadyhq.com/api/v1/subscriptions/me`

Returns infos about the current active subscription for the user associated with the *access token*.
If the user has no subscription, or it has expired, the data attribute of the response is *null*.

### Needed scope of access_token:
read

### Subscription attributes
Attribute | Description
--------- | -----------
state | in_trial / active / not_renewing
cancelled-at | datetime of the cancellation / null
expires-at | datetime when the subscription will expire / null
monthly-amount-in-cents | amount the user pays per month in cents
period | monthly / annual — the period of the contract of the user

### Plan attributes
Attribute | Description
--------- | -----------
name | name of the plan
image-url | plan image url / null
