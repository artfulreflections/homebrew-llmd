# llmd Homebrew tap

![llmd displaying a Mermaid diagram and rendered math](images/llmd-0.1.2.png)

*Screenshot of the signed and notarized 0.1.2 release displaying the Mermaid and math sections of `fixtures/resize-test.md`.*

`llmd` is a native macOS Markdown viewer and editor. It opens Markdown files or
folders, renders Mermaid diagrams and math, and can also edit documents. The
application is built with SwiftUI and TextKit rather than wrapping the reading
experience in a browser.

## Requirements

- macOS 14 Sonoma or later.
- Apple silicon (arm64). The current 0.1.2 release is arm64-only; it does not
  include an Intel slice.

## Install

```sh
brew install --cask artfulreflections/llmd/llmd
```

Or add the tap first, then install the cask:

```sh
brew tap artfulreflections/llmd
brew install --cask llmd
```

Open `llmd` from Applications, or open a document or folder from Terminal:

```sh
llmd path/to/document.md
llmd path/to/document-folder/
```

The cask makes the app's command-line executable available as `llmd` on your
Homebrew `PATH`.

## Update

```sh
brew update
brew upgrade --cask llmd
```

## Uninstall

To remove the app and keep its preferences:

```sh
brew uninstall --cask llmd
```

To also remove the cask's listed preference file:

```sh
brew uninstall --cask --zap llmd
```

## Security

The 0.1.2 app bundle is signed with the Developer ID identity
`Jeffrey Cruz (DASBVQUK2G)`. On this machine, Gatekeeper accepted the downloaded
bundle with source `Notarized Developer ID`, and `stapler validate` confirmed a
valid stapled notarization ticket.

The cask does not remove the `com.apple.quarantine` attribute. macOS retains its
normal first-open Gatekeeper checks. The cask does not request administrator
privileges.

The AI assistant can connect to configured OpenAI-compatible or Anthropic
services. Configure only services you intend to use; their network and data
handling are governed by those services' policies.

## Project and issue reporting

llmd is a fork of mkdn by Jud Stephenson, https://github.com/Jud/mkdn. The
source repository and issue tracker for this fork are at
[artfulreflections/llmd](https://github.com/artfulreflections/llmd). That source
repository is currently private, so access to its code and issue tracker may
require permission.

## License

The upstream `llmd` software is licensed under the MIT License; its copyright
and license terms are retained in [LICENSE](LICENSE). The LLC notice in that
file is scoped to original tap-specific material and does not replace the
upstream license.
