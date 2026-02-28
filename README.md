# Two Kings Tech — Landing Site

Jekyll-based landing page for listing React Native apps and their privacy policies.

## Prerequisites

- macOS with Homebrew Ruby installed (`/opt/homebrew/opt/ruby/bin/ruby`)
- Bundler (comes with the Homebrew Ruby install)

If you haven't installed dependencies yet:

```bash
make install
```

## Running locally

```bash
make serve
```

Opens at [http://localhost:4000](http://localhost:4000). The site auto-reloads when you edit files.

## Adding an app

1. Create `_apps/your-app-name.md` with this front matter:

```yaml
---
title: "Your App"
tagline: "Short punchy line."
description: "One or two sentences shown on the card."
icon: /assets/icons/your-icon.png
app_store_url: "https://apps.apple.com/..."   # leave empty if not live
play_store_url: "https://play.google.com/..."  # leave empty if not live
privacy_policy: /apps/your-app-name/privacy/
---

Long-form description shown on the app detail page.
```

2. Create the privacy policy at `apps/your-app-name/privacy.md`:

```yaml
---
layout: privacy
title: "Your App — Privacy Policy"
app_name: "Your App"
app_url: /apps/your-app-name/
updated: "YYYY-MM-DD"
permalink: /apps/your-app-name/privacy/
---

Policy content here (Markdown).
```

3. Drop the app icon in `assets/icons/`. Never add files directly to `_site/` — that folder is wiped on every build.

## Building for production

```bash
make build
```

Output goes to `_site/`. Upload the contents of that folder to any static host (GitHub Pages, Netlify, etc.).

## Project structure

```
_apps/            # one .md file per app (the Jekyll collection)
_includes/        # header, footer, app-card partials
_layouts/         # default, app, privacy page layouts
apps/             # static privacy policy pages
assets/
  css/main.css    # all styles, single file
  icons/          # app icons
_config.yml       # site title, legal name, email, collection config
Makefile          # serve / build / install shortcuts
```
