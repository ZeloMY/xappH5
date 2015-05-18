# 用户登录
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /user/login

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 mobile【20150513修改】 | 是 | 字符串 | 手机号 | 
 pwd | 是 | 字符串 | 加密后的密码字符串 | 
 hardOsVer | 否 | 字符串 | 硬件系统版本 | 
 softVer | 否 | 字符串 | 软件系统版本 | 
 hardSn | 否 | 字符串 | 终端SN号 | 
 ipv4 | 否 | 字符串 | ipv4地址 | 
 ipv6 | 否 | 字符串 | ipv6地址 | 

###请求示例
```javascript
{
   "mobile": "1381111111",【20150513修改】
   "pwd": "加密后的密码字符串",
   "hardOsVer":"终端操作系统版本"，
   "hardSn":"终端SN号",
   "ipv4":"ipv4地址",
   "ipv6":"ipv6地址",
   "softVer":"App版本"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "登录成功",
     "result_data":
     {
         "userId": "用户GID",
         "token": "用户token值",
         "tokenEndTime":"token过期时间"
      }
  }



```
