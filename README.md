### 项目进度跟踪

* 工作要求，后端实现jason伪代码 前端实现ui和jason调用
* 进度说明: :x:未启动 :heavy_exclamation_mark:滞后 :bangbang:严重滞后 :interrobang:待确认 :o:完成
* 优先级: :one:重要(5.17) :two:次要(5.30) :three:暂缓(6.15)

工作模块 | 工作项 | 端口编号 | 后端 | 前端安卓 | 前端iOS
------ | ------ | ------ | -------- | ------- | ------- 
基础框架 | | | :o:白雪峰 | :o:田晓鹏 | :o:田晓鹏 |
用户 | | | | |
* | :one:用户登陆 | /user/[login](./interface/userreg.md) | :o:白雪峰(20150517完成) | :o:田晓鹏 | :o:张栋 
* | :one:用户注册 | /user/[regist](./interface/useradd.md) | :o:白雪峰(20150517完成) | :o:田晓鹏 | :o:张栋 
 | :one:用户短信验证 | /user/[identityCodeValidate](./interface/identitycodevalidate.md) | :o:白雪峰(20150517完成) | :o:田晓鹏 | :o:张栋 
* | :three:用户验证码 | /user/captcha | :x:孟子文 | :x:田晓鹏 | :x:张栋 
* | :two:信息修改/查询 | /user/[update](./interface/userupdate.md),[select](./interface/userselect.md) | :x:孟子文 | :o:田晓鹏 | :o:张栋 
* | :three:修改密码 | /user/[changePwd](./interface/changepsw.md) | :x:孟子文 | :o:田晓鹏 | :o:张栋 
* | :three:重置密码 | /user/[resetPwd](./interface/resetpsw.md) | :x:孟子文 | :o:田晓鹏 | :o:张栋 
* | :three:登出 | /user/[userExit](./interface/userexit.md) | :x:孟子文 | :o:田晓鹏 | :o:张栋 
发现 | | | | 田晓鹏 | 张栋 |
学术会议 | | | | 刘增产 |  张栋 
* | :one:会议列表 | /cons/[confSummary](./interface/confsummary.md)| | 刘增产 |  张栋 
* | :one:会议详情/位置 | /cons/[confDetail](./interface/confdetail.md)| | 刘增产 |  张栋 
* | :one:会议日程 | /cons/[confTopicSelect](./interface/meetingtopicselect.md)| | 刘增产 |  张栋 
 | :one:会议收藏 | /cons/[confFav](./interface/conffav.md)| | 刘增产 |  张栋 
骨科指南 | | | | |
* | :two:指南列表  | /textbook/[tbSummary](./interface/tbsummary.md)| | 刘增产 |  张栋 
 | :two:文章详细 | /textbook/[tbDetail](./interface/tbdetail.md)|  孟子文 | 刘增产 |  张栋 
* | :two:文章收藏 | /textbook/[tbFav](./interface/tbfav.md)| |  刘增产 |  张栋 
病例夹 | | | | |
* | :two:病例查询  | /rdPatient/[rdSelect](./interface/hisselect.md)| | 刘增产 | 张栋
* | :two:病例详情 | /rdPatient/[rdSelectByPGid](./interface/hisdetailselect.md)| |  刘增产 | 张栋
* | :two:病例新增/编辑/删除 | /rdPatient/  [rdAdd](./interface/hisadd.md),[rdUpdate](./interface/hisupdate.md),[rdDelete](./interface/hisdelete.md)| | 刘增产 | 张栋
* | :two:病程详情查询 | /rdPatient/[rdSelectSingle](./interface/recordselectbyid.md)| | 刘增产 | 张栋
* | :two:病程新增 | /rdPatient/[rdRecordAdd](./interface/recordadd.md)| | 刘增产 | 张栋
* | :two:病程编辑 | /rdPatient/[rdRecordUpdate](./interface/recordupdate.md)| | 刘增产 | 张栋
* | :two:病程删除 | /rdPatient/[rdRecordDelete](./interface/recorddetail.md)| | 刘增产 | 张栋
意见反馈 | | | | |
 | :two: 新增| /feedback/[feedbackAdd](./interface/feedbackadd.md)| | 刘增产| 张栋
频道 | | | | 田晓鹏| 田晓鹏|
* | :one:帖子列表 | /channel/[postSelect](./interface/postselect.md)|  | 田晓鹏| 田晓鹏
 | :one:新增/删除帖子 | /channel/[postAdd](./interface/postadd.md),[postDelete](./interface/postupdate.md)| | |
 | :one:频道详情 | /channel/[channelSelectByGid](./interface/channelselectbyid.md) |  | 田晓鹏| 田晓鹏
 | :one:更新频道 | /channel/[channelUpdate](./interface/channelupdate.md)|  | 田晓鹏| 田晓鹏
 | :one:帖子详情 | /channel/[postDetailSelect](./interface/postdetail.md)| | 田晓鹏| 田晓鹏
* | :one:帖子点赞| /channel/[postFav](./interface/postfav.md)| | 田晓鹏| 田晓鹏
 | :one:回帖/删除回帖 | /channel/[replyAdd](./interface/replyadd.md),[replyDelete](./interface/replydelete.md)| | 田晓鹏| 田晓鹏
其他接口 | |  | | |
 | :one:图片上传 | /common/[picUpload](./interface/picupload.md)|  孟子文|
 | :one:图片查询 | /common/[picSelect](./interface/picselect.md)|  孟子文|
 | :three:视频上传 |  |  孟子文|
 | :three:视频查询 |  |  孟子文|
 | :one:地区 | /common/[areaSelect](./interface/area.md)|  孟子文|
 | :one:医院 | /common/[hosSelect](./interface/hosselect.md)|  孟子文|
