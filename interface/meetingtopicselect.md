# 会议日程查询
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /cons/confTopicSelect

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 否 | 字符串 | 用户GID | 
 token | 否 | 字符串 | 验证码 | 
 gid | 是 | 字符串 | 会议GID | 

###请求示例
```javascript
{
   "userId": "用户GID",
   "token": "token",
   "gid":"会议GID"
}
```

###返回结果示例

```javascript

【20150513修改】
  {
     "code": 1,
     "message": "查询成功",
     "result_data":
     [
         {
              "gid":"议程GID",
              "moderator":"主持人",
              "reviewer":"点评人",
              "sponsor":"赞助商",
              "sponsorDesc":"赞助商详情",
              "title":"议程名称",
              "titleE":"议程名称(英文)",
              "type":"议程类型",
              "datetimeBegin":"开始时间",
              "datetimeEnd":"截止时间",
              "topic"
              [
                {
                  "topicGid":"演讲GID",
                  "title" : "标题"
                  "titleE" : "标题英文"
                  "speaker" : "演讲人"
                  "datetimeBegin":"开始时间",
                  "datetimeEnd":"截止时间"
                },
                {
                  "topicGid":"演讲GID",
                  "title" : "标题"
                  "titleE" : "标题英文"
                  "speaker" : "演讲人"
                  "datetimeBegin":"开始时间",
                  "datetimeEnd":"截止时间"
                }
              ]
          }，
          {
              "gid":"议程GID",
              "moderator":"主持人",
              "reviewer":"点评人",
              "sponsor":"赞助商",
              "sponsorDesc":"赞助商详情",
              "title":"议程名称",
              "titleE":"议程名称(英文)",
              "type":"议程类型",
              "datetimeBegin":"开始时间",
              "datetimeEnd":"截止时间",
              "topic"
              [
                {
                  "topicGid":"演讲GID",
                  "title" : "标题"
                  "titleE" : "标题英文"
                  "speaker" : "演讲人"
                  "datetimeBegin":"开始时间",
                  "datetimeEnd":"截止时间"
                },
                {
                  "topicGid":"演讲GID",
                  "title" : "标题"
                  "titleE" : "标题英文"
                  "speaker" : "演讲人"
                  "datetimeBegin":"开始时间",
                  "datetimeEnd":"截止时间"
                }
              ]
          }
     ]

  }



```
