CREATE VIEW user_group_count_view AS
SELECT users.id AS user_id, COUNT(communities.id) AS group_count
FROM users
LEFT JOIN communities ON users.id = communities.admin_user_id
GROUP BY users.id;


