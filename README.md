# From this [this tutorial](https://www.pluralsight.com/guides/token-based-authentication-with-ruby-on-rails-5-api)
[heres the github](https://github.com/hggeorgiev/rails-jwt-auth-tutorial/blob/master/README.md)

- I had to update the lib/json_web_token file

```
module JsonWebToken
  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, Rails.application.credentials.secret_key_base)
  end

  def self.decode(token)
    body = JWT.decode(token, Rails.application.credentials.secret_key_base)[0]
    HashWithIndifferentAccess.new body
  rescue
    nil
  end
end
```

- in post man, 

```
post http://localhost:3000/authenticate
headers: Content-Type: application/json
body: {"email":"pep@mail.com","password":"123"}
```

- it returned a token for me
- then 

```
get: http://localhost:3000/items
bearer token: <enter token>
```