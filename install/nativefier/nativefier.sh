echo "Installing nativefier'ed applications..."
mkdir "$CACHE/temp_nativefier"
makeNativefier() {
    local name="$1"
    local icon="./resources/icons/$1.png"
    local url="$2"
    if [ ! -d "$name.app" ]; then
        echo "Nativefier - $1"
        nativefier -n "$name" -i "$icon" --maximize "$url" "$CACHE/temp_nativefier"
    fi
}

makeNativefier "Deploy" "https://shed.deployhq.com"
makeNativefier "Float" "https://my.floatapp.com/companies/14605/cashflow"
makeNativefier "Forecast" "https://forecastapp.com/682064/schedule/team"
makeNativefier "FreeAgent" "https://shedcollective.freeagent.com"
makeNativefier "GitHub" "https://github.com"
makeNativefier "GitLab" "https://gitlab.com"
makeNativefier "Rollbar" "https://rollbar.com"
makeNativefier "Shed Intranet" "https://intranet.studio.theshed.io"

find "$CACHE/temp_nativefier" -name '*.app' -maxdepth 2 -exec cp -pr '{}' "/Applications/" ';'
rm -rf "$CACHE/temp_nativefier"