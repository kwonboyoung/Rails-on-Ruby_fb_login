RESTful
== 정해진 규칙을 따라 만드는 CRUD
참고 자료 : http://meetup.toast.com/posts/92

1) URI는 정보의 자원을 표현해야 한다. (리소스명은 동사보다는 명사를 사용)
GET /members/delete/1 => rest를 제대로 적용하지 않은 uri

2) 자원에 대한 행위는 HTTP Method(GET, POST, PUT, DELETE 등)로 표현
DELETE /members/1

POST	POST를 통해 해당 URI를 요청하면 리소스를 생성합니다.
GET	GET를 통해 해당 리소스를 조회합니다. 리소스를 조회하고 해당 도큐먼트에 대한 자세한 정보를 가져온다.
PUT	PUT를 통해 해당 리소스를 수정합니다.
DELETE	DELETE를 통해 리소스를 삭제합니다.

규칙들
1. routing은 restful하게
2. resource는 복수형
=> controller의 이름은 복수형
3. 단, 모델은 단수형



* 페이스북 연동 
 gem 'better_errors'
 gem 'binding_of_caller' 추가

- gem devise 추가(자동 로그인기능)
kby0618:~/workspace $ rails g devise:install
시키는 거 한 후에
kby0618:~/workspace $ rails g devise user
kby0618:~/workspace $ rake db:migrate

https://developers.facebook.com/


https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview 참고

https://fb-board-kby0618.c9users.io/users/auth/facebook/callback


