(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-9ea29336"],{7592:function(n,t,e){"use strict";var i=e("dbf2"),r=e.n(i);r.a},cd59:function(n,t,e){"use strict";e.r(t);var i=function(){var n=this,t=n.$createElement,e=n._self._c||t;return e("div",{staticClass:"app-container"},[e("el-container",[e("el-header",[n._v("代码自动生成工具使用说明")]),n._v(" "),e("el-main",[e("div",{attrs:{id:"vditor"}})])],1)],1)},r=[],a=e("ff41"),o=e.n(a),c=(e("b642"),{name:"Dashboard2",data:function(){return{contentEditor:""}},mounted:function(){var n=this;this.contentEditor=new o.a("vditor",{toolbarConfig:{pin:!0},cache:{enable:!1},minHeight:500,after:function(){n.contentEditor.setValue('# code-generator-plus\nJAVA代码生成工具\n## 功能介绍\ncode-generator-plus是基于Springboot开发的SSM代码生成器，使用 <a target="_blank" href="https://freemarker.apache.org/">Apache FreeMarker</a> \n作为代码文件的模板，用户可以一键将数据库中的表生成entity、xml、dao、service、html、js、sql代码文件，并集成表的基础操作接口及前端功能实现（数据表的增加、删除、修改、根据ID获取信息以及分页查询功能），减少60%以上的开发任务；<br>\n该工具支持所有实现JDBC规范的数据库;默认集成了MySQL数据库脚本;<br>\n该工具提供了两种数据库表导入方式，连接数据库或直接导入SQL创建表脚本；<br>\n\n## 操作说明\n\n### 1. 设置数据源\n本工具提供了两种数据库表导入方式，连接数据库和导入SQL创建表脚本。具体操作步骤见下图：\n![连接数据库](https://img-blog.csdnimg.cn/20201126165359570.png)\n数据库连接配置界面\n![导入SQL脚本](https://img-blog.csdnimg.cn/20201126165832650.png)\n导入SQL脚本界面，录入表CREATE脚本，支持多表导入，多个脚本以英文分号隔开。\n### 2. 生成代码\n数据源设置完成后及可进行代码生成了。代码生成界面展示了数据库中所有表，可通过多选的方式选中你想要生成代码的表，并分别为表指定功能模块（这里必须生成代码后会将代码分发到指定模块下），设置完成后点击“生成代码”即可一键生成你选中表的初始代码了。\n![生成代码主界面](https://img-blog.csdnimg.cn/20201126170029376.png)\n除此之外，提供了查看表字段信息和生成的代码预览功能，下图为选中表字段信息展示\n![查看表字段信息](https://img-blog.csdnimg.cn/20201126170112585.png)\n下图为生成的代码预览功能\n![代码预览功能](https://img-blog.csdnimg.cn/20201126170222603.png)')}})},methods:{}}),s=c,d=(e("7592"),e("2877")),g=Object(d["a"])(s,i,r,!1,null,null,null);t["default"]=g.exports},dbf2:function(n,t,e){}}]);