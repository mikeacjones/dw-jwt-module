%dw 2.0
import dw::jwt::HMAC
var secret = "sjadklfjalksdjfklasjkldfjaskldfjkljasjfkla"
var payload = {
    sub: 1234567890,
    name: "Michael Jones",
    iat: 1516239022
}
---
HMAC::JWT(payload, secret)