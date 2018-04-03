# Users
## Current basic data
```http
GET /api/v1/users/me HTTP/1.1
Accept: application/vnd.api+json
Authorization: Bearer OAUTH2_ACCESS_TOKEN
Host: steadyhq.com
```
```http
HTTP/1.1 200 OK
Content-Type: application/vnd.api+json; charset=utf-8
```
```javascript
{
  "data": {
    "type": "user",
    "id": "5e7607b0-1458-41e4-b6bc-e6301c39e7da",
    "attributes": {
      "first-name": "Jane",
      "last-name": "Doe",
      "email": "jane.doe@example.com",
      "has-password": true
    }
  }
}
```

`GET https://steadyhq.com/api/v1/users/me`

Returns the current basic user data for the user associated with the *access token*.

### Needed scope of access_token:
read

### Attributes
Attribute | Description
--------- | -----------
first-name | first name of the user
last-name | last name of the user
email | email address of the user
has-password | whether the user has set a password for his account
