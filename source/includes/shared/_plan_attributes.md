Attribute | Description
--------- | -----------
state | published / archived
name | name of the plan
currency | EUR / USD / SEK
monthly-amount | the amount a user with a monthly contract has to pay per month
monthly-amount-in-cents | **DEPRECATED** Use `monthly-amount` instead.
annual-amount | the amount a user with an annual contract has to pay per year
annual-amount-in-cents | **DEPRECATED** Use `annual-amount` instead.
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
