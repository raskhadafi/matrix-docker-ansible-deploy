#!/usr/bin/env bash
set -euo pipefail
[[ -n "${TRACE:-}" ]] && set -x
DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

main() {
  echo "on-create begin"
  echo "$(date +'%Y-%m-%d %H:%M:%S')    on-create begin" >> "$HOME/status"
  echo 'eval "$(direnv hook zsh)"' >> "$HOME/.zshrc"
  echo "on-create end"
  echo "$(date +'%Y-%m-%d %H:%M:%S')    on-create end" >> "$HOME/status"
}

main "$@"
