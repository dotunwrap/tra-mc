MODS_JSON := "./mods.json"

tflock:
  cd infra && terraform providers lock \
    -platform=windows_amd64 \
    -platform=darwin_amd64 \
    -platform=linux_amd64 \
    -platform=darwin_arm64 \
    -platform=linux_arm64

fmt:
  nix fmt
  cd infra && terraform fmt

alias i := install
install:
  ./scripts/download.sh

alias ci := clean-install
clean-install:
  rm -rf .mods/ && rm mods.lock || true
  just install

lock:
  ./scripts/lock.sh

apply:
  just install && cd infra && terraform apply

plan:
  cd infra && terraform plan

alias mod := _mod
_mod NAME URL:
  jq '.{{NAME}} = "{{URL}}"' {{MODS_JSON}} > temp.json && mv temp.json {{MODS_JSON}}
