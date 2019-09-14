
RELEASE_URL="https://api.github.com/repos/stedolan/jq/releases/"

if [ "${1}" == "latest" ]; then
    RELEASE_URL="${RELEASE_URL}${1}"
else
    RELEASE_URL="${RELEASE_URL}tags/jq-${1}"
fi

asset_url=$(curl -s "${RELEASE_URL}" \
	| grep browser_download_url | grep 'jq-win64.exe' | cut -d '"' -f 4)

curl.exe -L -o C:\Windows\system32\jq $asset_url
