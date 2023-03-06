-- 개인 유저 테이블
INSERT INTO employee (employee_name, employee_password, employee_fullname, employee_email, employee_tel, employee_gender, employee_birth, employee_address, employee_info_thumbnail, created_at)
VALUES
('ssar', '1234', '홍길동', 'ssar@ssar.com', '01011111111', 'M', '1990-01-01', '서울특별시 강남구', NULL, NOW()),
('cos', '1234', '최성훈', 'cos@cos.com', '01022222222', 'M', '1991-01-01', '서울특별시 강북구', NULL, NOW()),
('love', '1234', '장보고', 'love@love.com', '01033333333', 'M', '1992-01-01', '서울특별시 강서구', NULL, NOW()),
('toby', '1234', '김동훈', 'toby@toby.com', '01044444444', 'M', '1993-01-01', '서울특별시 강동구', NULL, NOW()),
('alice', '1234', '앨리스', 'alice@alice.com', '01055555555', 'F', '1994-01-01', '서울특별시 관악구', NULL, NOW()),
('cat', '1234', '김토끼', 'cat@cat.com', '01066666666', 'F', '1995-01-01', '서울특별시 강서구', NULL, NOW()),
('dog', '1234', '박강아지', 'dog@dog.com', '01077777777', 'F', '1996-01-01', '서울특별시 성북구', NULL, NOW()),
('elephant', '1234', '정코끼리', 'elephant@elephant.com', '01088888888', 'F', '1997-01-01', '서울특별시 은평구', NULL, NOW()),
('fox', '1234', '신여우', 'fox@fox.com', '01099999999', 'F', '1998-01-01', '서울특별시 노원구', NULL, NOW()),
('grape', '1234', '김포도', 'grape@grape.com', '01000000000', 'F', '1999-01-01', '서울특별시 양천구', NULL, NOW()),
('apple', 'abcd1234', '김사과', 'apple@apple.com', '01011112222', 'M', '1995-05-05', '서울특별시 강남구', NULL, NOW()),
('banana', 'abcd1234', '반하나', 'banana@banana.com', '01022223333', 'F', '1996-06-06', '경기도 용인시', NULL, NOW()),
('cherry', 'abcd1234', '박체리', 'cherry@cherry.com', '01033334444', 'M', '1997-07-07', '인천광역시 서구', NULL, NOW()),
('kiwi', 'abcd1234', '김키위', 'kiwi@kiwi.com', '01044445555', 'F', '1998-08-08', '대전광역시 서구', NULL, NOW()),
('melon', 'abcd1234', '이메론', 'melon@melon.com', '01055556666', 'M', '1999-09-09', '부산광역시 동래구', NULL, NOW());

-- 학교명 테이블 (관리자가 생성)
INSERT INTO school_master (school_name, created_at) VALUES
('한양대학교', NOW()),
('서강대학교', NOW()),
('연세대학교', NOW()),
('중앙대학교', NOW()),
('서울대학교', NOW()),
('성균관대학교', NOW()),
('부산대학교', NOW()),
('부경대학교', NOW()),
('고려대학교', NOW()),
('연세대학교', NOW()),
('포항공대', NOW()),
('건국대학교', NOW()),
('경희대학교', NOW()),
('동국대학교', NOW()),
('명지대학교', NOW()),
('서강대학교', NOW());





-- 자격증명 테이블 (관리자가 생성)
INSERT INTO license_master (license_name, created_at) VALUES
('정보처리기사', NOW()),
('정보보안기사', NOW()),
('SQLD', NOW()),
('SQLP', NOW()),
('CCNA', NOW()),
('CCNP', NOW()),
('CISA', NOW()),
('CISSP', NOW()),
('SCJP', NOW()),
('SCJD', NOW());

-- 기술스택 테이블 (관리자가 생성)
INSERT INTO stack_master (stack_name, created_at) VALUES
('Java', NOW()),
('Python', NOW()),
('JavaScript', NOW()),
('C#', NOW()),
('PHP', NOW()),
('Ruby', NOW()),
('Swift', NOW()),
('Objective-C', NOW()),
('Kotlin', NOW()),
('Go', NOW());

-- employee의 최종학력 테이블
INSERT INTO employee_graduate (employee_id, school_id, school_graduate, created_at)
VALUES
(1, 1, '졸업', NOW()),
(2, 2, '재학중', NOW()),
(3, 3, '졸업', NOW()),
(4, 4, '재학중', NOW()),
(5, 5, '졸업', NOW()),
(6, 1, '졸업', NOW()),
(7, 2, '재학중', NOW()),
(8, 3, '졸업', NOW()),
(9, 4, '재학중', NOW()),
(10, 5, '졸업', NOW());

-- 경력사항 테이블
INSERT INTO employee_career (employee_id, career_company, career_start, career_end, created_at)
VALUES
(1, '네이버', '2015-01-01', '2017-12-31', NOW()),
(1, '카카오', '2018-01-01', '2020-06-30', NOW()),
(2, 'CJ ENM', '2016-04-01', '2018-03-31', NOW()),
(2, 'SK 텔레콤', '2018-04-01', '2021-03-31', NOW()),
(3, 'NC 소프트', '2017-07-01', '2019-06-30', NOW()),
(3, '네이버', '2019-07-01', '2021-06-30', NOW()),
(4, '삼성전자', '2018-05-01', '2020-04-30', NOW()),
(4, 'LG 전자', '2020-05-01', '2022-02-28', NOW()),
(5, '카카오', '2019-01-01', '2021-12-31', NOW()),
(6, 'SK 하이닉스', '2020-02-01', '2022-01-31', NOW());

-- employee의 자격증 테이블
INSERT INTO employee_license (employee_id, license_id, license_issuer, created_at)
VALUES
    (1, 1, '한국산업인력공단', NOW()),
    (1, 2, '한국산업인력공단', NOW()),
    (2, 1, '한국산업인력공단', NOW()),
    (2, 3, '한국교육개발원', NOW()),
    (3, 2, '한국교육개발원', NOW()),
    (3, 3, '한국산업인력공단', NOW()),
    (4, 2, '한국산업인력공단', NOW()),
    (4, 3, '한국산업인력공단', NOW()),
    (5, 1, '한국교육개발원', NOW()),
    (5, 2, '한국산업인력공단', NOW());

