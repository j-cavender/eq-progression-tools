# EQ Progression Tools

A full-stack MMO progression tracker for managing characters, rare item collections, inventory imports, and future combat optimization tools.

## Overview

EQ Progression Tools is a portfolio-focused web application designed to replace spreadsheet-based progression tracking with a structured, database-backed dashboard.

The initial goal is to support character tracking and rare item collection progress. Future features may include inventory text import, item matching, spell data modeling, and DPS calculation tools.

This project is being built to demonstrate full-stack development, relational database design, CRUD workflows, data modeling, file parsing, business logic, and dashboard-style UI development.

## Project Status

This project is in the initial setup stage.

Currently included:

* Next.js
* TypeScript
* App Router
* Tailwind CSS
* ESLint
* `src/` directory structure
* Import alias configured as `@/*`

Planned next steps:

* Add Prisma
* Connect PostgreSQL
* Define the initial database schema
* Add seed data
* Build the first database-backed progress dashboard

## Planned MVP

The first meaningful version of the app will allow a user to:

* Create and manage characters
* Create rare item collections
* Track which characters need which items
* Mark item progress as obtained, missing, banked, equipped, skipped, or similar
* View progress by character and collection

## Future Features

Potential future features include:

* Inventory text import
* Item name normalization and matching
* Import preview before applying updates
* Import history
* Spell database
* DPS and efficiency calculations
* Focus effect modeling
* Basic combat rotation simulation
* Charts and progress visualizations
* Authentication and multi-user support

## Tech Stack

Current stack:

* Next.js
* TypeScript
* Tailwind CSS
* ESLint
* GitHub Actions
* Prettier
* Dependabot

Planned additions:

* PostgreSQL
* Prisma
* Zod
* Vitest
* Recharts
* shadcn/ui
* Auth.js or similar authentication
* Playwright
* Vercel
* Hosted PostgreSQL through Supabase, Neon, or a similar provider

## Getting Started

Install dependencies:

```bash
npm install
```

Run the development server:

```bash
npm run dev
```

Open the app in your browser:

```text
http://localhost:3000
```

## Available Scripts

Start the development server:

```bash
npm run dev
```

Check formatting:

```bash
npm run format:check
```

Format files:

```bash
npm run format
```

Run linting:

```bash
npm run lint
```

Run TypeScript type checking:

```bash
npm run typecheck
```

Build for production:

```bash
npm run build
```

## Development Philosophy

This project is being built with a focus on learning, maintainability, and professional workflow habits.

Guiding principles:

* Keep early scope narrow
* Keep `main` stable
* Use feature branches for meaningful changes
* Prefer small, focused pull requests
* Keep business logic out of React components when possible
* Use pure functions for parsing and calculation logic
* Avoid unnecessary dependencies early
* Do not merge code that cannot be explained

## Roadmap

Initial build order:

1. Project documentation
2. Prisma setup
3. Initial database schema
4. Seed/sample data
5. First database-backed dashboard
6. Character management
7. Rare item collection tracking
8. Manual item progress updates
9. Inventory import parser
10. Import preview workflow
11. Spell and DPS tools

## License

License information has not been added yet.
