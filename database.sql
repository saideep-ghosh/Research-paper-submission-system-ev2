-- Create database
CREATE DATABASE IF NOT EXISTS research_paper_system;
USE research_paper_system;

-- Users table
CREATE TABLE  if not exists users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role ENUM('author', 'reviewer', 'admin') NOT NULL,
    affiliation VARCHAR(100),
    expertise_area VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Conferences table
CREATE TABLE if not exists conferences (
    conference_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    submission_deadline DATE,
    review_deadline DATE,
    status ENUM('open', 'closed', 'completed') DEFAULT 'open',
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (created_by) REFERENCES users(user_id)
);

-- Papers table
CREATE TABLE if not exists papers (
    paper_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    abstract TEXT NOT NULL,
    keywords VARCHAR(200),
    paper_file_path VARCHAR(255),
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('submitted', 'under_review', 'accepted', 'rejected', 'revisions_required') DEFAULT 'submitted',
    author_id INT,
    conference_id INT,
    FOREIGN KEY (author_id) REFERENCES users(user_id),
    FOREIGN KEY (conference_id) REFERENCES conferences(conference_id)
);

-- Reviews table
CREATE TABLE if not exists reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    paper_id INT,
    reviewer_id INT,
    score_originality INT CHECK (score_originality BETWEEN 1 AND 5),
    score_technical INT CHECK (score_technical BETWEEN 1 AND 5),
    score_clarity INT CHECK (score_clarity BETWEEN 1 AND 5),
    score_impact INT CHECK (score_impact BETWEEN 1 AND 5),
    overall_score DECIMAL(3,2),
    comments_to_author TEXT,
    comments_to_chair TEXT,
    recommendation ENUM('accept', 'reject', 'revisions_required'),
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (paper_id) REFERENCES papers(paper_id),
    FOREIGN KEY (reviewer_id) REFERENCES users(user_id),
    UNIQUE KEY unique_review_assignment (paper_id, reviewer_id)
);

-- Paper assignments table
CREATE TABLE if not exists paper_assignments (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    paper_id INT,
    reviewer_id INT,
    assigned_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('assigned', 'completed', 'declined') DEFAULT 'assigned',
    FOREIGN KEY (paper_id) REFERENCES papers(paper_id),
    FOREIGN KEY (reviewer_id) REFERENCES users(user_id)
);

-- Insert sample admin user
INSERT INTO users (username, email, password_hash, first_name, last_name, role, affiliation) 
VALUES ('myadmin', 'iadmin@university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'System', 'Administrator', 'admin', 'University');
