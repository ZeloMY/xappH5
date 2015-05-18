# hisupdate
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /rdPatient/rdUpdate

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 是 | 字符串 | 用户GID | 
 token | 是 | 字符串 | 验证码 | 
 gid | 是 | 字符串 | 病人GID | 【20150513修改】
 name | 否 | 字符串 | 姓名 | 
 sex | 否 | 字符串 | 性别(1-男/2-女) | 
 age | 否 | 字符串 | 年龄 | 
 sick | 否 | 字符串 | 疾病 | 

###请求示例
```javascript
{
   "userId": "用户GID",
   "token": "token",
   "gid":"病人GID",
   "name":"姓名",
   "sex":"性别(1-男/2-女)",
   "age":"年龄",
   "sick":"疾病"
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
