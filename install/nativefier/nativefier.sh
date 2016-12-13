echo "Installing nativefier'ed applications..."
mkdir "$HOME/temp_nativefier"
makeNativefier() {
    local name="$1"
    local url="$2"
    if [ ! -d "$name.app" ]; then
        # @todo - set the icon
        nativefier -n "$name"  --maximize "$url" "$HOME/temp_nativefier"
    fi
}

makeNativefier "Deploy" "https://shed.deployhq.com"
makeNativefier "FreeAgent" "https://shedcollective.freeagent.com"
makeNativefier "Rollbar" "https://rollbar.com"
makeNativefier "GitHub" "https://github.com"
makeNativefier "GitLab" "https://gitlab.com"
makeNativefier "Shed Intranet" "https://intranet.studio.theshed.io"

find "$HOME/temp_nativefier" -name '*.app' -maxdepth 2 -exec cp -pr '{}' "/Applications/" ';'
rm -rf "$HOME/temp_nativefier"