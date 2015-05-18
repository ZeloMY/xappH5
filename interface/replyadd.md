# 新增回复
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /channel/replyAdd

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | 验证码 | 
 toUserId | 否 | 字符串 | 被回复人GID | 
 detail | 否 | 字符串 | 回复内容 | 
 gid | 否 | 时间 | 帖子GID | 

###请求示例
```javascript
{
   "userId":"用户GID",
   "token":"token",
   "toUserId":"被回复人GID",
   "detail":"回复内容",
   "gid":"帖子GID"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "新增成功",
     "result_data":null
  }



```
