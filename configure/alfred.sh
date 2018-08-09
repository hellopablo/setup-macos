echo "Configuring Alfred..."

echo "Alfred - Creating cache directories"
mkdir "$CACHE/alfred"

# @todo Other workflows
# - Dash
# - Hash
# - Hidden Files
# - IP Address
# - Open with sublime text

echo "Alfred - Cloning workflow sources"
git clone git@github.com:hellopablo/alfred-workflows.git "$CACHE/alfred/hellopablo"
git clone git@github.com:shedcollective/alfred-workflows.git "$CACHE/alfred/shedcollective"

function downloadZip() {
    local url="$1"
    local name="$2"
    local target="$CACHE/alfred/$name.alfredworkflow"
    wget -O "$target" "$url"
}

downloadZip https://github.com/RyanVerhey/character-counter-alfred-workflow/archive/master.zip charcount

echo "Alfred - Moving discovered workflows into place"
function installWorkflow() {
    local filename=$(basename "$1");
    local target="$HOME/Library/Application Support/Alfred 3/Alfred.alfredpreferences/workflows"
    if [ ! -d "$target/$filename-unzipped" ]; then
        cp "$1" "$target/$filename"
        unzip "$target/$filename" -d "$target/$filename-unzipped"
        rm -f "$target/$filename"
    fi
}
find "$CACHE/alfred" -type f -name "*.alfredworkflow" | while read FILE ; do installWorkflow "$FILE"; done;

echo "Alfred - Removing cache directories"
rm -rf "$CACHE/alfred"
