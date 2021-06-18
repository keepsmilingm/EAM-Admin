# EAM-Admin

功能完善的企业资产管理系统，基于Java 、SSM、Spring Security、AdminLte开发

[在线访问地址](http://47.96.140.62:8085/AMS_SSM)

| 账号  | 角色       | 密码 |
| ----- | ---------- | ---- |
| 00001 | 管理员     | 0000 |
| 00002 | 人事管理员 | 0000 |
| 00003 | 资产管理员 | 0000 |
| 00004 | 普通用户   | 0000 |

## 资产管理系统设计

这一节是对系统设计的描述和系统实现的展示，因本系统功能复杂，此处仅对部分重要细节做相关展示，其余不再赘述。

### 系统结构说明

在系统的实现中，将各个模块分为了Controller层（控制层）、Dao层（持久层）、Domain层（实体类层）、Service层（服务层），多层结构设计使程序结构更加清晰，便于错误定位，代码复用等，项目结构如图2所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/141744485-1.png)

图2登陆流程图

Figure 2 login flow chart

#### Contoller层(控制层)

控制器是前台与后台进行交互的地方，用于接收与响应前台请求。

#### Dao层（持久层）

Dao层属于SSM框架的Mybatis部分，负责与数据库的交互，用于处理数据持久化。

####  Domain层（实体类）

实体类存放层，用于放置与数据库一一对应的实体类。

#### Service层（业务层）

服务层业务逻辑的封装提高了业务逻辑的独立性和可重用性，并使程序非常简洁。

### 系统数据库设计

数据库的设计从某种程度上决定了程序的编码过程，一个合理的数据库设计，不仅能简化系统逻辑代码，同时也避免数据冗余，减轻系统负载。本系统中采用MySQL数据库进行开发，下面是对数据库表总体结构和部分重要表的展示，因数据表众多，此处仅选出部分关键表进行描述。

###  数据库表介绍

数据库表设计如表1所示：

**表1 数据库表信息展示**

Table 1 Database table information display

| Allot            | 资产移交信息表    |
| ---------------- | ----------------- |
| Asset            | 资产信息表        |
| Department       | 部门信息表        |
| Inventory        | 盘点信息表        |
| Message          | 消息信息表        |
| Message_Receiver | 消息-接收者信息表 |
| Modify           | 资产变更信息表    |
| Repair           | 资产维修信息表    |
| Role             | 角色信息表        |
| Scrap            | 报废信息表        |
| Syslog           | 日志信息表        |
| Users            | 用户信息表        |
| User_role        | 用户-角色信息表   |
| Permission       | 权限信息表        |
| Role-Permission  | 角色-权限表       |

### 数据库表设计

用户表（如表2所示）与角色表（如表3所示）之间是多对多的关系，通过用户-角色表（如表4所示）进行连接，实现一个用户可拥有多个角色，一个角色可以分配给多个用户。

**表2 用户表展示**

Table 2 User table display

| 字段     | 类型    | 长度 | 是否为空 | 是否为主键 | 描述     |
| -------- | ------- | ---- | -------- | ---------- | -------- |
| Id       | Int     | 50   | 否       | 是         | 用户id   |
| account  | int     | 50   | 否       | 否         | 用户账户 |
| username | varchar | 50   | 否       | 否         | 用户名   |
| Password | varchar | 50   | 否       | 否         | 密码     |

**表3 角色表展示**

Table 3 Role table display

| 字段     | 类型    | 长度 | 是否为空 | 是否为主键 | 描述   |
| -------- | ------- | ---- | -------- | ---------- | ------ |
| Id       | Int     | 50   | 否       | 是         | 角色id |
| RoleName | varchar | 50   | 否       | 否         | 角色名 |

**表4 用户-角色表展示**

Table 4 User-Role table display

| 字段   | 类型    | 长度 | 是否为空 | 是否为主键 | 描述   |
| ------ | ------- | ---- | -------- | ---------- | ------ |
| UserID | Int     | 50   | 否       | 是         | 用户id |
| RoleID | varchar | 50   | 否       | 否         | 角色id |

部门表中包含一个父级部门id字段，表现出部门间的层级关系。如表5所示

**表5 角色表展示**

Table 5 Role table display

