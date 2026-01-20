use social_network_pro;
EXPLAIN ANALYZE
SELECT post_id, content, created_at
FROM posts
WHERE user_id = 1
  AND created_at >= '2026-01-01'
  AND created_at <  '2027-01-01';

create index idx_created_at_user_id 
on posts(user_id,created_at);

drop index idx_created_at_user_id
ON posts;