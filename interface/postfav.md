# 用户信息修改
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /channel/postFav

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | token | 
 gid | 否 | 字符串 | 帖子GID | 

###请求示例
```javascript
{
   "userId": "gid",
   "token": "token",
   "gid": "帖子GID"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "点赞成功",
     "result_data":null
  }

```
