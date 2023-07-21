# RubyOnRailsStart
### Ruby on Rails入门
##### 说明
- 本项目是学习Ruby on Rails的入门项目，主要是跟着书本《Ruby on Rails实战圣经》一步一步的学习，学习过程中的代码都会上传到这个项目中，方便以后查阅
- Ruby也是本人比较早期接触的编程语言之一，这个语言的语法特点在于优雅，清新脱俗
- 网上能检索到关于Ruby on Rails的资料很少，而且大多视频教程都是外国友人录制的，于是就有了这个仓库
- 我们一起来探秘Ruby on Rails中如何将MVC模式发挥到极致吧
- 在Window上环境安装起来很费劲，而且国内创建项目的时候网络很慢，坚持就是胜利
- 章节中的D表示Demo，后面的数字表示章节，比如D01表示第一章的Demo01
- 后面括号中的地址是对应章节对应的入口网页
- 我是用的IDE是RubyMine，这个IDE对Ruby on Rails的支持很好，但是需要收费，不过可以免费试用30天，可以先试用一下，如果觉得不错，可以购买正版

##### 章节
- D01：Hello,World!(创建项目，调试运行)（http://localhost:3000/welcome/say_hello）
- D02：特殊标签\<%=xx%>(使用这个标签在页面中插入代码)（http://localhost:3000/welcome/index）
- D03：设为主页(在路由中设置应用的默认首页)（http://localhost:3000/）
- D04：快速生成CRUD(创建数据库 rake db:migrate、使用鹰架 rails g scaffold person name:string bio:text birthday:date)（http://localhost:3000/people）
- D05：Rails中的MVC、手工打造 CRUD(rails g model event name:string description:text is_public:boolean capacity:integer、bin/rake db:migrate)（http://localhost:3000/events/index）
    - 先创建实体类，使用ActiveRecord操作数据库
    - 使用ActiveRecord实现插入资料验证
    - 创建Controller、View、Route
    - 在页面和Controller中使用@变量来传递数据
    - 使用Strong Parameters来验证用户请求参数

By：tyza66
