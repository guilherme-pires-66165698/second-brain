# Cyclops Frontend

## Overview

| Field | Value |
|-------|-------|
| **Name** | @galp/cyclops-web |
| **Version** | 0.56.4 |
| **Repository** | [galpenergia/cyclops-frontend](https://github.com/galpenergia/cyclops-frontend) |
| **Coder Workspace** | [cyclops-frontend](http://192.168.1.200:3000/@guilherme-pires-66165698/cyclops-frontend) |
| **Stack** | Next.js 15, React 19, TypeScript 5, Tailwind 4 |
| **Status** | Active |

## Description

Web application for automatic document processing using OCR (Optical Character Recognition). Users can upload, preview, and process various types of files, leveraging OCR to extract information automatically.

## Key Features

- Upload, list, and download files
- Automatic document processing using OCR
- Preview Excel files and other supported formats
- Download files stored in S3
- Text internationalization (next-intl)
- Next-Auth authentication integration

## Tech Stack

### Core
- **Framework**: Next.js 15 (with Turbopack)
- **React**: 19.0.1
- **TypeScript**: 5.x
- **Styling**: Tailwind CSS 4

### AWS Integration
- DynamoDB (client SDK)
- S3 (file storage + presigned URLs)

### Testing
- Jest + Testing Library
- E2E tests configured

### Observability
- Winston (logging)
- OpenTelemetry (tracing)

## Project Structure

```
app/            # Next.js App Router pages
components/     # React components
actions/        # Server actions
contexts/       # React contexts
constants/      # App constants
i18n/           # Internationalization config
lib/            # Utility libraries
messages/       # Translation files
types/          # TypeScript types
utils/          # Helper functions
infra/          # Infrastructure (Docker, DynamoDB setup)
public/         # Static assets
styles/         # Global styles
```

## Commands

```bash
# Development
npm run dev

# Build
npm run build

# Tests
npm run test:e2e
npm run test:cov

# Local infrastructure
npm run docker:local
npm run dynamodb:setup:local
```

## Related

- [[cyclops-backend]] - Backend API

## Tags

#project #galp #nextjs #react #typescript #ocr

## Architecture Graph

\![[cyclops-frontend-graph.canvas]]

![[cyclops-frontend-flow.canvas]]
