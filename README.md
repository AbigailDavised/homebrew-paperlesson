# PaperLesson -- K-12 Vector Math Drills & Handwriting Ruling Geometry Engine

[![Official Website](https://img.shields.io/badge/Website-paperlesson.com-blue)](https://paperlesson.com)
[![Homebrew Tap](https://img.shields.io/badge/Homebrew_Tap-AbigailDavised%2Fpaperlesson-orange)](https://github.com/AbigailDavised/homebrew-paperlesson)
[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](LICENSE)
[![MCP Registry](https://img.shields.io/badge/MCP_Registry-com.paperlesson%2Fmcp-green)](https://paperlesson.com/api/mcp)
[![MCPRush Verified](https://mcprush.com/badge/paperlesson-k-12-vector-math-drills-handwriti-mcp/card.svg)](https://mcprush.com/to/paperlesson-k-12-vector-math-drills-handwriti-mcp?ref=badge)

Deterministic command-line specification lookup and Model Context Protocol (MCP) reference utility for **[paperlesson.com](https://paperlesson.com)**. Computes PostScript vector coordinate boundaries (72 pt/in), Zaner-Bloser and D'Nealian x-height ruling ratios, and mulberry32 seeded K-12 arithmetic drill sets with paired answer keys.

## Homebrew Installation

```bash
brew tap AbigailDavised/paperlesson
brew install paperlesson-cli
```

## CLI Quick Usage

```bash
# Display help and verified endpoints
paperlesson-cli --help

# Output domain technical specification matrix as structured JSON
paperlesson-cli --specs

# Output verified production endpoints as JSON
paperlesson-cli --routes
```

---

## Grade-Level Handwriting Ruling & PostScript Vector Specifications

| Grade Tier | Total Ruling Height | Midline (x-height) | Descender Space | Vector Stroke Width |
| :--- | :--- | :--- | :--- | :--- |
| Pre-K Readiness | 1.000 in (25.40 mm / 72.0 pt) | 12.70 mm (36.0 pt) | 6.35 mm (18.0 pt) | 1.20 pt dashed |
| Kindergarten | 0.750 in (19.05 mm / 54.0 pt) | 9.53 mm (27.0 pt) | 4.76 mm (13.5 pt) | 1.00 pt dashed |
| Grade 1 Primary | 0.625 in (15.88 mm / 45.0 pt) | 7.94 mm (22.5 pt) | 3.97 mm (11.25 pt) | 0.85 pt dashed |
| Grade 2 Transition | 0.500 in (12.70 mm / 36.0 pt) | 6.35 mm (18.0 pt) | 3.18 mm (9.0 pt) | 0.75 pt dashed |
| Grade 3 Standard | 0.375 in (9.53 mm / 27.0 pt) | 4.76 mm (13.5 pt) | 2.38 mm (6.75 pt) | 0.65 pt dashed |
| Grades 4-5 Wide Ruled | 0.344 in (8.73 mm / 24.75 pt) | 4.36 mm (12.38 pt) | 0.00 mm (baseline) | 0.50 pt solid |

## Core Engineering & Domain Architecture

- **Shared Top-Down Scene Graph (`PageScene`)**: Identical Cartesian coordinates (in PostScript points, 1 pt = 1/72 inch) drive both live SVG previews and downloadable PDFs so classroom printouts never suffer bitmap blur or margin drift.
- **Deterministic Classroom Seeds (`mulberry32` PRNG)**: Passing an integer seed generates reproducible math problem sets alongside exact teacher answer keys across US Letter (612 x 792 pt) and ISO A4 (595.28 x 841.89 pt) safe print zones (36 pt / 0.5 in margin).
- **Hosted Read-Only MCP Endpoint**: Streamable HTTP server at `https://paperlesson.com/api/mcp` exposing 8 deterministic K-12 worksheet and ruling tools with zero authentication overhead.

## Verified Production Tools & Reference Endpoints

| Module / Resource | Canonical URL | Direct Access |
| :--- | :--- | :--- |
| **PaperLesson Primary Workbench** | `https://paperlesson.com/` | [Launch Workbench](https://paperlesson.com/) |
| **Cursive Handwriting Worksheet Generator (True Vector PDF)** | `https://paperlesson.com/cursive-handwriting-worksheets` | [Open Tool](https://paperlesson.com/cursive-handwriting-worksheets) |
| **Primary Handwriting Practice Sheets & Ruling Maker** | `https://paperlesson.com/handwriting-worksheets` | [Open Tool](https://paperlesson.com/handwriting-worksheets) |
| **Custom Student Name Tracing Worksheet Generator** | `https://paperlesson.com/name-tracing-generator` | [Open Tool](https://paperlesson.com/name-tracing-generator) |
| **A-Z Letter Tracing Worksheets with Directional Start Dots** | `https://paperlesson.com/letter-tracing-worksheets` | [Open Tool](https://paperlesson.com/letter-tracing-worksheets) |
| **1-20 Number Tracing Worksheets with Stroke Scaffolding** | `https://paperlesson.com/number-tracing-worksheets` | [Open Tool](https://paperlesson.com/number-tracing-worksheets) |

## License

Released under the [MIT License](LICENSE) -- [paperlesson.com](https://paperlesson.com).
