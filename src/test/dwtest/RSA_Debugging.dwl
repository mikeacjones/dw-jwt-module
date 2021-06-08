%dw 2.0
output application/json
import dw::jwt::RSA

var key = "-----BEGIN PRIVATE KEY-----
          MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDiSJuWh9PQOUBr
          bbqBGqz9QHdCp9gwKM6asklouPXQSnFsD13ZTGX228S2A4IkBm9IQvfBeKhxcwGB
          WsAg6Os7zEwUQ6Ar2Dxphdb4qwVycXMH8aE2iR/0QeqkT1D3i1ob1rg1JJleStRX
          o83X9dcaLmyO8kyxBrkgvB/Ye46CPQVTIfgwb1XklyeTXA9pMXIif7Ram1T1gIil
          awrQW8w30sKKieo2FWbzAT5906yf/8QqTDhmmkNKHYQNVZpi2dM4pvk1RBs6Tt1m
          w0ECwQGsSYWdvBgMYYuC/hB0hpwNYEA+DwRV1u2+OGozn/yoVY8iW9cE1nuV5PlN
          w78j8jvtAgMBAAECggEAB4UTW0EHy7gUro1EC6rOhrsCoO3cLBuLDs6FIdcLCjaT
          HDIgM7Vg1RTlbbQM+jQBijn5gE3exn251inlJSLVwGllZNirembc+RfCzAWTmy5E
          fPDYI0G9f1vvwjFFlvhj+0qwg/RDqYPHQziqbEvF78o3qYIer3+ySBwgWyIeBgYU
          8dMwISigMKiP6fJJ+6Oc5sz6RULIzOGhVA54W/8Iy0IvOwbk7DXP7R0YJo9Qmh+Q
          vGFtdhDIwEOd/q272Ur3czyZBSrhY5b21B0StBssQ+VS6UVzpOsXSsODaEpJz037
          7Upu6cArky1DVACkyahQG3lvymmX1w0wg6qvMmYLCQKBgQD0JWEPtjf4Dxho5Usw
          lB1MQeKsbfT/3eNPQ7VuWBKQJ/mQg8nz5/PxeHMCbpSafDXXXv+1mTJKsGZjEUOX
          ykjI+sDYNawrqKwGP6cdi5z1B3IPpxwJVadmbFfa40F1DAM8xKtb6SiGSiIBoM1Q
          W4Ryn1Myej786gerHIF6PB2YZQKBgQDtRTUdcuOG3MhUESQbXawvi7PQ9F8sFFdF
          WWM0GF0Lt5NlOxxRbadatQVzkioeicH32X4dAq7rnbKrwkzbZuCMmmFm4FGq40cM
          bhagLXcg7AD3b6mFFejkhnI8IkGz1MUewEtU8m+eAHkf+A+ERT44K1xXfV86+Ad5
          6nlsQ1vo6QKBgEIz3JTxGU4ncbwH6RKcJzGlb/zHuDaliVzWBF2OfkIexNp+EgYU
          cJ6axbz0FVGqusLS3M32Y5/DI5BbfxOq43+0FxTJwQz5qOPs4LjvQbljsncyHjUd
          x83LNSuCkh5WCo6w2bKLj9SSR5RfcS0IE+ss7tdyNKBKKZgpm6Z0pKXNAoGAUeEI
          K1lyWx/lod0ocKkqul2jeABct4FtfGkUau3dbiWzn8N+Sjtk/VBqyS8vicpQPY+4
          jZpXcsfA2LT8gNpHsz2zTyUqCabU5d03wZ7u9VV8H+dQwLSG4hXjZg0MT1qli68g
          T/g5vHS9V+Lqt+KNTiTogOiq7Fabfd8Ed+/mz8ECgYBkh7kICpI6WoLgqwF04nSC
          AfcQL+pHVoQhRkXbh6o3Islib1IZ3djHnv3z8BUnyjcQKYNrpHHEWWp9yAJK4B4o
          9dwYW5QQLmR/CLwMt5m4UikLNR+v3RaabsoKBmctId19ldLa/SNAIoLDa7gIIA8O
          sUTKo79/iZrbVU1P4gZpsA==
          -----END PRIVATE KEY-----"

---
RSA::JWT({
    name: 'Michael Jones',
    iat: now() as Number { unit: "milliseconds" }
}, key)