# Haskell Lint GitHub Action

An action that runs `hlint` checks over Haskell code.

If there are errors found in the Haskell code then the action will fail.

It will insert inline suggestions into the PR:

![](./etc/inline-annotation.png)

## Usage

### Example Workflow

```
workflow "Code Checks" {
  on = "push"
  resolves = ["haskell-lint"]
}

action "haskell-lint" {
  uses = "domdere/haskell-lint-action@master"
  secrets = ["GITHUB_TOKEN"]
}
```

The `GITHUB_TOKEN` checkbox must be explicitly checked so that the action
can create GitHub Check Runs.

### Configuration

Configuration is done by setting environment variables

| Name                     | Description                                                                                                   | Required/Optional(Default) |
|--------------------------|---------------------------------------------------------------------------------------------------------------|----------------------------|
| `HLINT_ACTION_LOG_LEVEL` | Sets the log level for the action, or debugging purposes, one of `[trace, debug, info, warn, error, fatal]`   | Optional(`info`)           |
| `ACTION_TIMEOUT`         | The timeout duration in integer seconds before the hlint check declares a timeout result for the GitHub Check | Optional(`15`)             |

## TODOs

- [x] Opens proper GitHub check runs
- [x] Annotates lines in PR with suggestions
- [ ] Support `hlint.yaml` in repos
- [ ] Support `hlint.yaml` by reference (from S3/GitHub/etc...)
