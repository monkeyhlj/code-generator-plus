(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-173f4bee"],{"4ec3":function(e,t,a){"use strict";a("28a5"),a("a481");var r=a("bc3a"),n=a.n(r),o=a("4328"),s=a.n(o),i=(a("ac6a"),a("53ca"),a("56cd")),l=function(e,t){t=t||"success","warning"!==t?"error"!==t?Object(i["a"])({message:e,duration:4}):i["a"].error({message:e,duration:4}):i["a"].warn({message:e,duration:4})},c=a("a18c");a("1368").polyfill();var u=!1,d=u?"/api":"";n.a.interceptors.request.use((function(e){if("post"===e.method)for(var t in d+"/login"===e.url&&(e.headers["Content-Type"]="application/x-www-form-urlencoded",e.data=s.a.stringify(e.data,{arrayFormat:"brackets"},{indices:!1})),e.data)null===e.data[t]&&delete e.data[t];return e}),(function(e){return Promise.reject(e)})),n.a.interceptors.response.use((function(e){if(1!==e.data.code&&(e.config.params&&e.config.params.noError?console.error(e.data.message):l(e.data.message,"error")),10231===e.data.code)if(u){var t=c["a"].currentRoute.path;if("/login"===t)return e;c["a"].replace({path:"/login",query:{redirect:t}})}else window.location.href=d;return e}),(function(e){return l("服务器错误","error"),Promise.reject(e)}));var f=function(e,t){var a,r=/({\w+})/g,n=e;while(null!==(a=r.exec(e))){var o=t[a[0].slice(1,-1)];if(!o)throw new Error("参数错误");n=n.replace(a[0],o),delete t[a[0].slice(1,-1)]}return{url:n,data:t}},m=function(e,t){var a=f(e,t),r=a.url,o=a.data;return new Promise((function(e,t){n.a.post(r,o).then((function(a){1===a.data.code?e(a.data.data):t(a.data.message)})).catch((function(){t("服务器错误")}))}))},g=function(e,t){var a=f(e,t),r=a.url,o=a.data;return new Promise((function(e,t){n()({method:"post",url:r,data:o,responseType:"blob"}).then((function(e){if(200===e.status){var a=e.data,r=new Blob([a]),n="";if(n=e.headers["content-disposition"].split(";").length>0?e.headers["content-disposition"].split(";")[1].split("=")[1]:"data.csv","download"in document.createElement("a")){var o=document.createElement("a");o.download=n,o.style.display="none",o.href=URL.createObjectURL(r),document.body.appendChild(o),o.click(),URL.revokeObjectURL(o.href),document.body.removeChild(o)}else navigator.msSaveBlob(r,n)}else t("文件下载失败")})).catch((function(){t("服务器错误")}))}))},h=function(e,t){var a=f(e,t),r=a.url,o=a.data;return new Promise((function(e,t){n.a.get(r,{params:o}).then((function(a){1===a.data.code?e(a.data.data):t(a.data.message)})).catch((function(){t("服务器错误")}))}))};n.a,t["a"]={generatorConnectDatabase:function(e){return console.log("${HEAD}"+d),h("".concat(d,"/generator/connectDatabase"),e)},generatorImportSql:function(e){return m("".concat(d,"/generator/importSql"),e)},generatorGetAllTableList:function(){return h("".concat(d,"/generator/getAllTables"),null)},generatorGeneratorCodes:function(e){return g("".concat(d,"/generator/generatorCodes"),e)},generatorGetTableList:function(e){return h("".concat(d,"/generator/queryTableList"),e)},generatorCode:function(e){return h("".concat(d,"/generator/code"),e)},generatorPreview:function(e){return h("".concat(d,"/generator/preview"),e)},generatorCodes:function(e){return h("".concat(d,"/generator/codes"),e)},generatorCodeAll:function(e){return h("".concat(d,"/generator/codeAll"),e)}}},"852b":function(e,t,a){},d4ef:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},[a("div",{staticClass:"select-table"},[a("div",{staticClass:"generator-code"},[a("el-form",{ref:"generatorForm",attrs:{model:e.generatorInfo,rules:e.generatorRules,size:"medium","label-width":"100px"}},[a("el-form-item",{attrs:{label:"项目主包名",prop:"rootPackage"}},[a("el-input",{style:{width:"100%"},attrs:{placeholder:"请输入项目主包名。如：com.chqiuu",clearable:""},model:{value:e.generatorInfo.rootPackage,callback:function(t){e.$set(e.generatorInfo,"rootPackage",t)},expression:"generatorInfo.rootPackage"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"创建人",prop:"author"}},[a("el-input",{style:{width:"100%"},attrs:{placeholder:"请输入创建人。如：chqiuu",clearable:""},model:{value:e.generatorInfo.author,callback:function(t){e.$set(e.generatorInfo,"author",t)},expression:"generatorInfo.author"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"MyBatis-Plus",prop:"isPlus"}},[a("el-checkbox",{model:{value:e.generatorInfo.isPlus,callback:function(t){e.$set(e.generatorInfo,"isPlus",t)},expression:"generatorInfo.isPlus"}},[e._v("是否生成MyBatis-Plus模式代码")])],1),e._v(" "),a("el-form-item",{attrs:{size:"large"}},[a("el-button",{on:{click:e.batchSetModule}},[e._v("设置模块")]),e._v(" "),a("el-button",{attrs:{type:"primary",loading:e.loading},on:{click:e.submitGeneratorForm}},[e._v("生成代码")])],1)],1)],1),e._v(" "),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.listLoading,expression:"listLoading"}],ref:"dbTable",attrs:{data:e.tableList?e.tableList.filter((function(t){return!e.search||(t.tableComment?t.tableComment:"").toLowerCase().includes(e.search.toLowerCase())||(t.tableName?t.tableName:"").toLowerCase().includes(e.search.toLowerCase())})):null,"element-loading-text":"Loading","tooltip-effect":"dark","row-class-name":e.dbTableRowClassName},on:{"selection-change":e.dbTableSelectionChange}},[a("el-table-column",{attrs:{type:"selection",width:"55"}}),e._v(" "),a("el-table-column",{attrs:{label:"表名",sortable:"",width:"200"},scopedSlots:e._u([{key:"default",fn:function(t){return[e._v("\n          "+e._s(t.row.tableName)+"\n        ")]}}])}),e._v(" "),a("el-table-column",{attrs:{label:"表注释",sortable:""},scopedSlots:e._u([{key:"default",fn:function(t){return[a("span",[e._v(e._s(t.row.tableComment))])]}}])}),e._v(" "),a("el-table-column",{attrs:{label:"字段数",width:"120"},scopedSlots:e._u([{key:"default",fn:function(t){return[e._v("\n          "+e._s(t.row.columns.length)+"\n        ")]}}])}),e._v(" "),a("el-table-column",{attrs:{prop:"module",label:"模块",sortable:"",width:"150"},scopedSlots:e._u([{key:"default",fn:function(t){return[null!=t.row.module?a("el-tag",{attrs:{type:null===t.row.module?"":"success","disable-transitions":""}},[e._v(e._s(t.row.module))]):e._e()]}}])}),e._v(" "),a("el-table-column",{attrs:{align:"right"},scopedSlots:e._u([{key:"header",fn:function(t){return[a("el-input",{attrs:{size:"mini",placeholder:"输入关键字搜索"},model:{value:e.search,callback:function(t){e.search=t},expression:"search"}})]}},{key:"default",fn:function(t){return[a("el-popover",{attrs:{placement:"left-start","min-width":"600",trigger:"hover"}},[a("el-table",{attrs:{data:t.row.columns}},[a("el-table-column",{attrs:{width:"200",property:"columnName",label:"字段名"}}),e._v(" "),a("el-table-column",{attrs:{width:"400",property:"columnComment",label:"字段注释"}})],1),e._v(" "),a("el-button",{attrs:{slot:"reference"},slot:"reference"},[e._v("查看字段信息")])],1),e._v(" "),a("el-button",{attrs:{type:"primary",loading:e.loading},on:{click:function(a){return e.previewCode(t.row)}}},[e._v("预览代码")])]}}])})],1)],1),e._v(" "),a("el-dialog",{staticStyle:{"min-height":"700px",height:"100%"},attrs:{title:"自动生成的预览代码",visible:e.dialogCodeListVisible,top:"15px",width:"95%"},on:{"update:visible":function(t){e.dialogCodeListVisible=t}}},[a("div",{attrs:{height:"40px"}},[a("el-tabs",{on:{"tab-click":e.handleCodePreviewClick},model:{value:e.codePreviewActiveName,callback:function(t){e.codePreviewActiveName=t},expression:"codePreviewActiveName"}},e._l(e.codeList,(function(e,t){return a("el-tab-pane",{key:e.fileName,attrs:{item:e,index:t,label:e.fileName,name:e.fileName}})})),1)],1),e._v(" "),a("div",{staticStyle:{"min-height":"700px",height:"100%",width:"100%"},attrs:{id:"code-preview"}})])],1)},n=[],o=a("b85c"),s=(a("7f7f"),a("ac6a"),a("96cf"),a("1da1")),i=a("4ec3"),l=a("c2c6"),c={filters:{statusFilter:function(e){var t={published:"success",draft:"gray",deleted:"danger"};return t[e]}},components:{},props:[],data:function(){return{loading:!1,tableList:null,columnList:null,listLoading:!0,codeList:null,dialogCodeListVisible:!1,monacoEditor:null,codePreviewActiveName:null,search:"",generatorInfo:{rootPackage:"com.chqiuu",author:"chqiuu",isPlus:!0,tables:[]},generatorRules:{rootPackage:[{required:!0,message:"请输入项目主包名",trigger:"blur"},{required:!0,pattern:/^[a-z.]+$/,message:"项目主包名格式有误",trigger:"blur"}],author:[{required:!0,message:"请输入作者名",trigger:"blur"}]}}},computed:{},watch:{},created:function(){this.fetchTableStructure()},mounted:function(){},methods:{initMonacoEditor:function(){this.monacoEditor=l["editor"].create(document.getElementById("code-preview"),{value:"",language:"java",automaticLayout:!0,theme:"vs-dark",minimap:{enabled:!1}})},fetchTableStructure:function(){var e=Object(s["a"])(regeneratorRuntime.mark((function e(){var t;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return this.listLoading=!0,e.prev=1,e.next=4,i["a"].generatorGetAllTableList();case 4:t=e.sent,this.tableList=t,this.listLoading=!1,this.$message.success("获取数据库表成功"),e.next=15;break;case 10:e.prev=10,e.t0=e["catch"](1),this.$message.error("数据库表获取失败，请先连接数据库或导入SQL脚本"+e.t0),this.loading=!1,this.$router.push("/connect/index");case 15:case"end":return e.stop()}}),e,this,[[1,10]])})));function t(){return e.apply(this,arguments)}return t}(),batchSetModule:function(){var e=this;return 0===this.generatorInfo.tables.length?(this.$message.error("请先选择数据库表"),!1):new Promise((function(t,a){e.$prompt("请输入模块名称","设置模块名",{confirmButtonText:"确定",cancelButtonText:"取消",inputPattern:/^[a-z]+$/,inputErrorMessage:"模块格式有误，必须为小写英文字符串"}).then((function(a){for(var r=a.value,n=0;n<e.tableList.length;n++)e.generatorInfo.tables.forEach((function(t){e.tableList[n].tableName===t.tableName&&(e.tableList[n].module=r,t.module=r,e.$set(e.tableList,n,e.tableList[n]))}));e.$message.success("模块设置成功"),t(!0)})).catch((function(){t(!1)}))}))},dbTableRowClassName:function(e){e.row;var t=e.index;return t%2===0?"warning-row":""},dbTableSelectionChange:function(e){this.generatorInfo.tables=e},dbTableRowClick:function(e){this.$refs.dbTable.toggleRowSelection(e)},previewCode:function(){var e=Object(s["a"])(regeneratorRuntime.mark((function e(t){var a,r=this;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(null!=t.module){e.next=12;break}return this.$message.error("请给该表指定功能模块名"),this.$refs.dbTable.toggleRowSelection(t),e.next=5,this.batchSetModule();case 5:if(e.sent){e.next=11;break}return this.$message.success("取消输入，则直接返回"),console.log("取消输入，则直接返回"),e.abrupt("return");case 11:this.$message.success("取消输入，则直接返回1");case 12:return e.prev=12,e.next=15,i["a"].generatorPreview({rootPackage:this.generatorInfo.rootPackage,moduleName:t.module,author:this.generatorInfo.author,table:t.tableName,isPlus:this.generatorInfo.isPlus});case 15:a=e.sent,this.$message.success("代码获取成功"),this.codeList=a,this.dialogCodeListVisible=!0,setTimeout((function(){r.initMonacoEditor()}),10),setTimeout((function(){r.codePreviewActiveName=r.codeList[0].fileName,r.monacoEditor.setValue(r.codeList[0].content)}),10),e.next=26;break;case 23:e.prev=23,e.t0=e["catch"](12),this.$message.error("代码获取失败"+e.t0);case 26:case"end":return e.stop()}}),e,this,[[12,23]])})));function t(t){return e.apply(this,arguments)}return t}(),getLanguage:function(e){var t="java";return-1!==e.indexOf(".sql")?t="mysql":-1!==e.indexOf(".xml")?t="xml":-1!==e.indexOf(".vue")&&(t="typescript"),t},handleCodePreviewClick:function(e,t){var a=this;this.codeList.forEach((function(t){e.name===t.fileName&&a.monacoEditor.setValue(t.content)}))},submitGeneratorForm:function(){var e=Object(s["a"])(regeneratorRuntime.mark((function e(){var t,a,r,n,s,l;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(0!==this.generatorInfo.tables.length){e.next=3;break}return this.$message.error("请选择需要生成代码的数据库表"),e.abrupt("return");case 3:t=Object(o["a"])(this.tableList),e.prev=4,t.s();case 6:if((a=t.n()).done){e.next=28;break}r=a.value,n=Object(o["a"])(this.generatorInfo.tables),e.prev=9,n.s();case 11:if((s=n.n()).done){e.next=18;break}if(l=s.value,r.tableName!==l.tableName||null!=l.module){e.next=16;break}return this.$message.error("请给需要生成都表设置模块名"),e.abrupt("return");case 16:e.next=11;break;case 18:e.next=23;break;case 20:e.prev=20,e.t0=e["catch"](9),n.e(e.t0);case 23:return e.prev=23,n.f(),e.finish(23);case 26:e.next=6;break;case 28:e.next=33;break;case 30:e.prev=30,e.t1=e["catch"](4),t.e(e.t1);case 33:return e.prev=33,t.f(),e.finish(33);case 36:return e.prev=36,e.next=39,i["a"].generatorGeneratorCodes(this.generatorInfo);case 39:this.$message.success("下载成功"),e.next=45;break;case 42:e.prev=42,e.t2=e["catch"](36),this.$message.error("下载失败："+e.t2);case 45:case"end":return e.stop()}}),e,this,[[4,30,33,36],[9,20,23,26],[36,42]])})));function t(){return e.apply(this,arguments)}return t}()}},u=c,d=(a("fa7f"),a("2877")),f=Object(d["a"])(u,r,n,!1,null,null,null);t["default"]=f.exports},fa7f:function(e,t,a){"use strict";var r=a("852b"),n=a.n(r);n.a}}]);