| 字段     | 类型    | 长度 | 是否为空 | 是否为主键 | 描述       |
| -------- | ------- | ---- | -------- | ---------- | ---------- |
| Id       | Int     | 50   | 否       | 是         | 部门id     |
| Name     | varchar | 50   | 否       | 否         | 部门名称   |
| ParentId | Int     | 50   | 是       | 否         | 父级部门ID |

资产表中包含所属部门id字段，包含资产状态字段Status，用数字表示不同的状态(0:正常；1：维修；2：报废；3：移交；4：盘点)。如表6所示

**表6 资产表展示**

Table 6 Role table display

| 字段         | 类型    | 长度 | 是否为空 | 是否为主键 | 描述         |
| ------------ | ------- | ---- | -------- | ---------- | ------------ |
| Id           | Int     | 50   | 否       | 是         | 资产id       |
| assetName    | varchar | 50   | 否       | 否         | 资产名称     |
| DepartmentId | Int     | 50   | 否       | 否         | 资产所属部门 |
| Status       | Int     | 4    | 否       | 否         | 资产状态     |

消息表中的type字段用于表示消息的不同类型(0:一般消息；1：紧急消息；2：通知消息)。如表7所示

**表7消息表展示**

Table 7 Message table display

| 字段     | 类型 | 长度 | 是否为空 | 是否为主键 | 描述     |
| -------- | ---- | ---- | -------- | ---------- | -------- |
| Id       | Int  | 50   | 否       | 是         | 消息id   |
| SenderId | Int  | 50   | 否       | 否         | 发件人Id |
| type     | Int  | 50   | 否       | 否         | 消息类型 |

用户表（如表2所示）与消息表（如表7所示）之间是多对多的关系，通过消息-接收者表（如表8所示）进行连接，实现一个用户可拥有多条消息，一个消息可以发送给多个用户。其中Status字段用于表示当前消息的状态（0:未读；1：已读；2：收藏；3：删除）

**表8 消息-接收人表展示**

Table 8 Message-Receiver table display

| 字段       | 类型 | 长度 | 是否为空 | 是否为主键 | 描述     |
| ---------- | ---- | ---- | -------- | ---------- | -------- |
| MessageId  | Int  | 50   | 否       | 是         | 消息id   |
| ReceiverId | Int  | 50   | 否       | 是         | 接收人Id |
| Status     | Int  | 4    | 否       | 否         | 消息状态 |

维修表中包含资产ID与用户ID字段，是维修表的两个外键，其中checkStatus字段用于表示当前的维修审核状态（0:待审核；1：一级审核通过；2：驳回；3：二级审核通过）。如表9所示：

**表9 维修表展示**

Table 9 Asset repair table display

| 字段        | 类型 | 长度 | 是否为空 | 是否为主键 | 描述     |
| ----------- | ---- | ---- | -------- | ---------- | -------- |
| id          | Int  | 50   | 否       | 是         | 维修id   |
| assetId     | Int  | 50   | 否       | 否         | 资产Id   |
| userId      | Int  | 50   | 否       | 否         | 发起人Id |
| checkStatus | Int  | 4    | 否       | 否         | 审核状态 |

报废表中包含资产ID与用户ID字段，是报废表的两个外键，其中checkStatus字段用于表示当前的报废审核状态（0:待审核；1：一级审核通过；2：驳回；3：二级审核通过）。如表10所示：

**表10 报废表展示**

Table 10 Asset scrap table display

| 字段        | 类型 | 长度 | 是否为空 | 是否为主键 | 描述     |
| ----------- | ---- | ---- | -------- | ---------- | -------- |
| id          | Int  | 50   | 否       | 是         | 报废id   |
| assetId     | Int  | 50   | 否       | 否         | 资产Id   |
| userId      | Int  | 50   | 否       | 否         | 发起人Id |
| checkStatus | Int  | 4    | 否       | 否         | 审核状态 |

移交表中包含资产ID与用户ID字段，是移交表的两个外键，其中checkStatus字段用于表示当前的移交审核状态（0:待审核；1：一级审核通过；2：驳回；3：二级审核通过）。如表11所示：

**表11 移交表展示**

Table 11 Asset allot table display