-- employee의 기술스택 테이블
INSERT INTO employee_stack (employee_id, stack_id, stack_acquisition, created_at) VALUES
(1, 1, '자바 기초 문법 숙지 및 간단한 프로그램 작성 가능', NOW()),
(1, 2, '파이썬 기초 문법 숙지 및 간단한 데이터 분석/처리 프로그램 작성 가능', NOW()),
(2, 3, '자바 기초 문법 숙지 및 간단한 프로그램 작성 가능', NOW()),
(2, 4, '자바스크립트를 활용한 간단한 웹 페이지 제작 가능', NOW()),
(3, 5, 'C# 기초 문법 숙지 및 간단한 데스크톱 애플리케이션 작성 가능', NOW()),
(3, 6, '파이썬 기초 문법 숙지 및 간단한 데이터 분석/처리 프로그램 작성 가능', NOW()),
(4, 7, '스위프트 기초 문법 숙지 및 간단한 iOS 애플리케이션 작성 가능', NOW()),
(4, 8, 'Objective-C 기초 문법 숙지 및 간단한 iOS 애플리케이션 작성 가능', NOW()),
(5, 9, 'Kotlin 기초 문법 숙지 및 안드로이드 애플리케이션 작성 가능', NOW()),
(5, 10, 'Go 기초 문법 숙지 및 간단한 CLI 프로그램 작성 가능', NOW());

