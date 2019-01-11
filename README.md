# workpt
사내 사용할수있는 기능(포탈)

# KAKAO API
## 책 검색
```
[Request]
GET /v3/search/book HTTP/1.1
Host : dapi.kakao.com
Authorization : KakaoAK {app_key}
```

>앱키를 헤더에 담아 GET으로 요청합니다. 원하는 검색어와 함께 결과 형식 파라미터의 값을 선택적으로 추가할 수 있습니다.
