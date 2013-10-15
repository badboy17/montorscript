简介

此脚本用于zabbix 监控系统硬盘信息

脚本安装
  1、下载文件
  
   2、复制脚本
    假如你的zabbix_agent 安装在/usr/local/zabbix下  定义一下agentd安装目录
    #Z_AGENT=/usr/local/zabbix
    创建用于存放脚本的目录 (所有的监控脚本全放在这里便于管理)
    #mkdir $Z_AGENT/scripts
  
    上传zdisk.sh 到此目录下，并添加可执行权限
   3、修改zabbix_agentd.conf ，在文件中追加下面的行
    #set for disk
    UserParameter=vfs.dev[*],$Z_AGENT/scripts/zdisk.sh $1 $2
    4、导入监控模版 templates for disk.xml  就可以使用了


#此脚本hp机器现在还不能使用。
	