-- 기업 테이블
INSERT INTO company (company_username, company_password, company_fullname, company_ceo_name, company_license_number, company_tel, company_address, company_email, company_thumbnail, company_establish, company_sales, company_employees_number, company_introduction, company_history, company_vision, created_at)
VALUES
('SAMSUNG', '1234', '삼성', '박지연', '010-4444-5510', '02-123-4567', '서울특별시 중구 소공로 1 (충무로1가) 서울특별시청', 'samsung@example.com', '/images/samsung.png', '2010-01-01', 3000000, 1000, '삼성전자는 전자제품 및 디지털 미디어 분야에서 세계적인 기업으로, 혁신적인 기술력과 창의적인 아이디어를 바탕으로 끊임없이 발전하고 있습니다.', '1969년에 창업된 삼성전자는 전자 제품 제조 회사로 시작하여 지금은 세계적인 IT 기업으로 성장하였으며, 대한민국을 대표하는 기업 중 하나이다. 삼성전자는 기술 혁신과 투자에 집중하여 경쟁력을 유지하며, 다양한 제품 라인업과 글로벌 마케팅 전략을 바탕으로 글로벌 시장에서 활발한 활동을 이어가고 있습니다.', '삼선전자는 선도적인 기술과 혁신적인 아이디어를 통해 혁신적인 제품과 서비스를 제공하며, 글로벌 시장에서 성장하고 있습니다. 또한, 지속가능한 경영과 사회적 책임을 중요하게 생각하며, 사람과 환경을 고려한 경영을 추구합니다. 이러한 비전과 가치를 바탕으로 삼선전자는 더 나은 미래를 만들어가고 있습니다.', NOW()),
('NAVER', '1234', '네이버', '임수정', '010-1514-7652', '02-123-4567', '경기도 수원시 장안구 하광교동 경기도교육청', 'NAVER@naver.com', '/images/NAVER.png', '2002-01-01', 3500000, 5000, '네이버는 한국을 대표하는 포털 사이트로, 검색, 뉴스, 쇼핑, 지도 등 다양한 서비스를 제공하며 국내 인터넷 시장에서 주도적인 역할을 하고 있습니다. 또한 AI, 클라우드, 메신저 등의 분야에 집중하여 성장하고 있으며, 국내 최대의 인터넷 기업 중 하나입니다.', '네이버는 검색 서비스를 시작으로 2002년에는 웹툰 서비스 밴투 출시를 통해 콘텐츠 분야에 진출하였습니다. 그리고 2021년에는 NHN과의 합병을 완료하여 코스피 시가총액 1위 기업이 되었습니다. 이처럼 네이버는 꾸준한 성장과 기술력으로 국내 최대 인터넷 기업 중 하나로 자리 잡았습니다.','네이버의 비전은 커넥트 노하우를 통해 개인과 기업, 지역과 국가, 그리고 사람과 사람을 연결하는 것입니다. 또한 인공지능, 클라우드, 플랫폼 등의 최신 기술을 활용하여 혁신적인 서비스를 제공하며, 전 세계 사람들의 삶을 변화시키는 글로벌 기업으로 성장하고자 합니다. 이를 통해 더욱 풍요로운 미래를 만들어가고 있습니다.', NOW()),
('KAKAO', '1234', '카카오', '임수영', '010-4236-5789', '02-123-4567', '경기도 성남시 분당구 판교로228번길 15 네이버 그린팩토리', 'kakao@example.com', '/images/kakao.jpg', '2010-01-01', 3700000, 2000, '카카오는 대한민국을 대표하는 인터넷 기업 중 하나로, 모바일 메신저 카카오톡을 비롯하여 다양한 서비스를 제공하고 있습니다. 또한 인공지능, 대화형 AI, 자율주행 등의 분야에 집중하여 성장하고 있으며, 국내외에서 인기 있는 기업 중 하나입니다.', '카카오는 2010년에 창립되어 현재까지 다양한 분야에서 성장하고 있습니다.', '2010년에 카카오가 설립되어 모바일 메신저 카카오톡을 출시하였고, 이후 다양한 분야에 진출하였습니다. 2015년에는 자율주행 자동차 기술 개발을 위한 카카오엔터프라이즈를 설립하였으며, 2021년에는 미국 증시에 상장하여 국내 IT 기업 중 처음으로 시총 100조원을 돌파하였습니다. 이처럼 카카오는 꾸준한 성장을 이어가며 전 세계에서 주목받고 있는 기업 중 하나입니다', NOW()),
('LINE', '1234', '주식회사 라인', '박하선', '010-5964-6790', '02-1234-5678', '서울특별시 송파구 석촌호수로 94 (잠실동)', 'yvonne84@outlook.com', '/images/LINE.png', '2010-09-01', 3200000, 2531, '라인은 전 세계 42개국에서 2억 7천만 명이 사용하는 모바일 메신저 및 인터넷 서비스를 제공하는 기업입니다. 라인은 일본의 인기 모바일 메신저로 시작하여 현재는 대한민국을 비롯한 전 세계에서 다양한 서비스를 제공하고 있는 기업입니다. 카카오톡과 함께 국내 모바일 메신저 시장을 주도하고 있으며 블록체인 등의 분야에도 집중하여 성장하고 있습니다.', '라인은 2011년 일본의 인기 모바일 메신저로 출발하여 2012년 대한민국에서도 서비스를 시작하였습니다. 그 이후 라인플러스, 라인페이, 라인몰 등 다양한 서비스를 출시하며 국내외에서 인기를 얻었습니다. 또한 AI, 클라우드, 블록체인 등의 분야에도 진출하여 성장하고 있습니다.', '인공지능, 클라우드, 블록체인 등 다양한 기술을 활용하며, 글로벌 시장에서 선도적인 기업으로 성장하고자 합니다. 또한 일상에서 경험하는 모든 것을 라인이 만들어가는 새로운 세상을 꿈꾸고 있습니다.', NOW()),
('SK', '1234', 'SK하이닉스', '조인성', '010-4523-6780', '02-1234-5678', '대전광역시 중구 태평로 1번길 92 대전시청', 'lwilliams57@outlook.com', '/images/sk.png', '2010-09-01', 3000000, 2531, 'SK 하이닉스는 대한민국의 반도체 제조 기업 중 하나로, DRAM, NAND Flash 등 다양한 제품을 생산하여 세계적으로 인기 있는 기업 중 하나입니다.', 'SK 하이닉스는 1983년에 한국외국인투자촉진공사(KOTRA)와 협력하여 삼성전자와 공동으로 삼성종합반도체를 설립하였고, 2012년 SK 그룹의 자회사가 되면서 현재의 이름으로 변경되었습니다.', 'SK 하이닉스의 비전은 사람과 삶을 바꾸는 기술의 힘입니다. 이를 위해 세계 최고 수준의 반도체 기술을 보유하고 있으며, 인공지능, 자율주행 등의 기술에도 집중하여 새로운 가치를 창출하고자 합니다. 또한 지속 가능한 발전과 환경 보호에도 힘쓰며, 세계에서 가장 뛰어난 기술과 가장 사랑받는 기업이 되기 위해 노력하고 있습니다.', NOW()),
('KT', '1234', 'KT', '조성모', '010-4523-6780', '02-1234-5678', '인천광역시 남동구 예술로 350 (구월동) 인천직할시청', 'vcontreras39@yahoo.com', '/images/KT.jpg', '2010-09-01', 3005000, 401, 'KT는 대한민국의 대표적인 통신사 중 하나로, 유선/무선 인터넷, IPTV, 모바일 등의 다양한 서비스를 제공하며, 5G와 같은 최신 기술을 선도하고 있습니다.', 'KT는 1981년 한국통신(KT)이 설립되어 시작되었으며, 이후 KT는 국내 통신사 중에서 가장 오랜 역사를 가지고 있으며, 인터넷, 모바일 등 다양한 분야로 사업 영역을 넓혀가며 성장해왔습니다.', 'KT의 비전은 기술로 더 나은 세상을 만들다입니다. 이를 위해 인공지능, 빅데이터, 클라우드 등의 최신 기술을 활용하여 고객에게 새로운 가치를 제공하고, 사회 전반에 긍정적인 변화를 만들어내는 글로벌 기업으로 성장하고자 합니다. 또한 지속 가능한 사업 활동과 사회적 책임을 다하며, 사람과 기술, 자연과 환경이 공존하는 세상을 만들기 위해 노력하고 있습니다.', NOW()),
('LG', '1234', 'LG전자', '김우빈', '010-4523-6780', '02-1234-5678', '경상북도 구미시 인동가산길 35 구미시청', 'wesley47@gmail.com', '/images/Lglogio.jpg', '2010-09-01', 2500000, 531, 'LG는 대한민국을 대표하는 종합전자기업으로, 홈앱라이언스, 모바일, 디스플레이, 자동차부품 등의 분야에서 다양한 제품을 생산하여 세계적으로 인기 있는 기업 중 하나입니다.', 'LG는 1947년에 Lucky라는 이름으로 설립되어 가전 제품을 생산하였으며, 1995년부터 LG라는 이름으로 사업을 이어가며 성장해왔습니다. LG는 TV, 냉장고, 스마트폰 등의 제품을 선보이면서 세계적인 브랜드로 자리 잡았습니다.', 'LG의 비전은 인간 중심의 스마트 라이프입니다. 이를 위해 인공지능, IoT, 빅데이터 등의 최신 기술을 활용하여 고객에게 새로운 가치를 제공하며, 사회 전반에 긍정적인 영향을 미치는 글로벌 기업으로 성장하고자 합니다. 또한 지속 가능한 경영과 환경 보호에도 힘쓰며, 사람과 기술, 자연과 환경이 공존하는 새로운 미래를 만들기 위해 노력하고 있습니다.', NOW()),
('현대자동차', '1234', '현대자동차', '이병헌', '010-4523-6780', '02-1234-5678', '강원도 춘천시 석사동 25 강원도청', 'lloyd39@gmail.com', '/images/Hyundai.png', '2010-09-01', 2500000, 231, '현대자동차는 대한민국의 대표적인 자동차 제조사 중 하나로, 전 세계적으로 다양한 차종의 자동차를 생산하며, 기술 혁신과 지속 가능한 발전을 추구하고 있습니다.', '현대자동차는 1967년에 현대모터라는 이름으로 설립되었으며, 국내에서는 그야말로 대표적인 자동차 제조사 중 하나입니다. 그 이후 현대자동차는 전 세계적으로 시장을 넓혀가며 자동차 산업을 선도하는 기업으로 성장하였습니다.', '현대자동차의 비전은 모빌리티 서비스 제공의 선도 기업입니다. 이를 위해 수소 연료 전기차(Hydrogen Fuel Cell Electric Vehicle) 등 다양한 친환경 자동차의 개발과 생산에 노력하며, 인공지능, 빅데이터, 로봇 등의 분야에도 진출하여 사람들의 모빌리티 생활을 더욱 편리하게 만드는 미래를 꿈꾸고 있습니다.', NOW()),
('한국전력공사', '1234', '한국전력공사', '채수빈', '010-4523-6780', '02-1234-5678', '전라남도 광양시 중앙로 70 (중마동) 전라남도청', 'ericmiller70@outlook.com', '/images/한전.jpg', '2010-09-01', 2700000, 3123, '한국전력공사는 대한민국을 대표하는 전력 회사 중 하나로, 국내 전력 생산 및 유통 등의 전반적인 업무를 수행하며, 신재생에너지와 지속 가능한 발전에도 힘쓰고 있습니다.', '한국전력공사는 1961년에 설립되어 국내 전력산업을 선도하였으며, 이후에도 다양한 기술 혁신과 지속 가능한 발전을 추구하면서 성장해왔습니다. 현재는 국내외에서 다양한 사업을 전개하며 발전에 힘쓰고 있습니다.', '한국전력공사의 비전은 미래 지능형 전력 그룹입니다. 이를 위해 인공지능, 빅데이터, 블록체인 등의 기술을 활용하여 스마트그리드 구축과 같은 새로운 전력 서비스를 제공하고자 하며, 지속 가능한 발전과 환경 보호에도 힘쓰고 있습니다. 또한 그룹원들의 역량과 혁신적인 아이디어를 존중하며, 사회 발전에 기여하는 글로벌 전력기업으로 성장하고자 합니다.', NOW()),
('국민은행', '1234', 'KB국민은행', '주현영', '010-4523-6780', '02-1234-5678', '제주특별자치도 제주시 중앙로 18 (이도2동) 제주특별자치도청', 'clark08@yahoo.com', '/images/KB.png', '2010-09-01',2900000, 25831, '국민은행은 대한민국의 대표적인 상업 은행 중 하나로, 예금, 대출, 외환 등 다양한 금융 서비스를 제공하며, 고객 중심의 서비스로 성장하고 있습니다.', '국민은행은 1972년에 국민은행법에 의해 설립되어, 국내에서 가장 오래된 은행 중 하나입니다. 그 이후 국민은행은 다양한 제도 개혁과 혁신을 추진하며, 선진화된 금융 서비스로 고객들에게 가치를 제공해왔습니다.', '국민은행의 비전은 건강한 금융문화와 함께하는 가치창조입니다. 이를 위해 고객 중심의 금융 서비스를 제공하며, 창의적인 상품과 서비스로 고객 만족도를 높이고, 지속 가능한 성장을 추구하고 있습니다. 또한 사회적 책임을 다하며, 글로벌 금융 시장에서 선도적인 기업으로 발전하고자 합니다.', NOW()),
('포스코', '1234', '포스코', '이준기', '010-4523-6780', '02-1234-5678', '충청남도 홍성군 홍북읍 충청남도 홍성군청', 'contact@linecorp.com', '/images/POSCO.png', '2010-09-01', 1800000, 317, '포스코는 대한민국의 대표적인 철강 제조 기업 중 하나로, 세계에서 가장 큰 규모를 자랑하며, 자동차, 조선, 건설, 에너지 등 다양한 산업 분야에서 활발하게 활동하고 있습니다.', '포스코는 1968년에 설립되어, 국내 철강산업의 선두주자로 자리잡았으며, 그 이후 국내외에서 성장해왔습니다. 현재 포스코는 세계 최고 수준의 철강 기술력을 보유하고 있으며, 선진화된 기술로 미래 성장을 계속 추진하고 있습니다.', '포스코의 비전은 모두를 위한 혁신으로 새로운 미래를 만들다입니다. 이를 위해 미래형 철강 제품과 서비스를 개발하여 산업과 사회의 발전을 이끌고, 지속 가능한 발전과 환경 보호에도 힘쓰고 있습니다. 또한 국내외에서 도약하여 글로벌 리더십을 발휘하고, 인재와 기술, 역량을 강화하여 새로운 가치를 창출하고자 합니다.', NOW()),
('S-Oil', '1234', 'S-Oil', '박보검', '010-4523-6780', '02-1234-5678', '경기도 성남시 분당구 대왕판교로 644번길 12', 'lgordon14@outlook.com', '/images/soil.png', '2010-09-01',200000, 531, 'S-Oil은 대한민국의 대표적인 석유 및 에너지 기업 중 하나로, 석유 정제 및 유통, 화학, 전력 등 다양한 분야에서 사업을 전개하며, 지속 가능한 발전을 추구하고 있습니다.', 'S-Oil은 1976년에 설립되어 국내 석유 산업을 선도하였으며, 그 이후 다양한 기술 혁신과 확장으로 성장하였습니다. 현재 S-Oil은 국내외에서 다양한 사업을 전개하며, 지속 가능한 성장을 추구하고 있습니다.', 'S-Oil의 비전은 Global Leader in Sustainable Energy입니다. 이를 위해 친환경 에너지와 신재생 에너지에 대한 연구 및 개발을 진행하며, 국내외에서 적극적인 확장을 추진하여 글로벌 에너지 리더로 성장하고자 합니다. 또한 기술 혁신과 창의적인 아이디어를 추구하여 사회적 가치 창출과 지속 가능한 발전을 이루는 기업이 되고자 합니다.', NOW()),
('교보생명보험', '1234', '교보생명보험', '서강준', '010-4523-6780', '02-1234-5678', '부산광역시 해운대구 좌동순환로 131번길 16', 'gbennett62@gmail.com', '/images/교보.jpg', '2010-09-01', 4000000, 251, '교보생명보험은 대한민국의 대표적인 보험 회사 중 하나로, 생명보험, 일반보험 등 다양한 보험 상품을 제공하며, 고객 중심의 서비스로 성장하고 있습니다.', '교보생명보험은 1988년에 설립되어, 국내 생명보험 시장에서 선두적인 기업 중 하나로 자리잡았습니다. 그 이후 교보생명보험은 다양한 제도 개혁과 혁신을 추진하며, 고객들에게 가치를 제공하고자 노력해왔습니다.', '교보생명보험의 비전은 공감을 바탕으로 고객 가치 창출입니다. 이를 위해 고객 중심의 금융 서비스를 제공하며, 창의적인 상품과 서비스로 고객 만족도를 높이고, 지속 가능한 성장을 추구하고 있습니다. 또한 사회적 책임을 다하며, 글로벌 보험 시장에서 선도적인 기업으로 발전하고자 합니다.', NOW()),
('쿠팡', '1234', '쿠팡', '지성', '010-4523-6780', '02-1234-5678', '대구광역시 달서구 성서공단로 32길 26', 'vwest20@gmail.com', '/images/쿠팡.png', '2010-09-01', 4200000, 893, '쿠팡은 대한민국의 대표적인 온라인 쇼핑몰 중 하나로, 생필품부터 패션, 전자제품 등 다양한 상품을 제공하며, 빠른 배송과 우수한 고객 서비스로 인기를 얻고 있습니다.', '쿠팡은 2010년에 설립되어, 국내 최초의 온라인 마켓플레이스를 선보이며, 그 이후 국내외에서 다양한 사업을 전개하며 성장해왔습니다. 현재는 국내 최고의 인터넷 기업 중 하나로 자리잡았으며, 그 성장속도는 굉장히 빠르게 진행되고 있습니다.', '쿠팡의 비전은 세상을 바꾸는 기술, 기술로 세상을 편리하게 만든다입니다. 이를 위해 AI, 빅데이터, 로봇 등의 첨단 기술을 활용하여, 편리하고 스마트한 쇼핑 경험을 제공하고자 합니다. 또한 새로운 산업을 선도하며, 지속 가능한 발전과 환경 보호에도 힘쓰고 있습니다. 2021년 기준, 쿠팡은 세계에서 가장 혁신적인 기업 50에 선정되는 등 글로벌 기업으로서도 주목받고 있습니다.', NOW()),
('KIA', '1234', '기아자동차', '박서준', '010-4523-6780', '02-1234-5678', '인천광역시 연수구 아트센터대로 175번길 16', 'ericmiller70@outlook.com','/images/기아.png', '2010-09-01', 3999999, 661, 'KIA는 대한민국의 대표적인 자동차 제조 회사 중 하나로, 경차부터 SUV, 전기차 등 다양한 차종을 생산하며, 글로벌 시장에서도 선도적인 기업 중 하나로 자리잡고 있습니다.', 'KIA는 1944년에 설립되어, 국내 자동차 산업의 선도적인 기업 중 하나로 자리잡았습니다. 그 이후 국내외에서 성장을 거듭하며, 특히 최근에는 친환경 차량 분야에서 매우 높은 인기를 얻고 있습니다.', 'KIA의 비전은 Movement that inspires입니다. 이를 위해 디자인과 기술의 혁신을 추구하며, 고객에게 열정과 자신감을 주는 차량을 만들어내고자 합니다. 또한 친환경 차량 개발과 글로벌 마케팅을 통해 지속 가능한 성장을 추구하며, 국제적인 오토모티브 기업으로서 성장해나가고 있습니다. KIA는 2021년 현재 글로벌 자동차 브랜드 중에서 가장 높은 평가를 받는 기업 중 하나입니다.', NOW());


