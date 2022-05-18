# Install dependencies via npm.
echo "[0] > INSTALL"
if npm install; then
    echo "Install succeeded"
else 
    echo "Install failed"
    exit
fi

# Build application.
echo "[1] > BUILD"
if npm run build; then
    echo "BUILD succeeded"
else 
    echo "BUILD failed"
    exit
fi

# Commit & push changes to github.
echo "[2] > GIT"
if [ -z "$1" ]; then
    # If arguments are not provided, exit with error message.
    echo "Please provide a commit message, example: $ bash pipeline.sh \"COMPX341-A3: A useful commit message\""
    exit
else
    # Add, commit and push changes.
    cd ".."
    git add -A
    git commit -m "$1"
    git push
    cd "/assets"
fi

# Start application.
echo "[3] > START"
npm run start
