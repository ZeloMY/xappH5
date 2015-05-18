# 发帖新增
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /channel/postAdd

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | 验证码 | 
 chGid | 否 | 字符串 | 频道GID | 
 detail | 否 | 字符串 | 发帖内容 | 
 createTime | 否 | 时间 | 发帖时间 | 【20150514删除】
 lstPic | 否 | list | 图片列表 | 
 lstVid | 否 | list | 视频列表 | 



###请求示例
```javascript
{
   "userId":"用户GID",
   "token":"token",
   "chGid":"频道GID",
   "detail":"发帖内容",
   "lstPic":"图片GID，图片GID",
   "lstVid":"视频GID,视频GID"
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
