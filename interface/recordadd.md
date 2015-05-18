# 病程新增
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /rdPatient/rdRecordAdd

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | token | 
 gid | 是 | 字符串 | 病人GID | 
 title | 是 | 字符串 | 标题 | 
 recDate | 是 | 字符串 | 记录日期 | 
 detail | 是 | 字符串 | 病程描述 | 
 lstPic | 否 | 字符串 | 图片 | 
 lstVid | 否 | 字符串 | 视频 | 

###请求示例
```javascript
{
   "userId": "用户GID",
   "token": "token",
   "gid":"病人GID",
   "title":"标题",
   "recDate":"记录日期",
   "detail":"病程描述",
   "lstPic":"图片GID,图片GID",
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
