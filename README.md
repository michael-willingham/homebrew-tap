# Michael's Homebrew Tap

A custom Homebrew tap for formulas and casks not available (or broken) in the default repositories.

## Available Packages

### Formulas

| Formula | Description |
|---------|-------------|
| [zigflow](https://zigflow.dev/) | Temporal DSL for turning declarative YAML into production-ready workflows |

### Casks

| Cask | Description |
|------|-------------|
| [netlogo](https://www.netlogo.org/) | Multi-agent programmable modeling environment |

## Installation

```sh
brew tap michael-willingham/tap
```

Then install any package:

```sh
brew install zigflow
brew install --cask netlogo
```

Or install directly without tapping first:

```sh
brew install michael-willingham/tap/zigflow
brew install michael-willingham/tap/netlogo
```

Or in a `brew bundle` `Brewfile`:

```ruby
tap "michael-willingham/tap"
brew "zigflow"
cask "netlogo"
```

## Auto-updates

Both packages are checked daily for new upstream releases via a GitHub Actions workflow. Version bumps and checksum updates are committed automatically.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