-- 이력서 테이블 CV <- 이력서내용 100
-- 이력서 테이블
INSERT INTO resume (employee_id, resume_title, resume_salary, CV, created_at) VALUES
(1, '개발자 이력서', '5000', '화학전공으로 졸업 후 3년 차 개발자로 다양한 프로젝트를 수행했습니다. [Java, Python, JavaScript] 등 다양한 기술 스택을 바탕으로 문제 해결 능력과 끈기로 미션이 완성되는 것을 좋아합니다. 적극적으로 새로운 기술과 개념을 학습하며, 지속적인 성장을 추구합니다. 팀워크를 중요하게 생각하며, 함께 성장하고 배울 수 있는 환경을 선호합니다.', NOW()),
(1, '마케터 이력서', '4000', '총 7년간 디지털 마케팅 분야에서 근무하면서 광고, 컨텐츠, 분석 등 다양한 영역을 경험하였습니다. 특히, 광고 캠페인 기획과 실행, 소셜미디어 운영, 유입 증대를 위한 SEO/SEM 최적화, 데이터 분석 및 보고서 작성 등에 능숙합니다. 고객의 요구사항을 이해하고, 그에 맞는 전략을 수립하여 성과를 창출하는 것을 목표로 합니다.', NOW()),
(2, '디자이너 이력서', '4500', '7년간 디자인 분야에서 다양한 프로젝트를 수행하면서 UI/UX, 브랜딩 등 다양한 디자인 작업을 경험했습니다. 고객과의 소통과 협업을 통해 요구사항을 충족하며, 최상의 결과물을 제공합니다. Adobe CC, Sketch 등 디자인 도구들을 능숙하게 다룰 수 있고, 적극적인 자세와 문제해결 능력으로 고객 만족도를 높였습니다.', NOW()),
(2, '디자이너 이력서', '4500', '5년 이상의 디자인 경력으로 다양한 프로젝트를 수행하였으며, UI/UX 디자인 및 그래픽 디자인 업무를 전문적으로 수행하였습니다. 프로젝트 초기 단계부터 참여하여 아이디어 도출부터 디자인 구현까지 전반적인 프로세스를 경험하였습니다. 다양한 디자인 툴과 프로그램을 능숙하게 다루며, 팀워크와 소통 능력이 뛰어납니다. 디자인의 전반적인 트렌드와 기술적인 동향에 대한 관심이 높습니다.', NOW()),
(3, '개발자 이력서', '5500', '총 5년간 IT 분야에서 경력을 쌓았습니다. 웹 개발에 주력하여 다양한 프로젝트를 수행하였으며, 프론트엔드와 백엔드 모두에 능숙합니다. 새로운 기술을 습득하는데 높은 열의를 가지고 있으며, 팀원들과의 원활한 커뮤니케이션과 협업을 통해 프로젝트를 완성해나가는 것을 좋아합니다.', NOW()),
(3, '데이터 분석가 이력서', '5000', '데이터 분석가로서 5년 이상 다양한 산업군에서 데이터 분석 경험을 쌓았습니다. 데이터 수집, 전처리, 모델링, 시각화까지 데이터 분석의 전과정을 경험했으며, SQL, Python, R 등 다양한 도구와 언어를 활용하여 프로젝트를 수행한 경험이 있습니다. 문제 해결 능력과 팀워크를 중요시하며, 비즈니스 인사이트 제공을 목표로 합니다.', NOW()),
(4, '마케터 이력서', '4500', '10년간 국내외 다양한 기업에서 마케팅 업무를 수행하며, 광고, PR, 이벤트, 디지털 등 다양한 채널을 경험했습니다. 고객의 니즈 파악과 경쟁사 분석을 통해 적극적인 마케팅 전략 수립 및 실행에 기여하였습니다. 데이터 기반의 분석과 인사이트 도출에 강점이 있으며, 팀 내외와의 원활한 소통과 협업으로 효율적인 결과물을 이끌어 냈습니다.', NOW()),
(4, '마케터 이력서', '4500', '전략적 마케팅 경력을 가지고 있으며, 소비자의 니즈와 행동패턴을 분석하여 적극적인 제안과 실행 능력을 가지고 있습니다. 다양한 디지털 마케팅 채널과 도구를 활용하여 성과를 극대화하며, 광고 예산을 효율적으로 활용하는 것을 목표로 합니다. 또한, 팀원과의 원활한 커뮤니케이션을 통해 팀워크를 강조하며, 시장 변화를 빠르게 파악하여 대응하는 능력을 가지고 있습니다.', NOW()),
(5, '디자이너 이력서', '4000', '디자이너로서 5년 이상 다양한 프로젝트를 수행하며, UI/UX 디자인과 브랜딩 작업에 집중해왔습니다. Adobe Creative Suite 등의 디자인 도구와 Sketch, Figma 등의 프로토타입 도구를 활용한 디자인 역량이 뛰어나며, 팀원과의 소통과 협업을 통해 프로젝트를 완성시키는 것을 지향합니다. 사용자 경험과 브랜딩에 대한 이해와 시각적 감각을 바탕으로 창의적인 아이디어를 제시할 수 있습니다.', NOW()),
(5, '디자이너 이력서', '4000', '디자인 분야에서 경력을 쌓으면서 사용자 경험(UX)과 사용자 인터페이스(UI)를 중심으로 다양한 프로젝트에 참여하였습니다. 제품의 디자인 컨셉부터 시안 작업, 프로토타입 제작까지 전반적인 디자인 작업을 수행해왔으며, Adobe Creative Suite과 Sketch 등의 도구를 다룰 수 있습니다. 고객 요구사항과 비즈니스 목표를 충족시키기 위해 노력하며, 팀워크를 중요시합니다.', NOW()),
(6, '개발자 이력서', '6000', '다양한 웹 어플리케이션 개발 경험으로 고객 요구사항 분석 및 문제해결 능력이 뛰어나며, 소통과 협업을 중시하여 팀워크를 발휘하는 개발자입니다. 다양한 언어와 프레임워크를 활용해 소프트웨어 개발 전반을 경험했습니다. 프로젝트 경험을 바탕으로, 코드 품질과 유지보수성에 중점을 두고 개발을 진행하며, 지속적인 개발자 커뮤니티 활동을 통해 역량을 향상시키고 있습니다.', NOW()),
(6, '개발자 이력서', '6000', '5년 이상의 다양한 프로젝트 경험을 가지고 있으며, 주로 웹 어플리케이션 개발에 집중했습니다. 다양한 언어와 프레임워크 경험을 통해 개발 역량을 키웠습니다. 소프트웨어 개발 전 과정을 경험하여 문제 해결 능력이 뛰어납니다. 팀워크를 중요시하며, 소통과 협업을 통해 좋은 결과물을 만들어냅니다. 또한, 지속적인 자기개발과 새로운 기술 습득에 노력하고 있습니다.', NOW()),
(7, '데이터 분석가 이력서', '5500', '5년간 데이터 분석가로서 다양한 프로젝트를 수행하며, 데이터 시각화 및 인사이트 도출 능력을 향상시켰습니다. SQL과 Python, R 등을 이용해 데이터를 수집, 전처리하며, 머신러닝 모델을 구현하고 평가하는 경험이 있습니다. 고객 요구사항 파악 및 비즈니스 이해 능력이 뛰어나며, 적극적인 의견 제시를 통해 문제 해결에 기여합니다. 팀워크를 중요시하며, 협업과 지식 공유를 통해 좋은 결과물을 만들어냅니다.', NOW()),
(7, '데이터 분석가 이력서', '5500', '데이터 분석가로 3년간 다양한 프로젝트를 수행하며, 데이터 수집부터 분석 및 시각화, 보고서 작성까지 경험하였습니다. 특히, SQL과 Python을 활용하여 데이터를 처리하고 모델링하고, Tableau 등 시각화 도구를 이용하여 결과를 효과적으로 전달하였습니다. 또한, 프로젝트에서 타 부서와의 원활한 커뮤니케이션과 팀워크를 통해 성과를 달성한 경험이 있습니다.', NOW()),
(8, '개그맨 이력서', '4500', '토크쇼, 스탠드업, 예능 프로그램 등에서 활약하며 10년 이상의 경력을 쌓았습니다. 매력적인 캐릭터와 개그 실력으로 대중들의 사랑을 받았으며, 다수의 방송 출연 및 공연 경험이 있습니다. 또한 새로운 콘텐츠 제작과 창작 활동에도 적극적으로 참여하고 있습니다. 몇 글자인지요?', NOW()),
(8, '뼈그맨 이력서', '4500', '죽은 자로부터 뼈를 얻어 창작하는 뼈그맨으로, 10년의 경력을 보유하고 있습니다. 미술, 생물학, 역사 등 다양한 분야의 지식을 활용하여 다양한 작품을 제작하며, 국내외 다양한 전시회에 참가하였습니다. 뼈를 활용한 예술 작품 제작뿐만 아니라, 관련 교육과 강연도 진행하고 있습니다. 미적 감각과 창의력이 뛰어나며, 꼼꼼하고 세심한 작업을 통해 고객 만족도를 높이는 것을 지향합니다.', NOW()),
(9, '백터맨 이력서', '4500', '컴퓨터 그래픽스 분야에서 5년간 다양한 프로젝트를 수행하며, 백터 디자인에 능숙합니다. 주로 Adobe Illustrator, Sketch 등의 툴을 활용하여 UI/UX 디자인, 로고 제작 등을 담당하였습니다. 또한, 일러스트레이션 제작 및 3D 모델링 경험이 있습니다. 고객과의 소통을 통해 요구사항을 분석하고 문제를 해결하는 능력이 뛰어나며, 팀워크를 중요시하여 협업 능력이 높습니다.', NOW()),
(9, '대통령 이력서', '4500', '정치인으로 경력을 쌓았습니다. 국회의원, 국무총리, 대통령을 역임하면서 국가발전을 위해 노력했습니다. 대한민국의 발전을 위해 안보와 경제, 사회적 등 다양한 분야에서 정책을 수립하고, 국민과 소통하며 선진국으로 성장하도록 지원했습니다. 글로벌 경제 환경 변화에 따른 새로운 발전 방식을 모색하며, 기존의 구조를 개선하고 혁신을 추구하는 것을 지향합니다.', NOW()),
(10, '해적왕 이력서', '4500', '해적왕으로서 여러 해역에서 다양한 모험을 겪으면서, 경영능력과 리더십을 키웠습니다. 선원들과 함께 일하며 팀워크와 협력 능력을 발휘했으며, 위기상황에서도 태업을 유지하며 문제를 해결하는 능력을 갖추었습니다. 또한 다양한 문화와 언어를 경험하면서 글로벌 비즈니스에 대한 이해도가 높아졌습니다.', NOW()),
(10, '짜파게티 요리사 이력서', '4500', '5년간 식당에서 짜파게티 요리사로 일하며, 다양한 고객층에게 좋은 평가를 받았습니다. 짜파게티 제작에 대한 높은 전문성을 갖추고, 최상의 맛과 품질을 유지하기 위해 항상 최선을 다하였습니다. 고객의 선호도와 요구사항을 고려하여 창의적인 아이디어를 적용하며, 원활한 팀워크와 소통을 중요시합니다.', NOW()),
(11, '영상편집 이력서', '4500', '10년간 영상편집 분야에서 다양한 프로젝트 경험을 쌓았습니다. 주로 광고, 드라마, 다큐멘터리 등의 작업을 수행하였으며, Adobe Premiere Pro, After Effects, Photoshop 등의 소프트웨어를 능숙하게 다룰 수 있습니다. 빠른 작업물 완성과 고객의 요구사항 충족에 능합니다. 대용량 데이터를 다루는데 능하며, 작업물의 퀄리티를 높이기 위한 역량을 보유하고 있습니다.', NOW()),
(11, 'AI개발자 이력서', '4500', '5년간 AI 개발 경험을 쌓았으며, 머신러닝 및 딥러닝 알고리즘 구현 및 모델링, 데이터 전처리 등을 수행했습니다. Python, TensorFlow, PyTorch 등 다양한 도구와 라이브러리를 사용하여 프로젝트를 진행하였고, 컴퓨터 비전, 자연어 처리, 강화학습 등 분야에서 경험이 있습니다. 문제해결 능력과 빠른 적응력으로 고객 요구사항을 충족시키며, 팀원과의 협업을 통해 성과를 창출하는 것을 추구합니다.', NOW()),
(12, '프로게이머 이력서', '4500', '프로게이머로서 리그오브레전드와 오버워치를 주전으로 활동하며, 국내외 대회에서 입상 경력 있습니다. 팀 프로젝트에서의 리더십과 전략적 판단력, 게임 기술력 등을 바탕으로 수상 경력 쌓아왔으며, 타 팀원과의 협업을 통해 높은 성과를 이룬 경험도 있습니다. 지속적으로 자기계발을 추구하며 게임에 대한 열정과 실력을 지속적으로 발전시키고 있습니다.', NOW()),
(12, '닌자 이력서', '4500', 'Twitch에서 인기 있는 스트리머 중 하나인 닌자입니다. Fortnite, Valorant, Apex Legends 등 다양한 게임을 스트리밍하며, 수많은 팬들을 모은 바 있습니다. Twitch의 미국 이용자 수 1위 등 다양한 기록을 세우며, 전 세계적으로도 많은 팬을 보유하고 있습니다. 또한, 자선단체와의 캠페인에도 적극적으로 참여하며 사회적 이슈에 관심을 가지고 있습니다.', NOW());

