���

�˽ű�����zabbix ���ϵͳӲ����Ϣ

�ű���װ
  1�������ļ�
  
   2�����ƽű�
    �������zabbix_agent ��װ��/usr/local/zabbix��  ����һ��agentd��װĿ¼
    #Z_AGENT=/usr/local/zabbix
    �������ڴ�Žű���Ŀ¼ (���еļ�ؽű�ȫ����������ڹ���)
    #mkdir $Z_AGENT/scripts
  
    �ϴ�zdisk.sh ����Ŀ¼�£�����ӿ�ִ��Ȩ��
   3���޸�zabbix_agentd.conf �����ļ���׷���������
    #set for disk
    UserParameter=vfs.dev[*],$Z_AGENT/scripts/zdisk.sh $1 $2
    4��������ģ�� templates for disk.xml  �Ϳ���ʹ����


#�˽ű�hp�������ڻ�����ʹ�á�
	