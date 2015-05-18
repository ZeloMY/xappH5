# 用户注销
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /user/signup

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userid | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | token | 

###请求示例
```javascript
{
   "userid": "用户GID",
   "token": "token",
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "注销成功",
     "result_data":null
  }
```
