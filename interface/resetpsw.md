# 重置密码
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /user/resetPwd

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 mobile | 是 | 字符串 | 用户手机号 | 
 identityCode | 是 | 字符串 | 验证码 | 
 newPwd | 是 | 字符串 | 新密码 | 

###请求示例
```javascript
{
   "mobile": "手机号",
   "identityCode": "验证码",
   "newPwd":"新密码"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "密码修改成功",
     "result_data":null
  }



```
