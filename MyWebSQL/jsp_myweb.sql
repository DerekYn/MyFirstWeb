------------- **** JSP & Servlet **** -----------------

show user;

--- 회원 테이블 생성 ---
create table jsp_member
(
  idx           number(10)    not null,   -- 회원 번호(시퀀스로 데이터가 들어온다.)
  userid        varchar2(20)  not null,   -- 회원 아이디
  name          varchar2(30)  not null,   -- 회원 명
  pwd           varchar2(15)  not null,   -- 비밀번호
  email         varchar2(50)  not null,   -- 이메일
  hp1           char(3),                  -- 핸드폰 번호
  hp2           char(4),                  -- 핸드폰 번호
  hp3           char(4),                  -- 핸드폰 번호
  post1         char(3),                  -- 우편 번호
  post2         char(3),                  -- 우편 번호
  addr1         varchar2(200),            -- 집 주소
  addr2         varchar2(200),            -- 집 주소
  registerday   date default sysdate,      -- 가입 일자
  status        number(1) default 1,       -- 회원탈퇴 유무   1: 사용가능(가입중) / 0: 사용불가(가입X)
  constraint    PK_jsp_member_idx primary key(idx),
  constraint    UQ_jsp_member_userid unique(userid),
  constraint    CK_jsp_member_status check( status in(0, 1) )
);

create sequence seq_jsp_member
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into jsp_member(idx, userid, name, pwd, email, hp1, hp2, hp3, post1, post2, addr1, addr2)
values(seq_jsp_member.nextval, 'hansk', '한석규', 'qwer1234$', 'hansk@naver.com', '010', '111', '1234', '150', '010', '서울 종로구 인사동', '1번지 201호');

insert into jsp_member(idx, userid, name, pwd, email, hp1, hp2, hp3, post1, post2, addr1, addr2)
values(seq_jsp_member.nextval, 'dusk', '두석규', 'qwer1234$', 'dusk@naver.com', '010', '222', '1234', '150', '010', '서울 종로구 인사동', '2번지 202호');

insert into jsp_member(idx, userid, name, pwd, email, hp1, hp2, hp3, post1, post2, addr1, addr2)
values(seq_jsp_member.nextval, 'sesk', '세석규', 'qwer1234$', 'sesk@naver.com', '010', '333', '1234', '150', '010', '서울 종로구 인사동', '3번지 203호');

insert into jsp_member(idx, userid, name, pwd, email, hp1, hp2, hp3, post1, post2, addr1, addr2)
values(seq_jsp_member.nextval, 'nesk', '네석규', 'qwer1234$', 'nesk@naver.com', '010', '444', '1234', '150', '010', '서울 종로구 인사동', '4번지 204호');


select idx, userid, name, pwd, email, hp1, hp2, hp3, post1, post2, addr1, addr2,
       to_char(registerday, 'yyyy-mm-dd') as registerday,
       status
from jsp_member
order by idx desc;


--- ID 중복검사 쿼리문 ---
select count(*) AS CNT
from jsp_member
where userid = 'hansk';


---- **** 우편번호 테이블 **** ----
create table tbl_post
(
  zipcode   varchar2(20),    -- 우편번호
  sido      varchar2(40),    -- 특별시, 광역시, 도
  gugun     varchar2(40),    -- 시, 군, 구
  dong      varchar2(400),   -- 읍, 면, 동, 리, 건물명
  bunji     varchar2(400),   -- 번지, 아파트 동, 호수
  seq       number,          -- 데이터 순서
  constraint PK_tbl_post_seq primary key(seq)
);  


select *
from tbl_post
order by seq;   -- 52144


select count(*)
from tbl_post
order by seq;   -- 52144


---- **** 우편번호 테이블 **** ----
create table jsp_tblpost
(
  post1     varchar2(10),    -- 우편번호1
  post2     varchar2(10),    -- 우편번호2
  sido      varchar2(40),    -- 특별시, 광역시, 도
  gugun     varchar2(40),    -- 시, 군, 구
  dong      varchar2(400),   -- 읍, 면, 동, 리, 건물명
  bunji     varchar2(400),   -- 번지, 아파트 동, 호수
  seq       number,          -- 데이터 순서
  constraint PK_jsp_tblpost_seq primary key(seq)
);  