-- 공고 테이블
INSERT INTO announcement (company_id, stack_id, announcement_title, announcement_content, announcement_carrer, announcement_hire_type, announcement_rec_num, announcement_salary, announcement_area, created_at)
VALUES (1, 1, '신입 개발자 모집', 'AI 기술 연구개발 경력이 있으신 분들의 많은 지원을 기다립니다. 본 포지션에서는 인공지능 기술 개발 및 응용 분야에서 다양한 업무를 수행합니다. 기술 창업 기회 및 다양한 인센티브를 제공합니다. 지금 바로 지원하세요!', '신입', '정규직', 3, '3500', '서울 강남구', now()),
       (2, 3, '데이터 분석가 채용', '글로벌 기업에서의 해외 마케팅 경력을 보유하신 분들의 많은 지원을 기다립니다. 본 포지션에서는 글로벌 시장에서의 마케팅 전략 수립 및 실행 등의 업무를 수행합니다. 국내외 교육 및 연수 기회를 제공합니다. 지금 바로 지원하세요!', '경력', '정규직', 2, '5000', '서울 종로구', now()),
       (3, 2, '웹 프론트엔드 개발자 모집', '산업용 로봇 및 자동화 분야에서 경력을 보유하신 분들의 많은 지원을 기다립니다. 본 포지션에서는 로봇 제어 및 센싱 기술 등 다양한 업무를 수행합니다. 적극적인 승진 기회와 급여 인상 등 다양한 혜택을 제공합니다. 지금 바로 지원하세요!', '신입', '계약직', 5, '2800', '경기 성남시', now()),
       (1, 5, '백엔드 개발자 채용', '전자제품 설계 및 생산 경력을 보유하신 분들의 많은 지원을 기다립니다. 본 포지션에서는 하드웨어 및 소프트웨어 제품 개발 및 관리 등의 업무를 수행합니다. 창업 지원 및 다양한 인센티브를 제공합니다. 지금 바로 지원하세요!', '경력', '정규직', 1, '6000', '서울 마포구', now()),
       (4, 4, 'iOS 앱 개발자 모집', 'UX/UI 디자인 경력이 있으신 분들의 많은 지원을 기다립니다. 본 포지션에서는 제품 디자인 및 사용자 경험 설계 등의 업무를 수행합니다. 자기 계발을 위한 교육 지원 및 다양한 인센티브를 제공합니다. 지금 바로 지원하세요!', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       (2, 1, 'Java 개발자 채용', '정보보안 전문가로서 경력을 보유하신 분들의 많은 지원을 기다립니다. 본 포지션에서는 보안 시스템 설계 및 구축 등 다양한 업무를 수행합니다. 급여 인상 및 보안 인증 비용 지원 등의 혜택을 제공합니다. 지금 바로 지원하세요!', '경력', '계약직', 3, '3800', '서울 영등포구', now()),
       (5, 7, '경력 개발자 모집합니다!', '저희는 데이터 분석가를 모집합니다. 빅데이터 활용 기술 경험이 있으신 분들의 많은 지원을 기다립니다. 본 포지션에서는 대용량 데이터 수집, 분석, 시각화 등 다양한 업무를 수행하게 됩니다. 데이터 분석 경험이 있으시고, 다양한 분야에서의 문제 해결 능력을 보유한 분들의 많은 지원 부탁드립니다. 우수한 인재에게는 적극적인 승진 기회와 급여 인상 등 다양한 혜택을 제공합니다. 지금 바로 지원하세요!', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       (6, 6, 'iOS 앱 개발자 모집', '게임 기획 경력을 보유하신 분들의 많은 지원을 기다립니다. 본 포지션에서는 게임 제작 계획 및 실행, 게임 시나리오 작성 등의 업무를 수행합니다.', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       
       (7, 5, '데이터 엔지니어 모집', ' 빅데이터 처리와 분석 경험이 있는 엔지니어를 모집합니다. 클라우드 환경에서 대용량 데이터 처리 업무를 수행하게 됩니다.', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       (8, 4, '안드로이드 앱 개발자 모집', ' 안드로이드 개발 경력이 있는 개발자를 모집합니다. UI/UX 디자인 및 앱 개발 업무를 수행하게 됩니다.', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       (9, 3, '웹 프론트엔드 개발자 모집', ' HTML/CSS/JavaScript에 능숙한 프론트엔드 개발자를 모집합니다. 반응형 웹 개발 및 UI/UX 개선 업무를 수행하게 됩니다.', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       (10, 8, '머신러닝 엔지니어 모집', ' 머신러닝 모델 구축 및 최적화 경험이 있는 엔지니어를 모집합니다. 데이터 분석, 예측 모델링 등의 업무를 수행하게 됩니다.', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       (11, 7, '네트워크 엔지니어 모집', ' CCNA 자격증 보유 및 네트워크 설계/관리 경험이 있는 엔지니어를 모집합니다. 인프라 설계 및 유지보수 업무를 수행하게 됩니다.', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       (12, 6, '게임 클라이언트 개발자 모집', ' C++ 개발 경력이 있는 개발자를 모집합니다. 게임 클라이언트 개발 및 최적화 업무를 수행하게 됩니다.', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       (13, 6, 'QA 엔지니어 모집', 'QA 역량이 뛰어나고 테스트 자동화에 익숙한 엔지니어를 모집합니다. SW 테스트 및 버그 수정 업무를 수행하게 됩니다.', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       (14, 4, '보안 엔지니어 모집', '보안 취약점 분석 및 대응 경험이 있는 엔지니어를 모집합니다. 보안 인프라 설계 및 운영 업무를 수행하게 됩니다.', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       (15, 5, '디자인 앱 개발자 모집', '디자인 경력이 [2년]년 이상인 분들의 많은 지원 바랍니다. 본 포지션에서는 웹/모바일 디자인 및 브랜딩 업무를 담당합니다. 섬세한 눈썰미와 창의적인 디자인 아이디어를 보유한 분들의 많은 지원 부탁드립니다.', '경력', '정규직', 2, '4500', '서울 강서구', now()),
       (8, 5, '디지털 마케팅 업무 모집', '디지털 마케팅 업무 경력이 [3년]년 이상인 분들의 많은 지원 바랍니다. 본 포지션에서는 소셜 미디어, 검색광고, 이메일 마케팅 등 다양한 분야에서의 마케팅 업무를 수행합니다. 높은 분석력과 전략적 마인드를 보유한 분들의 많은 지원 부탁드립니다.', '경력', '정규직', 2, '4500', '서울 강서구', now());

-- 지원자 리스트
INSERT INTO apply (announcement_id, resume_id, created_at) VALUES
(1, 1, NOW()),
(1, 2, NOW()),
(1, 3, NOW()),
(2, 1, NOW()),
(2, 2, NOW()),
(2, 3, NOW()),
(3, 1, NOW()),
(3, 2, NOW()),
(3, 3, NOW()),
(4, 1, NOW());

------------------------resume 최종학력, 경력사항, 자격증, 기술스택
INSERT INTO resume_graduate (resume_id, school_id, school_graduate, created_at) VALUES
(1, 1, '졸업', NOW()),
(1, 2, '재학중', NOW()),
(2, 2, '졸업', NOW()),
(2, 3, '재학중', NOW()),
(3, 1, '졸업', NOW()),
(3, 1, '졸업', NOW()),
(4, 3, '졸업', NOW()),
(5, 2, '졸업', NOW()),
(6, 1, '졸업', NOW()),
(7, 3, '재학중', NOW()),
(8, 2, '졸업', NOW()),
(9, 1, '재학중', NOW()),
(10, 3, '졸업', NOW());


INSERT INTO resume_career(resume_id, career_company, career_start, career_end, created_at) VALUES
(1, 'ABC IT Solutions', '2020-01-01', '2022-02-28', NOW()),
(2, 'DEF Corp.', '2019-03-01', '2021-12-31', NOW()),
(2, 'GHI Inc.', '2022-01-01', '2022-06-30', NOW()),
(3, 'JKL Tech', '2018-04-01', '2020-03-31', NOW()),
(4, 'MNO Co.', '2021-07-01', '2023-12-31', NOW()),
(4, 'PQR IT Services', '2020-03-01', '2021-06-30', NOW()),
(5, 'STU Systems', '2019-09-01', '2020-02-29', NOW()),
(5, 'VWX IT Corp.', '2020-03-01', '2021-06-30', NOW()),
(5, 'YZ IT Solutions', '2022-05-21', '2023-05-20', NOW()),
(6, 'Microsoft', '2020-12-01', '2023-11-30', NOW()),
(6, 'Apple', '2019-09-15', '2022-09-14', NOW()),
(7, 'Amazon', '2022-02-28', '2025-02-27', NOW()),
(7, 'Google', '2022-07-11', '2025-07-10', NOW()),
(8, 'Facebook', '2021-01-15', '2023-01-14', NOW()),
(8, 'IBM', '2022-06-30', '2025-06-29', NOW()),
(9, 'Intel', '2022-09-01', '2025-08-31', NOW()),
(9, 'Dell', '2021-11-23', '2024-11-22', NOW()),
(10, 'NVIDIA', '2022-08-05', '2025-08-04', NOW()),
(10, 'Salesforce', '2022-04-09', '2025-04-08', NOW()),
(11, 'VMware', '2022-01-20', '2024-01-19', NOW()),
(11, 'Airbnb', '2023-03-12', '2026-03-11', NOW()),
(12, 'Netflix', '2022-10-27', '2025-10-26', NOW()),
(12, 'Infosys', '2022-12-09', '2025-12-08', NOW()),
(1, 'Xiaomi', '2023-06-01', '2026-05-31', NOW()),
(3, 'Fujitsu', '2023-09-22', '2026-09-21', NOW()),
(8, 'Facebook', '2022-02-14', '2025-02-13', NOW()),
(1, 'Cisco', '2022-11-05', '2025-11-04', NOW());


 
INSERT INTO resume_license (resume_id, license_id, license_issuer, created_at) VALUES
(1, 1, '한국방송통신대학교', NOW()),
(1, 2, '한국정보과학회', NOW()),
(2, 3, '한국산업안전보건공단', NOW()),
(2, 4, '한국운전자전문학원', NOW()),
(3, 5, '한국생산성본부', NOW()),
(3, 6, '한국데이터산업진흥원', NOW()),
(4, 7, '한국소비자원', NOW()),
(4, 8, '한국기술교육대학교', NOW()),
(5, 9, '한국교원대학교', NOW()),
(5, 10, '한국철도기술연구원', NOW());


INSERT INTO resume_stack (resume_id, stack_id, stack_acquisition, created_at) VALUES
(1, 1, '자바 기초 문법 숙지 및 간단한 프로그램 작성 가능', NOW()),
(1, 2, '파이썬 기초 문법 숙지 및 간단한 데이터 분석/처리 프로그램 작성 가능', NOW()),
(2, 3, '자바스크립트를 활용한 간단한 웹 페이지 제작 가능', NOW()),
(3, 4, 'C# 기초 문법 숙지 및 간단한 데스크톱 애플리케이션 작성 가능', NOW()),
(4, 5, 'PHP 기초 문법 숙지 및 간단한 웹 사이트 제작 가능', NOW()),
(5, 6, '루비 기초 문법 숙지 및 간단한 웹 애플리케이션 작성 가능', NOW()),
(6, 7, '스위프트 기초 문법 숙지 및 간단한 iOS 애플리케이션 작성 가능', NOW()),
(7, 8, 'Objective-C 기초 문법 숙지 및 간단한 iOS 애플리케이션 작성 가능', NOW()),
(8, 9, 'Kotlin 기초 문법 숙지 및 안드로이드 애플리케이션 작성 가능', NOW()),
(9, 10, 'Go 기초 문법 숙지 및 간단한 CLI 프로그램 작성 가능', NOW());
--------------------------------------------------------------