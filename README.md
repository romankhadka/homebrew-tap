# homebrew-tap

Personal Homebrew tap for [@romankhadka](https://github.com/romankhadka).

## Install a formula

```bash
brew tap romankhadka/tap
brew install <formula>
```

Or, in one line without explicitly tapping:

```bash
brew install romankhadka/tap/<formula>
```

## Available formulae

| Formula | Description |
| ------- | ----------- |
| `verso` | Terminal EPUB reader with vim navigation and Markdown highlight export. See [github.com/romankhadka/verso](https://github.com/romankhadka/verso). |
| `yakka` | Terminal multiplexer for running Claude Code and Codex side by side. See [github.com/romankhadka/yakka](https://github.com/romankhadka/yakka). |

## Updating a formula

When upstream releases a new version, update the corresponding `Formula/*.rb`
with the new version, URLs, and SHA256s. Get the SHAs from the GitHub
Release assets:

```bash
gh release download <tag> -R romankhadka/<repo> -p '*.tar.gz'
shasum -a 256 *.tar.gz
```
