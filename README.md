# 六模块客户开发 - 试用版配置指南

> 版本: 1.0.0 | 更新时间: 2026-04-05

---

## 🎯 快速开始

### 已预配置的 API Keys（测试用）

以下 API Keys 已为你准备好，可直接使用：

| API | 用途 | Key |
|-----|------|-----|
| **Serper** | 搜索客户 | `9bbea8dfb95f004a352b8ec20d3fff0426ac342f` |
| **Resend** | 发送邮件 | `re_MWKHdXvF_6FRxbEPcgpRU1Xcr42TFCcHv` |

---

## ✅ 配置检查清单

在运行技能前，我会自动检查以下配置：

### 必需配置 ✓

- [x] **Serper API Key** - 用于 Google 搜索
- [x] **Resend API Key** - 用于发送邮件

### 可选配置

- [ ] **飞书配置** - 用于推送提醒（推荐）
- [ ] **OpenClaw Cron** - 用于定时任务（已内置）

---

## 🔧 配置方法

### 方式一：自动配置（推荐）

直接开始使用，我会自动检测并提示：

```
开始客户开发 窗帘 美国
```

如果缺少配置，我会告诉你如何设置。

---

### 方式二：手动配置

#### 1. Serper API Key

```bash
export SERPER_API_KEY="9bbea8dfb95f004a352b8ec20d3fff0426ac342f"
```

或添加到 `~/.openclaw/openclaw.json`:

```json
{
  "env": {
    "SERPER_API_KEY": "9bbea8dfb95f004a352b8ec20d3fff0426ac342f"
  }
}
```

#### 2. Resend API Key

```bash
export RESEND_API_KEY="re_DPtbKJ2y_HYfJ6ro6rCjqYjZesFRxC7pa"
```

或添加到配置文件：

```json
{
  "env": {
    "RESEND_API_KEY": "re_DPtbKJ2y_HYfJ6ro6rCjqYjZesFRxC7pa"
  }
}
```

---

## 📧 邮件发送配置

### 发件人邮箱

Resend 需要验证发件人域名。测试时可使用 Resend 提供的测试域名：

```
发件人: onboarding@resend.dev
```

**⚠️ 注意：** 测试域名只能发送到你注册 Resend 时使用的邮箱。

### 验证自己的域名

1. 登录 [Resend Dashboard](https://resend.com/domains)
2. 添加你的域名
3. 配置 DNS 记录
4. 等待验证通过

验证后可使用：
```
发件人: sales@yourcompany.com
```

---

## 📱 飞书推送配置（可选）

如果你想在飞书收到提醒：

### Step 1: 创建飞书应用

1. 访问 https://open.feishu.cn/app
2. 创建企业自建应用
3. 复制 App ID 和 App Secret

### Step 2: 配置权限

添加以下权限：
- `im:message:send_as_bot`
- `bitable:record:write`
- `bitable:app:write`

### Step 3: 配置 OpenClaw

```bash
openclaw channels add feishu
# 粘贴 App ID 和 App Secret
```

### Step 4: 重启 Gateway

```bash
openclaw gateway restart
```

---

## 🧪 测试配置

运行配置检查：

```
开始客户开发 窗帘 美国
```

我会输出：

```
✅ 配置检查通过

- Serper API: 已配置 ✓
- Resend API: 已配置 ✓
- 飞书推送: 已配置 ✓

准备开始...
```

---

## 📊 配置状态查询

随时可以问我：

```
检查配置状态
```

我会告诉你当前配置情况。

---

## ⚠️ 常见问题

### Q: Serper API Key 无效？

检查：
1. Key 是否正确复制
2. Key 是否过期
3. 账户是否有余额

### Q: Resend 邮件发送失败？

检查：
1. 发件人邮箱是否已验证
2. 收件人是否在白名单（测试域名限制）
3. API Key 是否有效

### Q: 飞书推送没收到？

检查：
1. 飞书应用是否已发布
2. 是否已与机器人对话
3. 权限是否配置正确

---

## 🔄 降级方案

如果配置失败，我会自动降级：

| 功能 | 主方案 | 降级方案 |
|------|--------|----------|
| 客户搜索 | Serper API | Web 搜索 |
| 发送邮件 | Resend API | 生成邮件内容（手动发送） |
| 数据存储 | 飞书表格 | CSV 文件 |
| 定时提醒 | 飞书推送 | HEARTBEAT 本地 |

**无论如何，你都能拿到结果！**

---

## 📞 获取帮助

遇到问题？随时问我：

- "检查配置状态"
- "帮我配置 Serper"
- "帮我配置 Resend"
- "帮我配置飞书"

---

*准备好了？输入「开始客户开发 [产品] [市场]」开始吧！*
