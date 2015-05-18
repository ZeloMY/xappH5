# 病程查询（单条）
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /record/detail

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userid | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | 验证码 | 
 gid | 是 | 字符串 | 病例GID | 

###请求示例
```javascript
{
   "userid": "用户GID",
   "token": "token",
   "gid":"病例GID"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "查询成功",
     "result_data":
      {
          "gid":"病例GID",
          "name":"患者姓名",
		      "age":"患者年龄",
          "sex":"患者性别(1-男/2-女)",
          "sick":"患者疾病",
		      "visit":"就诊时间",【20150513修改】
          "record":
            [
              {
                "title":病程标题,
                "detail":病程描述,
                "date":日期
                "pic":"图片GID,图片GID",【20150513修改】
                "vid":"视频GID,视频GID"【20150513修改】
                },
              {
                "title":病程标题,
                "detail":病程描述,
                "date":日期
                "pic":"图片GID,图片GID",【20150513修改】
                "vid":"视频GID,视频GID"【20150513修改】
              }            
			]
      }

  }



```
