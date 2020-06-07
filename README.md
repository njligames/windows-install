# Hello world docker action

This action prints "Hello World" or "Hello" + the name of a person to greet to the log.

## Inputs

### `package-name`

**Required** The name of the package to install. Default `lua`.

## Outputs

### `time`

The time the package was installed.

## Example usage

uses: actions/windows-install@v1
with:
  package-name: 'lua'
