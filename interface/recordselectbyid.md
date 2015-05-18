# 病程查询（单条）
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /rdPatient/rdSelectSingle

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | 验证码 | 
 gid | 是 | 字符串 | 病程GID | 

###请求示例
```javascript
{
   "userId": "用户GID",
   "token": "token",
   "gid":"病程GID"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "查询成功",
     "result_data":
      {
          "gid":"病程GID",
          "title":"病程标题",
          "detail":"病程内容",
          "date":"病程记录时间",
          "pic":"图片GID,图片GID",
          "vid":"视频GID,视频GID"
      }

  }



```
