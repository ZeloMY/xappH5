# 病例夹查询
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /rdPatient/rdSelect

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | 验证码 | 
 keyword | 是 | 字符串 | 查询输入的内容（为空则全部查询） | 

需要修改

###请求示例
```javascript
{
   "userId": "用户GID",
   "token": "token",
   "keyword":"关键字"
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
              "gid":"病人GID",
              "name":"病人姓名",
              "age":"病人年龄",
              "sex":"性别(1-男/2-女)",
              "sick":"疾病",
              "visit":"就诊时间"
          },
          {
              "gid":"病人GID",
              "name":"病人姓名",
              "age":"病人年龄",
              "sex":"性别(1-男/2-女)",
              "sick":"疾病",
              "visit":"就诊时间"
          },
          {
              "gid":"病人GID",
              "name":"病人姓名",
              "age":"病人年龄",
              "sex":"性别(1-男/2-女)",
              "sick":"疾病",
              "visit":"就诊时间"
          }
     ]

  }



```
