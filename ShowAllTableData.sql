CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowAllTableData`()
BEGIN
    -- Display users table data
    SELECT '=== USERS TABLE DATA ===' as 'TABLE_INFO';
    SELECT 
        user_id as 'ID',
        username as 'Username',
        email as 'Email',
        first_name as 'First Name',
        last_name as 'Last Name',
        role as 'Role',
        affiliation as 'Affiliation',
        expertise_area as 'Expertise',
        DATE_FORMAT(created_at, '%Y-%m-%d %H:%i') as 'Created'
    FROM users
    ORDER BY user_id;
    
    -- Display conferences table data
    SELECT '=== CONFERENCES TABLE DATA ===' as 'TABLE_INFO';
    SELECT 
        conference_id as 'ID',
        title as 'Title',
        SUBSTRING(description, 1, 50) as 'Description',
        DATE_FORMAT(submission_deadline, '%Y-%m-%d %H:%i') as 'Submission Deadline',
        DATE_FORMAT(review_deadline, '%Y-%m-%d %H:%i') as 'Review Deadline',
        status as 'Status',
        created_by as 'Created By',
        DATE_FORMAT(created_at, '%Y-%m-%d %H:%i') as 'Created'
    FROM conferences
    ORDER BY conference_id;
    
    -- Display papers table data
    SELECT '=== PAPERS TABLE DATA ===' as 'TABLE_INFO';
    SELECT 
        paper_id as 'ID',
        SUBSTRING(title, 1, 30) as 'Title',
        SUBSTRING(abstract, 1, 50) as 'Abstract',
        keywords as 'Keywords',
        status as 'Status',
        author_id as 'Author ID',
        conference_id as 'Conference ID',
        DATE_FORMAT(submission_date, '%Y-%m-%d %H:%i') as 'Submitted'
    FROM papers
    ORDER BY paper_id;
    
    -- Display reviews table data
    SELECT '=== REVIEWS TABLE DATA ===' as 'TABLE_INFO';
    SELECT 
        review_id as 'ID',
        paper_id as 'Paper ID',
        reviewer_id as 'Reviewer ID',
        score_originality as 'Originality',
        score_technical as 'Technical',
        score_clarity as 'Clarity',
        score_impact as 'Impact',
        overall_score as 'Overall Score',
        recommendation as 'Recommendation',
        DATE_FORMAT(review_date, '%Y-%m-%d %H:%i') as 'Reviewed'
    FROM reviews
    ORDER BY review_id;
    
    -- Display paper_assignments table data
    SELECT '=== PAPER_ASSIGNMENTS TABLE DATA ===' as 'TABLE_INFO';
    SELECT 
        assignment_id as 'ID',
        paper_id as 'Paper ID',
        reviewer_id as 'Reviewer ID',
        status as 'Status',
        DATE_FORMAT(assigned_date, '%Y-%m-%d %H:%i') as 'Assigned'
    FROM paper_assignments
    ORDER BY assignment_id;
END
