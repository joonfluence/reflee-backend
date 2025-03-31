-- users 샘플
INSERT INTO users (email, created_at)
VALUES ('alice@example.com', '2025-03-01 10:00:00'),
       ('bob@example.com', '2025-03-02 11:30:00');

-- retrospects 샘플
INSERT INTO retrospects (user_id, purpose, content, created_at)
VALUES (1, '이번 주 목표 점검', '계획했던 일의 절반 정도만 달성했다. 원인을 분석해보니 집중력 부족이 가장 큰 문제였다.', '2025-03-08 09:00:00'),
       (2, '개발 역량 점검', '신규 기술 도입 과정에서 많이 배웠지만, 팀 커뮤니케이션이 부족했다.', '2025-03-09 10:00:00');

-- feedbacks 샘플
INSERT INTO feedbacks (retrospect_id, summary, strength, weakness, keep_doing, recommendation, created_at)
VALUES (1,
        '계획 대비 실천 부족 문제를 인식하고 개선하려는 의지가 있음',
        '일정한 시간에 회고를 진행한 점은 좋은 습관',
        '집중력이 자주 흐트러졌고 우선순위 설정이 부족함',
        '계획을 구체적으로 세우고 리마인더 활용',
        '오전 시간을 핵심 업무에 집중하도록 환경을 재정비할 것',
        '2025-03-08 09:30:00'),

       (2,
        '기술 도입 과정에서 배움은 많았으나 협업 이슈가 드러남',
        '신기술 습득에 대한 빠른 학습력',
        '팀과의 소통 부족 및 일정 공유 미흡',
        '새로운 기술에 대해 팀에게 먼저 공유하는 습관',
        '매주 팀 미팅에서 간단한 기술 공유 세션을 진행할 것',
        '2025-03-09 10:30:00');
