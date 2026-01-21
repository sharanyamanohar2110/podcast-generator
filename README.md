# Podcast Generator

This project generates a **podcast RSS feed from a YAML configuration file** and publishes it using **GitHub Pages**. It’s designed to simplify podcast hosting by removing the need to manually write or maintain RSS XML files.

You define your podcast and episodes in YAML, and the generator takes care of producing a valid feed that podcast platforms can consume.

---

## What this does

- Converts a YAML file into a valid podcast RSS feed  
- Supports multiple episodes with standard podcast metadata  
- Publishes the feed using GitHub Pages  
- Can be run locally or automated using GitHub Actions  
- Includes Docker support for consistent execution  

This project focuses on feed generation and hosting, not audio creation or AI-based podcast scripting.

---

## How it works

1. Define podcast metadata and episode details in a YAML file  
2. A Python script parses the YAML and generates an RSS feed  
3. The feed is deployed through GitHub Pages  
4. Podcast platforms can subscribe to the published feed URL  

---

## Repository structure

```text
.
├── feed.py          # Core Python script that generates the RSS feed
├── action.yaml      # GitHub Actions workflow for automation
├── entrypoint.sh    # Entry point for GitHub Actions / Docker
├── Dockerfile       # Docker setup for running the generator
├── README.md        # Project documentation
```
## Usage

### 1. Define your podcast in YAML

Create or update a YAML file containing podcast-level metadata and episode details, such as:

- Podcast title and description  
- Episode titles and summaries  
- Audio file URLs  
- Publish dates  

The generator reads this configuration to build the RSS feed.

---

### 2. Generate the feed locally

```bash
python feed.py
```


This will generate an RSS feed file based on the YAML configuration.

### 3. Publish using GitHub Pages

When used with GitHub Actions, the feed is automatically generated and deployed to GitHub Pages, making it accessible via a public URL.

## Automation with GitHub Actions

The included GitHub Actions workflow allows you to:

- Regenerate the feed on every commit

- Automatically deploy updates

- Keep the podcast feed in sync with changes to the YAML file

No manual deployment steps required once configured.

## Requirements

- Python 3.x

- PyYAML (and other dependencies defined in the project)

- Optional: Docker (for containerized execution)

## Use cases

- Hosting a podcast without a dedicated backend

- Managing podcast episodes as version-controlled files

- Quickly prototyping or maintaining lightweight podcast feeds

- Learning how podcast RSS feeds are structured
