#!/bin/bash

# 安装 nvm
echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# 加载 nvm
echo "Loading nvm..."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# 使配置生效
source ~/.bashrc

# 使用 nvm 安装 Node.js 20
echo "Installing Node.js version 20..."
nvm install 20

# 克隆仓库
echo "Cloning the repository..."
git clone https://github.com/suidouble/sui_meta_miner.git

# 进入目录并安装 npm 依赖
cd sui_meta_miner
echo "Installing npm dependencies..."
npm install

echo "Installation completed successfully!"