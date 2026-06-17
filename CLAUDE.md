# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build

```bash
pdflatex resume.tex        # single pass
pdflatex resume.tex        # run twice to resolve bookmarks/outlines
```

Requires `texlive-latex-base texlive-fonts-recommended texlive-latex-extra texlive-fonts-extra` (Ubuntu/Debian).

Output: `resume.pdf`. Build artifacts (`*.aux`, `*.log`, `*.out`, etc.) are gitignored.

**ATS note:** If submitting to older ATS systems, print the PDF to another PDF to strip active hyperlinks.

## Structure

- `resume.tex` — entry point; defines personal info macros (`\name`, `\phone`, `\email`, `\LinkedIn`, `\github`, `\kaggle`, `\role`) and `\input`s all sections
- `_header.tex` — renders the name/contact header using the macros defined in `resume.tex`
- `TLCresume.sty` — all formatting: fonts (Source Sans Pro), margins (0.5in), highlight color (`RGB 61,90,128`), custom environments and commands
- `sections/` — one file per resume section, each `\input`ed from `resume.tex`

## Custom LaTeX commands (from TLCresume.sty)

| Command | Purpose |
|---|---|
| `\begin{zitemize}...\end{zitemize}` | Tight bullet list (use instead of `itemize`) |
| `\subtext{...}` | Italic subtitle under a `\subsection` (e.g. job title) |
| `\skills{...}` | Bold text, used for degree/institution in education |

## Conventions

- Each job/project is a `\subsection{Title \hfill Date}` followed optionally by `\subtext{Role}` then a `zitemize` block
- Use `\&amp;` → `\&` for ampersands inside bullet text; `---` for em-dashes
- `\textbf{...}` to highlight key metrics or tools inline
- Sections are toggled by commenting/uncommenting `\input` lines in `resume.tex`
- The `activities` section is commented out by default
