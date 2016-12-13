echo "Installing nativefier'ed applications..."
mkdir "$HOME/temp_nativefier"
nativefier() {
  local name="$1"
  local url="$2"
  nativefier -n "$name"  --maximize "$url" "$HOME/temp_nativefier"
}

nativefier -n "Deploy" --maximize "https://shed.deployhq.com" "$HOME/temp_nativefier"
nativefier -n "FreeAgent" --maximize "https://shedcollective.freeagent.com" "$HOME/temp_nativefier"
nativefier -n "Rollbar" --maximize "https://rollbar.com" "$HOME/temp_nativefier"
nativefier -n "GitHub" --maximize "https://github.com" "$HOME/temp_nativefier"
nativefier -n "GitLab" --maximize "https://gitlab.com" "$HOME/temp_nativefier"
nativefier -n "MailHog" --maximize "http://127.0.0.1:8025" "$HOME/temp_nativefier"
nativefier -n "Shed Intranet" --maximize "https://intranet.studio.theshed.io" "$HOME/temp_nativefier"

find "$HOME/temp_nativefier" -name '*.app' -maxdepth 2 -exec cp -pr '{}' "/Applications/" ';'
rm -rf "$HOME/temp_nativefier"