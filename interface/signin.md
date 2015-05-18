usersignin.md
### 用户登录
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /user/signin

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 mobile | 是 | 字符串 | 手机号 | 
 pwd | 是 | 字符串 | 加密后的密码字符串 | 
 version | 否 | 字符串 | 终端操作系统版本 | 
 hdver | 否 | 字符串 | 硬件版本 | 
 sn | 否 | 字符串 | 终端SN号 | 
 ip | 否 | 字符串 | ip地址 | 

###请求示例
```javascript
{
   "mobile": "1381111111",
   "pwd": "加密后的密码字符串",
   "version":"终端操作系统版本"，
   "sn":"终端SN号",
   "ip":"ipv4地址",
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "登录成功",
     "result_data":
     {
         "userid": "用户GID",
         "token": "用户token值",
         "tokenendtime":"token过期时间"
      }
  }
```