| 字段        | 类型 | 长度 | 是否为空 | 是否为主键 | 描述     |
| ----------- | ---- | ---- | -------- | ---------- | -------- |
| id          | Int  | 50   | 否       | 是         | 移交id   |
| assetId     | Int  | 50   | 否       | 否         | 资产Id   |
| userId      | Int  | 50   | 否       | 否         | 发起人Id |
| checkStatus | Int  | 4    | 否       | 否         | 审核状态 |

盘点表中包含资产ID与用户ID字段，是盘点表的两个外键，其中checkStatus字段用于表示当前的盘点审核状态（0:待审核；1：一级审核通过；2：驳回；3：二级审核通过）。如表12所示：

**表12 盘点表展示**

Table 12 Asset inventory table display

| 字段        | 类型 | 长度 | 是否为空 | 是否为主键 | 描述     |
| ----------- | ---- | ---- | -------- | ---------- | -------- |
| id          | Int  | 50   | 否       | 是         | 盘点id   |
| assetId     | Int  | 50   | 否       | 否         | 资产Id   |
| userId      | Int  | 50   | 否       | 否         | 发起人Id |
| checkStatus | Int  | 4    | 否       | 否         | 审核状态 |

## 资产管理系统实现

本节将详细介绍资产管理系统的具体实现。由于本系统实现复杂，所以对界面及实现代码仅作部分展示。

### 系统功能模块实现

本系统的功能模块众多，下面将对系统中各功能模块的设计及实现流程进行说明。

#### 用户登录模块

在本系统中采用Spring Security 接管登陆，用户输入账户密码后，密码将利用Spring
Security中BCryptPasswordEncoderUtils进行加密，之后通过Mybatis与数据库中数据进行比较，如果信息正确，则从角色表中查出当前登陆用户角色,之后便可根据用户角色分配系统访问权限。

登陆流程及登陆界面如图3与图4所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/141843940-1.png)

图3登陆流程图

Figure 3 login flow chart

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142051195-1.png)

图4 前台登陆页

Figure 4 login page

#### 根据用户角色控制访问权限

根据登陆后Spring
Security所取得的用户角色信息，在前端添加标签或是在后端接口处添加注解，控制页面元素仅对限定角色可见图5和图6所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142142144-1.png)

图5 普通用户显示界面

Figure 5 Common user interface

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142158914-1.png)

图6 管理员显示界面

Figure 6 Administrator interface

####  用户角色管理

拥有管理员角色权限的账户可以增删权限，并且可以给其他员工分配权限。如图7所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142330085-1.png)

图7 角色管理页面

Figure 7 role management page

#### 人员管理

管理员用户可以对人员信息进行增删改查，支持批量操作、模糊搜索、查看详情、导出信息到excel，添加用户角色等操作。如图8所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142406081-1.png)

图8 员工管理页面

Figure 8 Employee management page

#### 资产管理

用户可以对资产信息进行增删改查，支持批量操作、模糊搜索、查看详情、导出信息到excel等操作，同时可以在这一页面选中特定资产进行维修、报废、变更、盘点等操作。如图9所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142441438-1.png)

图9 资产管理页面

Figure 9 Asset management page

#### 部门管理

这一模块中可查看已有部门信息，并能进行添加、删除、修改等操作，此外还能向已有部门中添加二级部门。如图10所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142510608-1.png)

图10 部门管理页面

Figure 10 Department management page

#### 消息管理

在消息管理模块中，用户可以发送部门信息与个人消息、接收信息，信息分为已读、未读、收藏、回收站四种状态，具有一般消息、通知消息、紧急消息三种类型。用户登陆后，紧急消息会立即通知，同时页面顶部会显示不同类型消息数量，提醒用户及时阅读。作为发件人，所发送的消息将会即时通知到指定用户或部门。如图11所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142523418-1.png)

图11 消息管理页面

Figure 11 Message management page

消息的及时提醒采用了ajax轮询实现，具体实现如下，效果展示如图12所示。

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142543716-1.png)

图12 消息提醒展示

Figure 12 Message reminder display

核心代码如图13所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142600108-1.png)

图13 消息提醒功能代码

Figure 12 Message reminder function code

#### 资产维修管理

为了降低代码冗余，方便管理，资产的维修、报废、盘点、移交等资产操作在设计时共用统一Controller,通过操作类型进行分支控制。如资产操作的详情列表，具体实现如图14所示下：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142620367-1.png)

