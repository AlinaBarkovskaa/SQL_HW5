SELECT COUNT(*) AS news_count, users.id AS user_id, users.email AS user_email
FROM media
INNER JOIN users ON media.user_id = users.id
GROUP BY users.id, users.email;