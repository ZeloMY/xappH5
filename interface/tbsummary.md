# 骨科指南查询
 相关信息 | 内容
 ------ | ------
 访问类型 | POST
 访问地址 | /textbook/tbSummary

###请求参数

 参数名称 | 是否必填 | 类型 | 说明 | 示例数据
 ------ | ------ | ------ | ------ | ------ | ------
 userId | 否 | 字符串 | 用户GID | 
 token | 否 | 字符串 | 验证码 | 
 keyword | 否 | 字符串 | 查询输入的内容（为空则全部查询） | 
 currId | 是 | 字符串 | 当前自增ID | 【20150514修改】
 selectType| 是 | 字符串 | 查询类型 |【20150513删除】
 count | 是 | 字符串 | 查询条数 | 
 category | 是 | 字符串 | 文章分类 | 


###请求示例
```javascript
{
   "userId": "用户GID",
   "token": "token",
   "currId":"当前自增ID",
   "count":"显示条目",
   "keyword":"关键字",
   "category":"文章分类"
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
              "tbId":"自增ID",
              "textbookGid":"文章GID",
              "rz1":"图片地址1(缩略图",
              "rz2":"图片地址2(正图)",
              "publish":"发布时间",
              "author":"作者",
              "title":"标题",
              "selected":"1"
          },
          {
              "tbId":"自增ID",
              "textbookGid":"文章GID",
              "rz1":"图片地址1(缩略图",
              "rz2":"图片地址2(正图)",
              "publish":"发布时间",
              "author":"作者",
              "title":"标题",
              "selected":"1"
          },
          {
              "tbId":"自增ID",
              "textbookGid":"文章GID",
              "rz1":"图片地址1(缩略图",
              "rz2":"图片地址2(正图)",
              "publish":"发布时间",
              "author":"作者",
              "title":"标题",
              "selected":"1"
          }
     ]

  }



```
