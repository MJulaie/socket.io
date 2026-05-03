HOTFIX_COMMIT=82443c8
VERSION=v3.0.3

MODULE_TAGS=(
  "$VERSION"
  "servers/socket/$VERSION"
  "servers/engine/$VERSION"
  "parsers/socket/$VERSION"
  "parsers/engine/$VERSION"
  "clients/socket/$VERSION"
  "clients/engine/$VERSION"
  "adapters/redis/$VERSION"
  "adapters/adapter/$VERSION"
)

for tag in "${MODULE_TAGS[@]}"; do
  git tag -a "$tag" "$HOTFIX_COMMIT" -m "release: $tag"
done

for tag in "${MODULE_TAGS[@]}"; do
  git push origin "$tag"
done