图14 资产操作功能代码

Figure 14 Asset option function code

在资产列表页面选择相应资产后可发起维修报备。发起维修后，资产状态将从正常变为维修，通过审计部门的一级审核通过之后将交由管理员进行二次审核，管理员审核通过，资产状态变为正常。具体流程如图15所示

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142635101-1.png)

图15 资产维修流程

Figure 15 Asset maintenance process

#### 资产报废管理

在资产列表页面选择相应资产后可发起报废报备。发起报废后，资产状态将从正常变为报废，通过审计部门的一级审核通过之后将交由管理员进行二次审核，管理员审核通过，将删除相应资产信息。具体流程如图16所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142650129-1.png)

图16 资产报废流程

Figure 16 Asset retirement process

#### 资产移交管理

在资产列表页面选择相应资产后可发起移交报备。发起移交后，资产状态将从正常变为移交，通过审计部门的一级审核通过之后将交由管理员进行二次审核，管理员审核通过，将改变相应资产信息。具体流程如图17所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142703316-1.png)

图17 资产报废流程

Figure 17 Asset transfer process

####  资产盘点管理

在资产列表页面选择相应资产后可发起盘点。指定盘点人或盘点部门之后，将向指定盘点人或盘点部门发送待盘点资产列表，盘点人根据待盘点列表进行盘点，确定资产状态，并发起相应操作，所有待盘点完成后才能算一次盘点结束。具体流程如图18所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142729228-1.png)

图18 资产盘点流程

Figure 18 Asset inventory process

#### Aop日志管理

Aop日志详细记录系统访问数据，在网站被入侵时，能够通过日志追踪入侵路径还原入侵的过程，并在此基础上封堵漏洞、清理相关木马、提高系统安全性，同时也保证企业内部操作过程的透明可控。如图19所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142744935-1.png)

图19 Aop日志

Figure 19 AOP log

### 系统优化

系统虽然已经实现预期功能，但在使用过程中，仍存在一些交互上的欠缺，如表单填写时的验证提示、功能操作反馈、图片的上传、图片的预览、消息的及时提醒等问题。为了使用户在使用过程中获得更好的交互体验，下面将对上述各方面进行优化。

#### 表单验证优化

系统中涉及很多表单填写操作，为了规范用户对信息的填写，系统在前台引入了is.js和swal.js进行优化。Is.js是一个数据格式验证插件，swal.js是一个消息提示框插件，两者的有机结合极大的提升了用户表单填写过程中体验。如图20所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142802340-1.png)

图20 表单验证提示

Figure 20 Form validation tips

部分表单验证规则如图21所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142829505-1.png)

图21 表单验证规则

Figure 21 Form validation rules

#### 操作反馈优化

系统中添加操作反馈，可以让用户清楚的指导自己的操作过程是否成功，同时对于需谨慎使用的操作，发出警告提醒用户二次确认可以便面误操作造成的损

失。如图22所示:

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142842447-1.png)

图22 表单验证提示

Figure 22 Operation feedback prompt

#### 图片上传优化

图片的上传也是一个广泛应用于系统的功能，而在实际需要中，往往需要对上传的图片进行预览和再次筛选，基于这个需求，系统中统一设计了图片上传界面，实现了图片上传预览，以及删除、放大预览等功能，支持多图拖曳上传、上传进度预览，支持ajax同步多图上传或异步单图上传，如图23所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142859902-1.png)

图23 图片上传界面

Figure 23 Picture upload interface

#### 图片预览优化

对于系统资产或用户信息的图片预览则单独设计了预览功能，支持多图滚动预览、图片放大缩小旋转等操作，如此强大的功能，得益于view.js插件的加入，大大提升了用户体验。如图24所示

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142916000-1.png)

图24 图片预览界面

Figure 24 Picture preview interface

#### 消息提示优化

系统中有消息管理这一模块，在这一模块中消息的提醒采用了izToast.js插件实现了消息的及时提醒展示，如图25所示：

![image](https://gitee.com/abner_zyz/md-img/raw/master/ASM-SSM/20210618/142930049-1.png)

图25 消息提醒展示

Figure 25 Message reminder display

