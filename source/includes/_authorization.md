# Authorization

> To authorize, add "Authorization" as request header field.

```http
GET /api/v1/users/me HTTP/1.1
Accept: application/vnd.api+json
Authorization: Bearer OAUTH2_ACCESS_TOKEN
Host: steadyhq.com
```
> Make sure to replace `OAUTH2_ACCESS_TOKEN` with the *access token* of the user you make the request for.

Steady relies on [bearer tokens](https://tools.ietf.org/html/rfc6750) in the "Authorization" request header field.

`Authorization: Bearer OAUTH2_ACCESS_TOKEN`

<aside class="notice">
  You must replace <code>OAUTH2_ACCESS_TOKEN</code> with the <i>access token</i> of the user you make the request for.
</aside>
