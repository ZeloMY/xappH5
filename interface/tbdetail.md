# 骨科指南文章详细查询
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /textbook/tbDetail

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 否 | 字符串 | 用户GID | 
 token | 否 | 字符串 | 验证码 | 
 gid | 是 | 字符串 | 文章GID | 

###请求示例
```javascript
{
   "userId": "用户GID",
   "token": "token",
   "gid":"文章GID"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "查询成功",
     "result_data":
      {
          "gid":"文章GID",
          "publish":"发布时间",
          "author":"作者",
          "title":"标题",
          "detail":"文章内容URL",
          "count":浏览次数，
          "isFav":"1"
      }

  }
```
