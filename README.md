# Homebrew BastionBuddy

This repository contains the Homebrew formula for [BastionBuddy](https://github.com/antnsn/BastionBuddy).

## Installation

```bash
# Add the tap
brew tap antnsn/bastionbuddy

# Install BastionBuddy
brew install bastionbuddy
```

## Development

To update the formula:

1. Update the version number in `Formula/bastionbuddy.rb`
2. Update the SHA256 hashes for each binary distribution
3. Test the formula locally: `brew install --build-from-source Formula/bastionbuddy.rb`
4. Commit and push changes

## License

This repository is licensed under the same terms as BastionBuddy itself.
