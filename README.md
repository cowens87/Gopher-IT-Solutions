# 🎫 Gopher IT Solutions - Ticket Tracker

![Gophers at Work](/images/gophers_at_work.png)

Welcome to **Gopher IT Solutions**, a fun and functional Rails app for tracking IT support requests — powered by a team of imaginary forest gophers 🐿️. This app allows users to create, view, update, and list support tickets. It's built with Ruby on Rails and styled with simple HTML, Tailwind-style utilities, and inline CSS for clarity.

---

## 🚀 Features

- ✅ View all submitted tickets (`index`)
- ✅ View individual ticket details (`show`)
- ✅ Submit new tickets (`new`)
- ✅ Edit existing tickets (`edit`)
- 🪵 Stylized forest-themed interface

---

## 🛠 Setup Instructions

1. **Clone the repository**:

   ```bash
   git clone https://github.com/cowens87/gopher-it-solutions.git
   cd gopher-it-solutions
   bundle install
   rails db:create db:migrate db:seed
   rails server
   ```

---

## User Stories

| ID | As a...           | I want to...                                                             | So that I can...                                                |
|----|-------------------|--------------------------------------------------------------------------|-----------------------------------------------------------------|
| 1  | DevOps Gopher     | create a ticket with a title, description, and status                   | document an issue or request clearly                            |
| 2  | DevOps Gopher     | view a list of all submitted tickets                                    | see what issues are currently open or in progress               |
| 3  | DevOps Gopher     | update the status of a ticket                                           | reflect progress made on resolving the issue                    |
| 4  | DevOps Gopher     | submit a ticket through a form                                          | report an issue without needing to interact with the database   |
| 5  | DevOps Gopher     | see ticket creation timestamps                                          | understand how long an issue has been open                      |
| 6  | DevOps Gopher     | delete a ticket                                                         | remove issues that are no longer relevant                       |
| 7  | DevOps Gopher     | sort tickets by Created Date                                            | quickly find the newest or oldest issues.                       |
| 8  | DevOps Gopher     | **[🐛BUG]** Fix Ticket Creation Test                                    | match the test to the actual UI and passes successfully         |

---