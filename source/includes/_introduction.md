# Introduction

Welcome to the Steady API!

You can use our API to obtain limited read access to Steady user accounts in the scope of your project.
Our API is designed following the [JSON API specification](http://jsonapi.org).

We implement the [OAuth 2.0 authorization framework](https://tools.ietf.org/html/rfc6749) so that you can get access to Steady on behalf of the user, if the user approves that.

With our API endpoints, only accessible via HTTPS, you have access to the user entity as well as the subscription status of the user.
Based on this information you can implement authorization for the user in your application.

You can view code examples in the dark area to the right, and see example response data for each request.