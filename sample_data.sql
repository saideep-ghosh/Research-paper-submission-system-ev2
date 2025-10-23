-- Sample Data for Research Paper Submission System
-- This file can be run multiple times without errors

USE research_paper_system;

-- Disable foreign key checks to avoid constraint errors
SET FOREIGN_KEY_CHECKS = 0;

-- Clear existing sample data (optional - remove if you want to keep existing data)
DELETE FROM paper_assignments WHERE assignment_id > 0;
DELETE FROM reviews WHERE review_id > 0;
DELETE FROM papers WHERE paper_id > 0;
DELETE FROM conferences WHERE conference_id > 0;
DELETE FROM users WHERE user_id > 1; -- Keep the original admin user

-- Reset auto-increment counters
ALTER TABLE paper_assignments AUTO_INCREMENT = 1;
ALTER TABLE reviews AUTO_INCREMENT = 1;
ALTER TABLE papers AUTO_INCREMENT = 1;
ALTER TABLE conferences AUTO_INCREMENT = 1;
ALTER TABLE users AUTO_INCREMENT = 2;

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;

-- Insert sample conferences
INSERT IGNORE INTO conferences (title, description, submission_deadline, review_deadline, status, created_by) VALUES
('International Conference on Computer Science 2024', 'Annual computer science conference covering latest research in AI, machine learning, database systems, and software engineering.', '2024-12-31', '2025-01-31', 'open', 1),
('IEEE Data Engineering Workshop 2024', 'Workshop focused on data engineering, big data technologies, database management systems, and data analytics.', '2024-11-30', '2024-12-31', 'open', 1),
('ACM Symposium on Artificial Intelligence 2024', 'Premier AI research symposium covering machine learning, deep learning, natural language processing, computer vision, and AI ethics.', '2024-10-15', '2024-11-30', 'open', 1),
('International Conference on Software Engineering 2024', 'Leading conference on software engineering practices, agile methodologies, DevOps, and software quality assurance.', '2024-09-30', '2024-10-31', 'closed', 1),
('Conference on Database Systems Research 2024', 'Specialized conference on advanced database technologies, distributed systems, query optimization, and data privacy.', '2025-02-28', '2025-03-31', 'open', 1);

