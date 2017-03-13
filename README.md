# fontmaker
가천대학교 졸업 팀프로젝트

## member
김혜림(조장), 이현주(팀원), 유원상()

## rule
- 되도록이면 doc(문서), ref(참고자료), script(도움되는 스크립트)는 공통적인 성격이기떄문에 master branch 에서 작업후에 push 해주세요. 

- 개발중(미작동)인 상태일때는 dev-* branch 에서 작업하시고 작은 모듈 또는 부분적인 기능이 완성됬을때 작동여부 테스트한후 간단한 설명과 함께 pull request 를 보내주세요. merge 작업 하겠습니다.

## preview
```
fontmaker(root)
│
├─ doc
│  └─ spec
│
├─ ref
│
├─ script
│
├─ opencv
│
├─ caffe
│
├─ server
│  │
│  ├─ bin
│  │  ├─ clang-format
│  │  └─ fontforge
│  │  
│  ├─ include
│  │  ├─ asio
│  │  ├─ openssl
│  │  └─ fontforge
│  │ 
│  ├─ lib
│  │  ├─ boost
│  │  ├─ openssl
│  │  └─ fontforge
│  │
│  └─ webserver
│     ├─ main.cpp
│     ├─ etc..
│ 
└─ web
```
