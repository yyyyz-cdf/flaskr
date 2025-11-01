# Flaskr - A Blog Application

一个使用 Flask 构建的简单博客应用，支持用户注册、登录、发布和管理博客文章。

## 🚀 功能特性

- ✅ **用户认证** - 注册、登录、注销
- ✅ **博客管理** - 创建、编辑、删除文章
- ✅ **数据库集成** - SQLite 数据库
- ✅ **安全防护** - 密码哈希、会话管理
- ✅ **完整测试** - 24个测试用例，100%覆盖核心功能
- ✅ **现代化架构** - Flask 应用工厂模式

## 🛠️ 技术栈

**后端技术**：
- Flask 2.0+
- SQLite 数据库
- Werkzeug 安全

**前端技术**：
- HTML5 + CSS3
- Jinja2 模板引擎

**开发工具**：
- pytest 测试框架
- 应用工厂模式
- 环境配置管理

## 📦 安装和运行

### 环境要求
- Python 3.8+
- pip 包管理器

### 安装步骤
```bash
# 1. 克隆项目
git clone https://github.com/yyyyz-cdf/flaskr.git
cd flaskr

# 2. 创建虚拟环境（推荐）
python -m venv venv
source venv/bin/activate  # Linux/Mac
# venv\Scripts\activate   # Windows

# 3. 安装依赖
pip install -e .

# 4. 初始化数据库
flask init-db

# 5. 运行应用
flask run