insert into jsp_tblpost
select substr(zipcode,1,3), substr(zipcode,5), sido, gugun, dong, bunji, seq
from tbl_post
order by seq asc;


commit;

select *
from jsp_tblpost
order by seq asc;


select post1, post2,
       sido || ' ' || gugun || ' ' || dong || ' ' || bunji AS ADDRESS
from jsp_tblpost
where dong like '%' || '오금' || '%'
order by post1, post2;


select idx, userid, name, pwd, email, hp1, hp2, hp3, post1, post2, addr1, addr2,
       to_char(registerday, 'yyyy-mm-dd') as registerday,
       status
from jsp_member
where status = 1
order by idx desc;

update jsp_member set status = 1;

commit;

--------------------------------------------------------------------------------------------------------------------

-- *** 페이징 처리를 위해서 회원을 많이 가입 시켜본다. *** --

declare
  v_cnt number(3) := 1;
begin
  loop
    insert into jsp_member(idx, name, userid, pwd, email,
                           hp1, hp2, hp3, post1, post2, addr1, addr2)
    values(seq_jsp_member.nextval, '홍길동'||v_cnt, 'hongkd'||v_cnt, 'qwer1234$', 'hongkd'||v_cnt||'@naver.com',
           '010', '6743', '1834', '150', '351', '서울시 강남구 대치동', v_cnt||'번지');
    v_cnt := v_cnt + 1;
  exit when v_cnt > 80;
  end loop;
end;

commit;

declare
  v_cnt number(3) := 1;
begin
  loop
    insert into jsp_member(idx, name, userid, pwd, email,
                           hp1, hp2, hp3, post1, post2, addr1, addr2)
    values(seq_jsp_member.nextval, '김태희'||v_cnt, 'kimth'||v_cnt, 'qwer1234$', 'kimth'||v_cnt||'@gmail.com',
           '010', '9631', '2784', '682', '138', '서울시 강북구 미아동', v_cnt||'번지');
    v_cnt := v_cnt + 1;
  exit when v_cnt > 37;
  end loop;
end;

commit;

declare
  v_cnt number(3) := 1;
begin
  loop
    insert into jsp_member(idx, name, userid, pwd, email,
                           hp1, hp2, hp3, post1, post2, addr1, addr2)
    values(seq_jsp_member.nextval, '엄정화'||v_cnt, 'eom'||v_cnt, 'qwer1234$', 'eom'||v_cnt||'@daum.net',
           '010', '3669', '7784', '325', '218', '서울시 강동구 천호동', v_cnt||'번지');
    v_cnt := v_cnt + 1;
  exit when v_cnt > 80;
  end loop;
end;

commit;


select idx, userid, name, pwd, email, hp1, hp2, hp3, post1, post2, addr1, addr2,
       to_char(registerday, 'yyyy-mm-dd') as registerday,
       status
from jsp_member
order by idx desc;



select count(*)
from jsp_member;


select rownum AS RNO, idx, name, userid, pwd, email, hp1, hp2, hp3, post1, post2,
       addr1, addr2, registerday, status
from
(
  select idx, name, userid, pwd, email, hp1, hp2, hp3, post1, post2,
         addr1, addr2, registerday, status
  from jsp_member
  where status = 1
  order by idx desc
) V;


select count(*) AS CNT
from jsp_member
where status = 1;


select  RNO, idx, name, userid, pwd, email, hp1, hp2, hp3, post1, post2,
        addr1, addr2, registerday, status
from
(
  select rownum AS RNO, idx, name, userid, pwd, email, hp1, hp2, hp3, post1, post2,
         addr1, addr2, registerday, status
  from
  (
    select idx, name, userid, pwd, email, hp1, hp2, hp3, post1, post2,
           addr1, addr2, registerday, status
    from jsp_member
    where status = 1
    order by idx desc
  ) V
  where registerday between sysdate-3 and sysdate
) T
where T.RNO between 1 and 200;




update jsp_member set registerday = registerday + 2
where idx between 216 and 222;

commit;

select idx, userid, name, pwd, email, hp1, hp2, hp3, post1, post2, addr1, addr2,
       to_char(registerday, 'yyyy-mm-dd') as registerday,
       status
from jsp_member
order by idx desc;

select name, email, hp1, hp2, hp3, post1, post2, addr1, addr2
from jsp_member
where idx = 202;

