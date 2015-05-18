# 医院查询接口【20150512增加】
相关信息|内容
 ------ | ------
访问类型|POST
访问地址|/common/hosSelect

###请求参数

参数名称|是否必填|类型|说明|示例数据
------ | ------ | ------ | ------ | ------ | ------
areCode|否|字符串|地区编码|
code|否|字符串|医院编码|
name|否|字符串|医院名称（模糊查询）|

###请求示例
<pre>
<code>
{
    "areCode":"地区编码，
    "code":"医院编码",
    "name":"医院名称（模糊查询）"
}
</code>
</pre>

###返回结果示例

<pre>
<code>
    {
       "code": 1,
       "message": "新增成功",
       "result_data":
       [
            {
                "code":"医院编码",
                "name":"医院名称",
                "descript":"医院介绍",
                "local":"所属地区编码",
                "localName":"所属地区名称",
            },
            {
                "code":"医院编码",
                "name":"医院名称",
                "descript":"医院介绍",
                "local":"所属地区编码",
                "localName":"所属地区名称",
            },
            {
                "code":"医院编码",
                "name":"医院名称",
                "descript":"医院介绍",
                "local":"所属地区编码",
                "localName":"所属地区名称",
            }
       ]
    }



</code>
</pre>
