# homebrew-tap

Homebrew tap for Kaya's CLI tools.

## Bestmate

```bash
brew install kayacancode/tap/bestmate
```

Bestmate is your twin from the terminal — ask your knowledge base, ingest
meetings and docs, connect sources:

```bash
bestmate login                 # paste your sk-kaya-* API key
bestmate twin list
bestmate ask "what did we decide last week?"
```

More at [bestmate.io](https://bestmate.io).

## PeopleGraph

```bash
brew tap kayacancode/tap
brew install peoplegraph
```

PeopleGraph queries the local Obsidian Gmail CRM contact cache:

```bash
peoplegraph who-knows --company betaworks
peoplegraph find-person "Harper Reed"
peoplegraph score harper@2389.ai
```
