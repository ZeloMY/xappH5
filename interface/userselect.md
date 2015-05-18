# UserSelect
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /user/select

###请求参数
  /*chgid、userselectgid、name至少有一个参数不为空*/

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 是 | 字符串 | 用户gid | 
 token | 是 | 字符串 | token | 
 chGid | 否 | 字符串 | 用户频道id
 userSelectGid | 否 | 字符串 | 被查询用户gid | 
 name | 否 | 字符串 | 名字（模糊查询） | 

###请求示例
```javascript
{
   "userId": "用户gid",
   "token": "token",
   "chGid": "频道gid"
   "userSelectGid":"被查询用户gid",
   "name":"名字（模糊查询）"
}
```

###返回结果示例

```javascript
  {
     "code": 1,
     "message": "更新成功",
     "result_data":
     [
        {
            "userId":"用户gid",
            "name":"姓名",
            "email":"邮箱",
            "sex":"性别(1-男/2-女)",
            "birthday":"生日",
            "local":"驻地编码",
            "descript":"个人简介",
            "avatars":"头像图片gid",
            "hospital":"医院",
            "title":"社会任职",
            "jobTitle":"职称",
            "wx":"微信号",
            "wb":"微博号",
            "qq":"QQ"
            "pstCount":"发帖数量",
            "pst":
            [
                {"pstGid":"发帖gid","pstDetail":"发帖内容"},
                {"pstGid":"发帖gid","pstDetail":"发帖内容"},
                {"pstGid":"发帖gid","pstDetail":"发帖内容"},
                {"pstGid":"发帖gid","pstDetail":"发帖内容"},
                {"pstGid":"发帖gid","pstDetail":"发帖内容"}
            ]
        }，
        {
            "userId":"用户gid",
            "name":"姓名",
            "email":"邮箱",
            "sex":"性别(1-男/2-女)",
            "birthday":"生日",
            "local":"驻地编码",
            "descript":"个人简介",
            "avatars":"头像图片gid",
            "hospital":"医院",
            "title":"社会任职",
            "jobTitle":"职称",
            "wx":"微信号",
            "wb":"微博号",
            "qq":"QQ"
            "pstCount":"发帖数量",
            "pst":
            [
                {"pstGid":"发帖gid","pstDetail":"发帖内容"},
                {"pstGid":"发帖gid","pstDetail":"发帖内容"},
                {"pstGid":"发帖gid","pstDetail":"发帖内容"},
                {"pstGid":"发帖gid","pstDetail":"发帖内容"},
                {"pstGid":"发帖gid","pstDetail":"发帖内容"}
            ]
        }

      ]
  }



```
