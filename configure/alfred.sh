echo "Configuring Alfred..."

echo "Alfred - Creating cache directories"
mkdir ./cache/alfred
mkdir ./cache/alfred/hellopablo
mkdir ./cache/alfred/shedcollective

echo "Alfred - Cloning workflow sources"
git clone git@github.com:hellopablo/alfred-workflows.git ./cache/alfred/hellopablo
git clone git@github.com:shedcollective/alfred-workflows.git ./cache/alfred/shedcollective

echo "Alfred - Moving discovered workflows into place"


echo "Alfred - Removing cache directories"
rm -rf ./cache/alfred

# HelloPablo workflows
# @todo - Open Repos folder
# @todo - Now()

# Shed workflows
# @todo - Copy Present Working Directory

# Other workflows
# @todo - Character Counter
# @todo - Dash
# @todo - Hash
# @todo - Hidden Files
# @todo - IP Address
# @todo - Open with sublime text