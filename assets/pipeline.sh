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
git add -A
if [ -z "$1" ]; then
    git commit -m "COMPX341-A3: Commiting from CI/CD Pipeline"
else
    git commit -m $1
fi
git push

# Start application.
echo "[3] > START"
npm run start
