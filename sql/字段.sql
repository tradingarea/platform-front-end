
user 用户表 -------------------------------

id 用户id 主键 惟一 自增
phonenum 手机号 
password 密码 字符串 MD5加密 基本上是32位
name 昵称
sex 性别 
avatar 头像 
mail 邮箱
wxid 微信id
type 用户类型 普通用户0或者商户1 数值 默认0
status 用户状态 正常0 禁用-1 数值
ismember 是否是会员 0不是 1是 数值
invitenum 邀请用户数量
createdtime 记录创建时间 timestamp类型
updatetime 记录更新时间 timestamp类型



userrelationship 用户关系表--------------------------------------

id 主键 惟一 自增
userid 用户id MD5 32
inviteuserid 目标用户id md5 32
createdtime 记录创建时间 timestamp类型
updatetime 记录更新时间 timestamp类型



bussiness 商户信息表 ----------------------------

id 主键 惟一 自增
name 商户名称
introduction 商户信息简介
detail 商户详细介绍
address 商户地址
logo 商户logo 字符串
picture 商户图片
status 商户状态 0无优惠活动 1有优惠活动 -1违法商户
createdtime 记录创建时间 timestamp类型
updatetime 记录更新时间 timestamp类型



product 商品表 ------------------------------------------------

id 主键 惟一 自增
name 活动名称
starttime 开始时间 timestamp
endtime 结束使劲 timestamp
status 活动状态 0未进行 1进行中
createdtime 记录创建时间 timestamp类型
updatetime 记录更新时间 timestamp类型




order 订单表 -----------------------------------------

id 主键 惟一 自增
userid 用户id
productid 对应活动id
status 0未付款 1付款
createdtime 记录创建时间 timestamp类型
updatetime 记录更新时间 timestamp类型




chatgroup 聊天群组-------------------------------------------

id 主键 惟一 自增
name 群组名称
adminid 管理员id
membernum 群成员数量
avatar 群头像
introduction 群简介
notice 群公告
createdtime 记录创建时间 timestamp类型
updatetime 记录更新时间 timestamp类型



chatuser 聊天群组和用户关系表----------------------------------------

id 主键 惟一 自增
userid 用户id
groupid 群组id
lastchatid 最后读的消息id
userstatus 用户状态 0正常 -1禁言 1指定管理员
createdtime 记录创建时间 timestamp类型
updatetime 记录更新时间 timestamp类型



chatflow 聊天记录流水 --------------------------------------------------

id 主键 惟一 自增
groupid 群组id
fromuserid 谁发的
type 消息类型 0文本 1图片 2 link
content 内容 text大文本
picture 图片地址 字符串
link 连接地址 字符串
createdtime 记录创建时间 timestamp类型
updatetime 记录更新时间 timestamp类型





