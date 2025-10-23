CREATE VIEW vw_reviewers AS
SELECT 
    user_id,
    username,
    email,
    CONCAT(first_name, ' ', last_name) as reviewer_name,
    affiliation,
    expertise_area
FROM users
WHERE role = 'reviewer' OR role = 'admin';
