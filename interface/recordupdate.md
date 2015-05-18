# 病程更新
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /rdPatient/rdRecordUpdate

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | 验证码 | 
 gid | 是 | 字符串 | 病程GID | 
 title | 是 | 字符串 | 病程标题 | 
 detail | 是 | 字符串 | 病程内容 | 
 date | 是 | 字符串 | 病程记录时间 | 
 lstPic | 是 | 字符串 | 图片列表 |
 lstVid | 是 | 字符串 | 视频列表 |

###请求示例
```javascript
{
  "userId":"用户GID",
  "token":"token",
  "gid":"病程GID",
  "title":"病程标题",
  "detail":"病程内容",
  "date":"病程记录时间",
  "lstPic":"图片GID,图片GID",
  "lstVid":"视频GID,视频GID"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "更新成功",
     "result_data":null

  }



```
