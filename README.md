# psOline
1.
# 在d盘新建File2\images文件,并修改tomcat中server.xml在host之间添加：
```
<Context docBase="D:\File2\images"  path="/images" reloadable="false"/>
```
2.
###其中项目没有采用maven工程
###需要单独引入包：psOnlie\WebRoot\WEB-INF\lib\

测试
file.transferTo(new File(path));

xia gou