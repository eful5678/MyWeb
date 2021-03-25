# 프로젝트 개요

## **목차**

- <a href="#db">DB 테이블</a>
- <a href="#member">회원관리</a>
- <a href="#freeboard">게시판</a>

---

## <a name="db">**DB Table**</a>

- my_member : 회원관리
- my_board : 자유 게시판

```sql


```

---

## <a name="member">**회원관리**</a>

- <span style="color:orange">**Model**</span>
  - join.jsp
  - login.jsp
  - editForm.jsp
  - check.jsp
- View
- Controller
- <span style="color:orange">**기능**</span>
  - 회원가입
    - 빈칸 체크
    - id 중복 여부 체크
  - 로그인 / 로그아웃
    - 빈칸 체크
    - 회원정보를 조회하여 id/pwd가 틀리면 메시지 출력
  - 회원정보 수정 / 탈퇴
- <span style="color:orange">**구현 예정 기능**</span>
  - 닉네임 추가

---

## <a name="freeboard">**게시판 - 자유게시판**</a>

- <span style="color:green">**Model**</span>
- <span style="color:green">**View**</span>
- <span style="color:green">**Controller**</span>
- <span style="color:green">**기능**</span>
  - 글 작성
  - 글 수정 / 삭제
  - 조회수
- <span style="color:green">**구현 예정 기능**</span>
