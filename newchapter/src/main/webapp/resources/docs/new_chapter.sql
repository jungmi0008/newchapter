-- sequence
create sequence mno_seq;
create sequence pno_seq;
create sequence cno_seq;
create sequence qno_seq;
create sequence ono_seq;
create sequence cart_seq;

-- member 테이블
create table member_tb(
    mno           number(10,0) primary key,
    m_id          varchar2(30) UNIQUE,
    m_name        varchar2(20) not null,
    m_email       varchar2(60) not null,
    m_img         varchar2(100) default 'defualt.jpg',
    m_password    varchar2(45) not null,
    m_birth       varchar2(30) not null,
    m_phone       varchar2(30),
    m_address     varchar2(150) not null,
    m_signup_date date default sysdate
);

-- product 테이블
create table product_tb(
    pno                 number(10,0) primary key,
    p_kind              varchar2(20) not null,
    p_title             varchar2(100) not null,
    p_price             number(10,0) not null,
    p_count             number(10,0) not null,
    p_author            varchar2(20) not null,
    p_publish_company   varchar2(45) not null,
    p_publish_date      date         not null,
    p_img               varchar2(150) not null,
    p_thumbnail         varchar2(150) not null,
    p_introduction      varchar2(1000)not null,
    p_dc_rate           number(3)     not null,
    p_regdate           date   default sysdate
);

-- Comment 테이블
create table comment_tb(
    cno             number(10,0) primary key,
    c_title         varchar2(100),
    c_content       varchar2(500),
    c_regdate       date default sysdate,
    c_update_date   date default sysdate,
    m_id            varchar2(30) not null,
    pno             number(10,0) not null
);

ALTER TABLE comment_tb ADD CONSTRAINT fk_comment1 FOREIGN KEY(m_id) REFERENCES member_tb(m_id) ON DELETE CASCADE;
ALTER TABLE comment_tb ADD CONSTRAINT fk_comment2 FOREIGN KEY(pno) REFERENCES product_tb(pno) ON DELETE CASCADE;

-- Order 테이블
create table order_tb(
    ono             number(10,0) primary key,
    o_count         number(10,0) default 0,
    o_date          date default sysdate,
    o_account       varchar2(45),
    o_address       varchar2(120),
    o_sanction      varchar2(45) default '상품 준비 중',
    
    m_id            varchar2(30) not null,
    pno             number(10,0) not null
);
ALTER TABLE order_tb ADD CONSTRAINT fk_order1 FOREIGN KEY(m_id) REFERENCES member_tb(m_id) ON DELETE CASCADE;
ALTER TABLE order_tb ADD CONSTRAINT fk_order2 FOREIGN KEY(pno) REFERENCES product_tb(pno) ON DELETE CASCADE;

-- cart 테이블
create table cart_tb(
    cart_no             number(10,0) primary key,
    cart_price          number(10,0) default 0,
    cart_count          number(10,0) default 0,
    m_id                varchar2(30) not null,
    pno                 number(10,0) not null
);
ALTER TABLE cart_tb ADD CONSTRAINT fk_cart1 FOREIGN KEY(m_id) REFERENCES member_tb(m_id) ON DELETE CASCADE;
ALTER TABLE cart_tb ADD CONSTRAINT fk_cart2 FOREIGN KEY(pno) REFERENCES product_tb(pno) ON DELETE CASCADE;
