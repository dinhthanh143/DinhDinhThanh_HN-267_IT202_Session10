use social_network_pro;
explain analyze
select * from users
where  hometown = 'Hà Nội'
;

CREATE INDEX idx_hometown
ON users (hometown);

DROP INDEX idx_hometown ON users;
