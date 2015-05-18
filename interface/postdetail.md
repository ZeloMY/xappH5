# 帖子详情
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /channel/postDetailSelect

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | 验证码 | 
 gid | 否 | 字符串 | 帖子GID | 

###请求示例
```javascript
{
   "userId":"用户GID",
   "token":"token",
   "gid":"帖子GID"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "查询成功",
     "result_data":
      {
          "gid":"发帖GID",
          "userId":"发帖用户GID",
          "userName":"发帖用户名称",
          "detail":"发帖内容",
          "createTime":"发帖时间",
          "lstPic":"图片GID，图片GID",
          "lstVid":"视频GID",
          "chGid":"频道GID",
          "chName":"频道名称",
          "lstReply":
          [
              {
                  "rpyGid":"回复GID",
                  "rpyUserId":"回复人GID",
                  "rpyUserName":"回复人名称",
                  "rpyToUserId":"被回复人GID",
                  "rpyToUserName":"被回复人名称",
                  "rpyDetail":"回复内容",
                  "rpyCreateTime":"回复时间"
              }，
              {
                  "rpyGid":"回复GID",
                  "rpyUserId":"回复人GID",
                  "rpyUserName":"回复人名称",
                  "rpyToUserId":"被回复人GID",
                  "rpyToUserName":"被回复人名称",
                  "rpyDetail":"回复内容",
                  "rpyCreateTime":"回复时间"
              }，
              {
                  "rpyGid":"回复GID",
                  "rpyUserId":"回复人GID",
                  "rpyUserName":"回复人名称",
                  "rpyToUserId":"被回复人GID",
                  "rpyToUserName":"被回复人名称",
                  "rpyDetail":"回复内容",
                  "rpyCreateTime":"回复时间"
              }
          ]

      }

  }



```
