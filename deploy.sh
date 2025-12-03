#!/bin/bash
set -e  # 如果有错误就中断执行

# 构建网站
echo "🚧 Building site..."
bundle exec jekyll build

# 进入生成目录
cd _site

# 初始化新的 git 仓库
echo "🔧 Initializing git in _site..."
git init
git checkout -b gh-pages

# 连接到你的 GitHub 仓库（请改成你的仓库地址）
git remote add origin https://github.com/xinnyuguo/xinnyuguo.github.io.git

# 提交并推送
git add .
git commit -m "🚀 Deploy updated site"
git push -f origin gh-pages

# 返回主目录
cd ..
echo "✅ Deployment complete! Visit: https://xinnyuguo.github.io/"
