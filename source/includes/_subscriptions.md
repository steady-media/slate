# Subscriptions
## GET /subscriptions
```http
GET /api/v1/subscriptions HTTP/1.1
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
      "type": "subscription",
      "id": "8ef509c7-b8fe-4a56-a366-fadf030bfc64",
      "attributes": {
        "state": "not_renewing",
        "period": "annual"
        "currency": "EUR",
        "monthly-amount": 1000,
        "monthly-amount-in-cents": 1000,
        "inserted-at": "2017-04-08T10:55:31.000000Z",
        "updated-at": "2017-05-01T10:55:31.000000Z",
        "cancelled-at": "2017-05-01T22:00:14.000000Z",
        "trial-ends-at": "2017-05-08T10:55:31.000000Z",
        "active-from": null,
        "expires-at": "2017-05-18T10:55:31.000000Z",
        "rss-feed-url": "https://steadyhq.com/rss/your-publication?auth=6d58b391-156a-4e88-93ff-3fe773f4394d"
      },
      "relationships": {
        "plan": {
          "data": {
            "type": "plan",
            "id": "00083e16-668b-4bc4-8669-927daa408a1c"
          }
        },
        "subscriber": {
          "data": {
            "type": "user",
            "id": "ffc41bfd-871b-4376-8e02-8729c752b2af"
          }
        }
      }
    },
    ...
  ],
  "included": [
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
    {
      "type": "user",
      "id": "ffc41bfd-871b-4376-8e02-8729c752b2af",
      "attributes": {
        "email": "alice@example.com",
        "first-name": "Alice",
        "last-name": "Munro",
        "avatar-url": "https://steady.imgix.net/gfx/defaults/user/avatar.png?auto=format&crop=faces&fit=crop&fm=png&h=200&mask=ellipse&w=200"
      }
    },
    ...
  ]
}
```

`GET https://steadyhq.com/api/v1/subscriptions`

Returns an array with all current subscriptions of the publication.

### Attributes
<%= Helper.render_shared("_subscription_attributes.md") %>

## POST /subscriptions/:subscription_id/cancel
```http
POST /api/v1/subscriptions/8ef509c7-b8fe-4a56-a366-fadf030bfc64/cancel HTTP/1.1
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
    "type": "subscription",
    "id": "8ef509c7-b8fe-4a56-a366-fadf030bfc64",
    "attributes": {
      "state": "not_renewing",
      "period": "annual"
      "currency": "EUR",
      "monthly-amount": 1000,
      "monthly-amount-in-cents": 1000,
      "inserted-at": "2017-04-08T10:55:31.000000Z",
      "updated-at": "2017-05-01T10:55:31.000000Z",
      "cancelled-at": "2017-05-01T22:00:14.000000Z",
      "trial-ends-at": "2017-05-08T10:55:31.000000Z",
      "active-from": null,
      "expires-at": "2017-05-18T10:55:31.000000Z",
      "rss-feed-url": "https://steadyhq.com/rss/your-publication?auth=6d58b391-156a-4e88-93ff-3fe773f4394d"
    },
    "relationships": {
      "plan": {
        "data": {
          "type": "plan",
          "id": "00083e16-668b-4bc4-8669-927daa408a1c"
        }
      },
      "subscriber": {
        "data": {
          "type": "user",
          "id": "ffc41bfd-871b-4376-8e02-8729c752b2af"
        }
      }
    },
    "included": [
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
      {
        "type": "user",
        "id": "ffc41bfd-871b-4376-8e02-8729c752b2af",
        "attributes": {
          "email": "alice@example.com",
          "first-name": "Alice",
          "last-name": "Munro",
          "avatar-url": "https://steady.imgix.net/gfx/defaults/user/avatar.png?auto=format&crop=faces&fit=crop&fm=png&h=200&mask=ellipse&w=200"
        }
      }
    ]
  }
}
```

`POST https://steadyhq.com/api/v1/subscriptions/:subscription_id/cancel`

Cancels a subscription respecting the end of the current term.

In case the subscription can't be canceled (e.g. because it already is cancelled),
a response with status code 422 will be returned.

### Attributes
Attribute | Description
--------- | -----------
state | not_renewing
period | monthly / annual — the period of the contract of the user
currency | currency for all `*-amount`-fields. Represented with 3 uppercase letters, e.g: `EUR`, `USD`, `SEK`,…
monthly-amount | monthly amount of the associated plan (users don't pay in states in_trial and guest)
monthly-amount-in-cents | **DEPRECATED** Use `monthly-amount` instead.
inserted-at | datetime of the creation of the subscription
updated-at | datetime when the subscription was updated the last time on our system
cancelled-at | datetime of the cancellation / null
trial-ends-at | datetime when the subscription's trial period will end or has ended / null
active-from | datetime when the subscription was paid for the first time/ null
expires-at | datetime when the subscription will expire / null
rss-feed-url | if you use our podcast features, this is the rss-feed url with authentication for the subscriber
