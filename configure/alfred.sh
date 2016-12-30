echo "Configuring Alfred..."

echo "Alfred - Creating cache directories"
mkdir "$CACHE/alfred"
mkdir "$CACHE/alfred/hellopablo"
mkdir "$CACHE/alfred/shedcollective"

echo "Alfred - Cloning workflow sources"
git clone git@github.com:hellopablo/alfred-workflows.git "$CACHE/alfred/hellopablo"
git clone git@github.com:shedcollective/alfred-workflows.git "$CACHE/alfred/shedcollective"

echo "Alfred - Moving discovered workflows into place"
# @todo - move workflows

echo "Alfred - Removing cache directories"
rm -rf "$CACHE/alfred"

# HelloPablo workflows
# - Open Repos folder
# - Now()

# Shed workflows
# - Copy Present Working Directory

# Other workflows
# - Character Counter
# - Dash
# - Hash
# - Hidden Files
# - IP Address
# - Open with sublime text