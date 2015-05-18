# 帖子列表
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /channel/postSelect

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | 验证码 | 
 chGid | 否 | 字符串 | 频道GID-(可置空) | 
 dateBegin | 否 | 字符串 | 开始日期 | 
 selectType | 否 | 字符串 | 查询类型 | 【20150513删除】
 count | 是 | 字符串 | 显示条数 | 
 isFav | 是 | 字符串 | 是否关注 | 

###请求示例
```javascript
{
   "userId":"用户GID",
   "token":"token",
   "chGid":"频道GID",
   "dateBegin":"开始日期",
   "count":"显示条数",
   "isFav":"是否关注"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "查询成功",
     "result_data":
     [
      {
          "gid":"发帖GID",
          "userId":"发帖用户GID",
          "userName":"发帖用户名称",
          "detail":"发帖内容",
          "createTime":"发帖时间",
          "lstPic":"图片GID，图片GID",
          "lstVid":"视频GID",
          "favCount":0,
          "lstReplyCount":0,
          "chGid":"频道GID",
          "chName":"频道名称",
          "isPraised":"0-未点赞/1-已点赞"

      },
      {
          "gid":"发帖GID",
          "userId":"发帖用户GID",
          "userName":"发帖用户名称",
          "detail":"发帖内容",
          "createTime":"发帖时间",
          "lstPic":"图片GID，图片GID",
          "lstVid":"视频GID",
          "favCount":0,
          "lstReplyCount":0,
          "chGid":"频道GID",
          "chName":"频道名称"
          "isPraised":"0-未点赞/1-已点赞"
      }
    ]

  }



```
