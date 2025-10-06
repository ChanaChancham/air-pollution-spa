#!/bin/bash

# ==============================================================================
# สคริปต์สำหรับอัปโหลดโปรเจกต์ไปยัง GitHub Repository
# กรุณาแก้ไขค่า USERNAME และ REPO_NAME ด้านล่างก่อนใช้งาน
# ==============================================================================

# --- กรุณาแก้ไขค่าในส่วนนี้ ---
GITHUB_USERNAME="ChanaChancham"
REPO_NAME="air-pollution-spa"
COMMIT_MESSAGE="Initial project setup with SPA and images"

# --- คำสั่ง Git สำหรับการ Deploy ---

echo "Starting deployment process..."

# 1. Initialize a new Git repository in the current folder
git init

# 2. Add all files in the folder to the staging area
git add .

# 3. Commit the files with a message
git commit -m "$COMMIT_MESSAGE"

# 4. Rename the main branch to 'main' (standard practice)
git branch -M main

# 5. Add the remote GitHub repository URL
#    (This connects your local folder to the repository on GitHub)
git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME

# 6. Push the committed files to your GitHub repository
#    The '-u' flag sets the upstream branch for future pushes
git push -u origin main

echo "✅ Deployment script finished."
echo "Your files have been pushed to the '$REPO_NAME' repository."
echo "Next step: Go to your repository settings on GitHub to enable GitHub Pages."
