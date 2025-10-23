# 📚 Research Paper Submission System

A structured SQL-based backend system designed to manage the end-to-end workflow of research paper submissions, reviews, and conference assignments.

## 🧩 Features

- 📄 Paper submission and assignment tracking
- 👥 User roles: authors, reviewers, and administrators
- 📝 Review management and scoring
- 🗂 Conference organization and paper mapping
- 📊 Views and stored procedures for data access and reporting

## 🗃️ Repository Structure

| File Name                             | Description |
|--------------------------------------|-------------|
| `database.sql`                       | Initializes the database schema |
| `sample_data.sql`                    | Inserts sample data for testing |
| `research_paper_system_users.sql`    | Defines user roles and credentials |
| `research_paper_system_papers.sql`   | Manages paper metadata |
| `research_paper_system_reviews.sql`  | Handles review entries |
| `research_paper_system_conferences.sql` | Maps papers to conferences |
| `research_paper_system_paper_assignments.sql` | Tracks reviewer-paper assignments |
| `research_paper_system_routines.sql` | Contains stored routines |
| `ShowAllTableData.sql`               | Procedure to display all table data |
| `ShowTablesExactCount.sql`          | Procedure to count entries in each table |
| `vw_authors.sql`                     | View for author-specific data |
| `vw_reviewers.sql`                   | View for reviewer-specific data |

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/saideep-ghosh/Research-paper-submission-system-ev2.git
   ```
2. Import `database.sql` into your SQL environment.
3. Run `sample_data.sql` to populate tables.
4. Use views and stored procedures for querying and reporting.

## 🛠 Technologies Used

- SQL (MySQL/PostgreSQL compatible)
- Stored Procedures & Views
- Relational Schema Design

## 📌 Status

🟢 Active development with foundational schema and procedures in place.

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you'd like to change.
