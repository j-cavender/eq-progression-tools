<!-- BEGIN:nextjs-agent-rules -->

# This is NOT the Next.js you know

This version has breaking changes — APIs, conventions, and file structure may all differ from your training data. Read the relevant guide in `node_modules/next/dist/docs/` before writing any code. Heed deprecation notices.
<!-- END:nextjs-agent-rules -->

# AGENTS.md

## Project Overview

This is a learning-focused Next.js + TypeScript project for building an MMO progression tools app.

The planned app will track characters, rare item collections, inventory import files, and spell/DPS optimization.

The project is currently in early setup. Prefer small, explainable changes that help build the app incrementally.

## Current Tech Stack

- Next.js App Router
- TypeScript
- Tailwind CSS
- ESLint
- GitHub Actions
- Prettier
- Dependabot
- PostgreSQL database created separately

## Planned Tech Stack

- Prisma for database access and migrations
- Zod for input validation
- Vitest for unit testing parser/calculation logic
- Recharts for dashboards and visualizations
- Auth.js or another authentication solution later

## Current Project Structure

- `src/app/` contains routes, pages, and layouts.
- `public/` contains static assets.
- Project configuration files live at the repository root.

## Planned Project Structure

- `src/components/` will contain reusable UI components.
- `src/lib/inventory/` will contain inventory export parsing, item normalization, matching, and import-preview logic.
- `src/lib/dps/` will contain spell damage calculations, focus-effect application, spell ranking, and rotation simulation.
- `src/lib/validations/` will contain validation schemas once Zod is added.
- `prisma/` will contain Prisma schema, migrations, and seed data once Prisma is configured.

## Coding Guidelines

- Use TypeScript throughout.
- Prefer small, focused changes over large rewrites.
- Avoid modifying unrelated files.
- Ask before adding new dependencies.
- Explain the plan before making broad changes.
- Keep business logic out of React components when possible.
- Prefer pure functions for parser, matching, and DPS calculation logic.
- Do not put database queries inside reusable UI components.

## Commands

- Run dev server: `npm run dev`
- Check formatting: `npm run format:check`
- Format files: `npm run format`
- Run lint: `npm run lint`
- Run TypeScript type checking: `npm run typecheck`
- Run build: `npm run build`

## Safety Rules

- Do not commit or expose `.env` files.
- Do not include real database credentials, API keys, or private server data.
- Use sample/fake seed data unless explicitly told otherwise.
