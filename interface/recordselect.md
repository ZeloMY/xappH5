# 病程查询
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /record/summary

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userid | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | 验证码 | 
 begin | 是 | 字符串 | 开始时间 | 

###请求示例
```javascript
{
   "userid": "用户GID",
   "token": "token",
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
              "gid":"病程GID",【20150513修改】
              "title":"病程标题",
              "patient":"患者姓名",
              "sex":"患者性别",
              "age":"患者年龄",
              "sick":"患者疾病",
          },
          {
              "gid":"病程GID",【20150513修改】
              "title":"病程标题",
              "patient":"患者姓名",
              "sex":"患者性别",
              "age":"患者年龄",
              "sick":"患者疾病",
          }
      ]

  }



```
