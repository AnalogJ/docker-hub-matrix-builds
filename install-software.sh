#!/usr/bin/env bash
# retrieve the latest jq release info

RELEASE_URL="https://api.github.com/repos/stedolan/jq/releases/"

if [ "${1}" == "latest" ]; then
    RELEASE_URL="${RELEASE_URL}${1}"
else
    RELEASE_URL="${RELEASE_URL}tags/jq-${1}"
fi

echo "$RELEASE_URL"
asset_url=$(curl -s "${RELEASE_URL}" \
	| grep browser_download_url | grep 'jq-linux64' | cut -d '"' -f 4)

curl -L -o /usr/bin/jq "$asset_url"

# make jq executable
chmod +x jq
