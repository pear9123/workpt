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

>앱키를 헤더에 담아 GET으로 요청합니다. 검색어와 함께 결과 형식 파라미터의 값을 선택적으로 추가할 수 있습니다.

| 키              | 설명                         | 필수                           | 타입                               |
|-----------------|-----------------------------|-------------------------------|-------------------------------------|
| query           | 검색을 원하는 질의어          | O                              |   String                           |
| sort            | 결과 문서 정렬 방식           | X(accuracy)                    | accurary(정확도순)or latest(최신순) |
| page            | 결과 페이지 번호              | X(기본 1)                      | 1-100 사이 Integer                 |
| size            | 한 페이지에 보여질 문서의 개수 | X(기본 10)                     | 1-50 사이 Integer                  |
| target          | 검색 필드 제한                | X                             | title(제목)<br/>isbn(isbn)<br/>publisher(출판사)<br/>person(인명)  |

