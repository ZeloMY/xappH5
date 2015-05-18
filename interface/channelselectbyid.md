# 频道查询
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /channel/channelSelectByGid

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 否 | 字符串 | 用户GID | 
 token | 否 | 字符串 | 验证码 | 
 gid | 是 | 字符串 | 频道GID | 

###请求示例
```javascript
{
   "userId":"用户GID",
   "token":"token",
   "gid":"频道GID"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "查询成功",
     "result_data":
      {
          "gid":"频道GID",
          "name":"频道名称",
          "slogan":"频道简介",
          "avatars":"图片GID",
          "lstUser":
          [
              {"userId":"用户GID", "userName":"用户名称","userAvatars":"用户头像GID"},
              {"userId":"用户GID", "userName":"用户名称","userAvatars":"用户头像GID"},
              {"userId":"用户GID", "userName":"用户名称","userAvatars":"用户头像GID"}
          ]

      }

  }



```
