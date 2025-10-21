# CCPM 本地模式

CCPM 在纯本地模式下运行完美，无需任何 GitHub 集成。所有管理都通过本地 markdown 文件完成。

## 纯本地工作流

### 1. 创建需求文档（PRD）
```bash
/pm:prd-new user-authentication
```
- 创建：`.claude/prds/user-authentication.md`
- 输出：包含需求和用户故事的完整 PRD

### 2. 转换为技术计划（Epic）
```bash
/pm:prd-parse user-authentication
```
- 创建：`.claude/epics/user-authentication/epic.md`
- 输出：技术实施计划

### 3. 分解为任务
```bash
/pm:epic-decompose user-authentication
```
- 创建：`.claude/epics/user-authentication/001.md`、`002.md` 等
- 输出：包含验收标准的单个任务文件

### 4. 查看工作内容
```bash
/pm:epic-show user-authentication    # 查看 epic 和所有任务
/pm:status                           # 项目仪表板
/pm:prd-list                         # 列出所有 PRD
```

### 5. 处理任务
```bash
# 查看特定任务详情
cat .claude/epics/user-authentication/001.md

# 手动更新任务状态
vim .claude/epics/user-authentication/001.md
```

## 本地创建的文件结构

```text
.claude/
├── prds/
│   └── user-authentication.md      # 需求文档
├── epics/
│   └── user-authentication/
│       ├── epic.md                 # 技术计划
│       ├── 001.md                  # 任务：数据库模式
│       ├── 002.md                  # 任务：API 端点
│       └── 003.md                  # 任务：UI 组件
└── context/
    └── README.md                   # 项目上下文
```

## 本地可用的命令

### ✅ 完全本地命令
- `/pm:prd-new <名称>` - 创建需求
- `/pm:prd-parse <名称>` - 生成技术计划
- `/pm:epic-decompose <名称>` - 分解为任务
- `/pm:epic-show <名称>` - 查看 epic 和任务
- `/pm:status` - 项目仪表板
- `/pm:prd-list` - 列出 PRD
- `/pm:search <术语>` - 搜索内容
- `/pm:validate` - 检查文件完整性

### 🚫 仅 GitHub 命令（跳过这些）
- `/pm:epic-sync <名称>` - 推送到 GitHub Issues
- `/pm:issue-sync <id>` - 更新 GitHub Issue
- `/pm:issue-start <id>` - 需要 GitHub Issue ID
- `/pm:epic-oneshot <名称>` - 包含 GitHub 同步

## 本地模式的优势

- **✅ 无外部依赖** - 无需 GitHub 账户/互联网即可工作
- **✅ 完全隐私** - 所有数据保留在本地
- **✅ 版本控制友好** - 所有文件都是 markdown 格式
- **✅ 团队协作** - 通过 git 共享 `.claude/` 目录
- **✅ 可定制** - 自由编辑模板和工作流# CCPM 本地模式

CCPM 在纯本地模式下运行完美，无需任何 GitHub 集成。所有管理都通过本地 markdown 文件完成。

## 纯本地工作流

### 1. 创建需求文档（PRD）
```bash
/pm:prd-new user-authentication
```
- 创建：`.claude/prds/user-authentication.md`
- 输出：包含需求和用户故事的完整 PRD

### 2. 转换为技术计划（Epic）
```bash
/pm:prd-parse user-authentication
```
- 创建：`.claude/epics/user-authentication/epic.md`
- 输出：技术实施计划

### 3. 分解为任务
```bash
/pm:epic-decompose user-authentication
```
- 创建：`.claude/epics/user-authentication/001.md`、`002.md` 等
- 输出：包含验收标准的单个任务文件

### 4. 查看工作内容
```bash
/pm:epic-show user-authentication    # 查看 epic 和所有任务
/pm:status                           # 项目仪表板
/pm:prd-list                         # 列出所有 PRD
```

### 5. 处理任务
```bash
# 查看特定任务详情
cat .claude/epics/user-authentication/001.md

# 手动更新任务状态
vim .claude/epics/user-authentication/001.md
```

## 本地创建的文件结构

```text
.claude/
├── prds/
│   └── user-authentication.md      # 需求文档
├── epics/
│   └── user-authentication/
│       ├── epic.md                 # 技术计划
│       ├── 001.md                  # 任务：数据库模式
│       ├── 002.md                  # 任务：API 端点
│       └── 003.md                  # 任务：UI 组件
└── context/
    └── README.md                   # 项目上下文
```

## 本地可用的命令

### ✅ 完全本地命令
- `/pm:prd-new <名称>` - 创建需求
- `/pm:prd-parse <名称>` - 生成技术计划
- `/pm:epic-decompose <名称>` - 分解为任务
- `/pm:epic-show <名称>` - 查看 epic 和任务
- `/pm:status` - 项目仪表板
- `/pm:prd-list` - 列出 PRD
- `/pm:search <术语>` - 搜索内容
- `/pm:validate` - 检查文件完整性

### 🚫 仅 GitHub 命令（跳过这些）
- `/pm:epic-sync <名称>` - 推送到 GitHub Issues
- `/pm:issue-sync <id>` - 更新 GitHub Issue
- `/pm:issue-start <id>` - 需要 GitHub Issue ID
- `/pm:epic-oneshot <名称>` - 包含 GitHub 同步

## 本地模式的优势

- **✅ 无外部依赖** - 无需 GitHub 账户/互联网即可工作
- **✅ 完全隐私** - 所有数据保留在本地
- **✅ 版本控制友好** - 所有文件都是 markdown 格式
- **✅ 团队协作** - 通过 git 共享 `.claude/` 目录
- **✅ 可定制** - 自由编辑模板和工作流
- **✅ 快速** - 无 API 调用或网络延迟

## 手动任务管理

任务存储为带有前置元数据的 markdown 文件：

```markdown
---
name: 实现用户登录 API
status: open          # open, in-progress, completed
created: 2024-01-15T10:30:00Z
updated: 2024-01-15T10:30:00Z
parallel: true
depends_on: [001]
---

# 任务：实现用户登录 API

## 描述
创建 POST /api/auth/login 端点...

## 验收标准
- [ ] 端点接受邮箱/密码
- [ ] 成功时返回 JWT 令牌
- [ ] 根据数据库验证凭据
```

在处理时手动更新 `status` 字段：
- `open` → `in-progress` → `completed`

就是这样！您拥有一个完全离线的完整项目管理系统。
- **✅ 快速** - 无 API 调用或网络延迟

## 手动任务管理

任务存储为带有前置元数据的 markdown 文件：

```markdown
---
name: 实现用户登录 API
status: open          # open, in-progress, completed
created: 2024-01-15T10:30:00Z
updated: 2024-01-15T10:30:00Z
parallel: true
depends_on: [001]
---

# 任务：实现用户登录 API

## 描述
创建 POST /api/auth/login 端点...

## 验收标准
- [ ] 端点接受邮箱/密码
- [ ] 成功时返回 JWT 令牌
- [ ] 根据数据库验证凭据
```

在处理时手动更新 `status` 字段：
- `open` → `in-progress` → `completed`

就是这样！您拥有一个完全离线的完整项目管理系统。