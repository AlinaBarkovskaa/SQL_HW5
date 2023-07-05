CREATE VIEW message_count_view AS
SELECT TOP 100 PERCENT from_user_id, COUNT(*) AS message_count
FROM messages
WHERE to_user_id = 6
GROUP BY from_user_id
ORDER BY message_count DESC;