-- Insert sample users (password for all is "password123")
INSERT IGNORE INTO users (username, email, password_hash, first_name, last_name, role, affiliation, expertise_area) VALUES
('admin2', 'admin2@university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jennifer', 'Wilson', 'admin', 'University Administration', NULL),
('author1', 'john.researcher@tech.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'John', 'Zhang', 'author', 'Tech University', NULL),
('author2', 'sarah.smith@science.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sarah', 'Smith', 'author', 'Science Institute', NULL),
('author3', 'mike.johnson@eng.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Michael', 'Johnson', 'author', 'Engineering College', NULL),
('author4', 'emily.chen@research.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Emily', 'Chen', 'author', 'Research University', NULL),
('reviewer1', 'dr.sarah.expert@ai.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dr. Sarah', 'Expert', 'reviewer', 'AI Research Lab', 'Machine Learning, Deep Learning, Neural Networks'),
('reviewer2', 'prof.michael.scientist@db.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Prof. Michael', 'Scientist', 'reviewer', 'Database Systems Department', 'Database Management, Distributed Systems, Query Optimization'),
('reviewer3', 'dr.david.wang@se.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dr. David', 'Wang', 'reviewer', 'Software Engineering Institute', 'Software Development, Agile Methodologies, Testing'),
('reviewer4', 'prof.lisa.garcia@security.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Prof. Lisa', 'Garcia', 'reviewer', 'Cybersecurity Research Center', 'Network Security, Cryptography, Data Privacy'),
('reviewer5', 'dr.robert.kim@nlp.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dr. Robert', 'Kim', 'reviewer', 'Computational Linguistics Lab', 'Natural Language Processing, Text Mining, AI Ethics');

-- Insert sample papers (using actual user IDs that will be created)
INSERT IGNORE INTO papers (title, abstract, keywords, paper_file_path, status, author_id, conference_id) VALUES
('Advanced Neural Networks for Image Recognition', 'This paper presents a novel approach to image recognition using advanced convolutional neural networks. Our method achieves state-of-the-art performance on benchmark datasets while requiring significantly less computational resources.', 'neural networks, image recognition, computer vision, deep learning', 'assets/uploads/papers/sample_paper1.pdf', 'under_review', 2, 1),
('Optimizing SQL Query Performance in Distributed Databases', 'We propose a new query optimization technique for distributed database systems that reduces query execution time by up to 40%. Our approach uses machine learning to predict optimal query plans.', 'database optimization, distributed systems, SQL queries, machine learning', 'assets/uploads/papers/sample_paper2.pdf', 'submitted', 2, 2),
('Machine Learning Approaches for Cybersecurity Threat Detection', 'This research explores various machine learning algorithms for detecting cybersecurity threats in real-time. We compare the effectiveness of supervised and unsupervised learning methods.', 'cybersecurity, machine learning, threat detection, network security', 'assets/uploads/papers/sample_paper3.pdf', 'under_review', 3, 1),
('Natural Language Processing for Medical Text Analysis', 'We develop a specialized NLP pipeline for analyzing medical literature and clinical notes. Our system achieves 92% accuracy in extracting relevant medical concepts and relationships.', 'natural language processing, healthcare, text mining, medical informatics', 'assets/uploads/papers/sample_paper4.pdf', 'accepted', 3, 3),
('Blockchain-Based Secure Data Sharing Framework', 'This paper presents a blockchain framework for secure and transparent data sharing in multi-party environments. Our solution ensures data integrity, access control, and auditability.', 'blockchain, data security, access control, distributed ledger', 'assets/uploads/papers/sample_paper5.pdf', 'under_review', 4, 5),
('Agile Software Development in Large-Scale Projects', 'We investigate the challenges and solutions for implementing agile methodologies in large-scale software development projects. Through case studies we identify key success factors.', 'agile methodology, software engineering, project management, scalability', 'assets/uploads/papers/sample_paper6.pdf', 'revisions_required', 4, 4),
('Deep Reinforcement Learning for Autonomous Systems', 'This research explores deep reinforcement learning techniques for autonomous decision-making in complex environments. We propose a new algorithm combining policy gradients with hierarchical learning.', 'reinforcement learning, autonomous systems, robotics, AI', 'assets/uploads/papers/sample_paper7.pdf', 'submitted', 5, 1),
('Data Privacy Preservation in Cloud Databases', 'We introduce a novel approach for preserving data privacy in cloud database systems while maintaining query functionality. Our method uses homomorphic encryption techniques.', 'data privacy, cloud computing, encryption, database security', 'assets/uploads/papers/sample_paper8.pdf', 'under_review', 5, 5);

-- Insert sample paper assignments
INSERT IGNORE INTO paper_assignments (paper_id, reviewer_id, status) VALUES
(1, 6, 'completed'),
(1, 7, 'assigned'),
(2, 7, 'assigned'),
(3, 6, 'completed'),
(3, 9, 'assigned'),
(4, 6, 'completed'),
(4, 10, 'completed'),
(5, 7, 'completed'),
(5, 9, 'assigned'),
(6, 8, 'completed'),
(7, 6, 'assigned'),
(8, 7, 'assigned'),
(8, 9, 'assigned');

-- Insert sample reviews
INSERT IGNORE INTO reviews (paper_id, reviewer_id, score_originality, score_technical, score_clarity, score_impact, overall_score, comments_to_author, comments_to_chair, recommendation) VALUES
(1, 6, 4, 5, 4, 4, 4.25, 'Excellent work on the neural network architecture. The combination of attention mechanisms with CNNs is innovative. However, the paper could benefit from more comparisons with recent state-of-the-art methods.', 'Strong paper with solid methodology. The computational efficiency claims are well-supported by the experiments. Recommend acceptance with minor revisions.', 'accept'),
(3, 6, 3, 4, 3, 4, 3.50, 'Good overview of ML approaches for cybersecurity. The ensemble methods show promise. However, the dataset description is somewhat limited.', 'Paper has potential but requires significant revisions. The methodology section needs more detail.', 'revisions_required'),
(4, 6, 5, 4, 5, 5, 4.75, 'Outstanding work on medical NLP applications. The 92% accuracy is impressive and well-validated. The clinical relevance is clearly demonstrated.', 'Excellent paper with clear clinical applications. The methodology is sound and results are significant. Strong recommend for acceptance.', 'accept'),
(4, 10, 4, 5, 4, 4, 4.25, 'Very good NLP pipeline with practical healthcare applications. The concept extraction accuracy is notable.', 'Solid contribution to medical informatics. The approach is technically sound and well-evaluated. Recommend acceptance.', 'accept'),
(5, 7, 4, 4, 3, 4, 3.75, 'Interesting blockchain framework for data sharing. The multi-party environment focus is relevant.', 'Promising approach but requires revisions. The security claims need stronger validation.', 'revisions_required'),
(6, 8, 3, 3, 4, 3, 3.25, 'Valuable case studies on agile scaling challenges. The framework is practical.', 'Paper addresses important topic but lacks methodological rigor. Major revisions required.', 'revisions_required');

-- Display success message and summary
SELECT '✅ Sample data inserted successfully!' as message;

-- Show data counts
SELECT 
    (SELECT COUNT(*) FROM users) as total_users,
    (SELECT COUNT(*) FROM users WHERE role = 'admin') as admin_users,
    (SELECT COUNT(*) FROM users WHERE role = 'author') as author_users,
    (SELECT COUNT(*) FROM users WHERE role = 'reviewer') as reviewer_users,
    (SELECT COUNT(*) FROM conferences) as total_conferences,
    (SELECT COUNT(*) FROM papers) as total_papers,
    (SELECT COUNT(*) FROM reviews) as total_reviews;

-- Show user information for reference
SELECT user_id, username, role, first_name, last_name FROM users ORDER BY user_id;

-- Show paper status summary
SELECT status, COUNT(*) as count FROM papers GROUP BY status ORDER BY count DESC;
