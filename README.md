# SQL-Driven-Quiz-Management-System

A complete quiz platform developed entirely using SQL. This project simulates quiz registration, answering, scoring, and leaderboard generation using **stored procedures**, **triggers**, and **SQL tables**—all run through the command-line SQL interface, without any external application code.

---

## 📌 Project Highlights

- 🔄 **User Registration** handled via stored procedures.
- ❌ **Repeat Attempt Prevention** using a tracking table and triggers.
- 📝 **Quiz Attempt Simulation** through SQL procedure calls.
- 🏆 **Leaderboard Generation** with dynamic score updates.
- 💻 **No external language or UI** — everything happens within MySQL.

---

## 🗂️ Schema Overview

The project includes:

- **`users`**: Stores user details.
- **`questions`**: Stores quiz questions and options.
- **`answers`**: Stores correct answers.
- **`attempts`**: Records each user’s quiz responses and scores.
- **`attempt_tracker`**: Prevents repeated attempts of the same question.

---

## ⚙️ Key SQL Components

- **Stored Procedures**:
  - `register_user(username)` – Registers a new user.
  - `submit_answer(username, question_id, answer_option)` – Records user answers and updates score.
  - `generate_leaderboard()` – Displays current leaderboard.

- **Triggers**:
  - Prevent duplicate attempts per user-question.
  - Automatically update score on correct answer submission.

---

## 🚀 How to Run the Project

1. **Import the SQL Dump**  
   If you have the `quiz_project_dump.sql` file:
   ```bash
   mysql -u root -p quizdb < quiz_project_dump.sql
