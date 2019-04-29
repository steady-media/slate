Attribute | Description
--------- | -----------
state | guest / in_trial / active / not_renewing
period | monthly / annual — the period of the contract of the user
currency | EUR / USD / SEK
monthly-amount | monthly amount of the associated plan (users don’t pay in states in_trial and guest)
monthly-amount-in-cents | **DEPRECATED** Use `monthly-amount` instead.
inserted-at | datetime of the creation of the subscription
updated-at | datetime when the subscription was updated the last time on our system
cancelled-at | datetime of the cancellation / null
trial-ends-at | datetime when the subscription's trial period will end or has ended / null
active-from | datetime when the subscription was paid for the first time/ null
expires-at | datetime when the subscription will expire / null
rss-feed-url | if you use our podcast features, this is the rss-feed url with authentication for the subscriber
