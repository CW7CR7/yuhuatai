# 研学平台内容网站（红研旅v1.0版）
http://www.hongyanlv.com

## 安装方法

1. 获取代码
2. 复制'common/config/config.php.example',并在对应目录下，重命名为'config.php'
3. 复制'yzmphp/yzmphp.php.example',并在对应目录啊，重命名为'yzmphp.php'

## 修改配置

1. config.php

```
'db_type' => 'pdo',     	    // 数据库链接扩展 , 支持 pdo | mysqli | mysql
'db_host' => '47.100.39.36',       // 服务器地址
'db_name' => 'yzmcms',		    // 数据库名
'db_user' => 'root',            // 用户名
'db_pwd' => 'hood2020',       	// 密码
'db_port' => 3306,              // 端口
'db_prefix' => 'yzm_',          // 数据库表前缀
```


2. yzmphp.php
```
define('HTTP_HOST','localhost:81');
define('ROOM_HOST','http://localhost:82/');
```
