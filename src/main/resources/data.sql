-- 회원 관련 data.sql (line 1~6)
-- 예시 회원 데이터
INSERT INTO member (member_id, create_date, email, github_id, nickname, profile_img, role, username) VALUES
    (1, CURRENT_TIMESTAMP, 'member1@example.com', 'github1', 'Member1', 'https://picsum.photos/200', 'USER', 'member1'),
    (2, CURRENT_TIMESTAMP, 'member2@example.com', 'github2', 'Member2', 'https://picsum.photos/200', 'USER', 'member2'),
    (3, CURRENT_TIMESTAMP, 'member3@example.com', 'github3', 'Member3', 'https://picsum.photos/200', 'USER', 'member3');

-- 채팅 관련 data.sql (line 8~25)
-- 예시 채팅방 데이터
INSERT INTO chat_room (created_at, last_message, last_message_time) VALUES
    (CURRENT_TIMESTAMP, '테스트 채팅방 1', '2023-11-07 16:59:34'),
    (CURRENT_TIMESTAMP, '테스트 채팅방 2', '2024-10-07 16:59:34'),
    (CURRENT_TIMESTAMP, '테스트 채팅방 3', '2024-11-07 16:59:34');

-- 예시 채팅 메시지 데이터
INSERT INTO chat_message (content, sender, timestamp, chat_room_id) VALUES
    ('테스트 메시지 1', 'user_1', '2023-11-07 16:59:34', 1),
    ('테스트 메시지 2', 'user_2', '2024-10-07 16:59:34', 2),
    ('테스트 메시지 3', 'user_3', '2024-11-07 16:59:34', 3);

-- 예시 채팅방 참가자 데이터
INSERT INTO chat_room_participants (chat_room_id, participants_member_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3);
-- INSERT INTO chat_room_participants (chat_room_id, participants_member_id) VALUES
--     (1, 4),
--     (2, 4),
--     (3, 4);

-- 명함(Card) 테이블에 예시 데이터 추가
-- INSERT INTO card (github_id, name, company, position, email, phone, profile_picture, bio) VALUES
--     ('hong-gildong', '어피치', 'DevCompany', '백엔드 개발자', 'hong@example.com', '010-1234-5678', 'profile.jpg', '열정적인 개발자입니다.'),
--     ('hong-gildong', '춘식이', 'kakaoCompany', '백엔드 주니어 개발자', 'chun@kakaoTech.com', '010-7894-456', 'profile.jpg', '소통하는 개발자입니다.');
