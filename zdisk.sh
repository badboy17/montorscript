#!/bin/bash
#this scripts used by montor disk ,connect leezhenhua17@163.com

zapachever="v.1.0"
dev=$1
CASE_VALUE=$2
function usage()
{
    echo "zapache version: $zapachever
        usage:
        $0 read.ops                      -- Check read.ops.
        $0 write.ops                     -- Check write.ops .
        $0 read.ms                          -- Check read.ms.
        $0 write.ms                       -- Check write.ms.
        $0 io.active                     -- Check Bytes per second.
        $0 io.ms                         -- Check Bytes per request.
        $0 read.sector                     -- Check busy workers.
        $0 write.sector                     -- Check idle workers."
}   


if [ $# == 2 ]
then
  disk_info=`cat /proc/diskstats | grep $1 | head -1 `
else
  usage
  exit $?
fi

case $CASE_VALUE in
'read.ops')
   echo $disk_info|awk '{print $4}'
   rval=$?;;
'write.ops')
   echo $disk_info|awk '{print $8}'
   rval=$?;;
'read.ms')
   echo $disk_info|awk '{print $7}'
   rval=$?;;
'write.ms')
   echo $disk_info|awk '{print $11}'
   rval=$?;;
'io.active')
   echo $disk_info|awk '{print $12}'
   rval=$?;;
'io.ms')
   echo $disk_info|awk '{print $13}'
   rval=$?;;
'read.sector')
   echo $disk_info|awk '{print $6}'
   rval=$?;;
'write.sector')
   echo $disk_info|awk '{print $10}'
   rval=$?;;
'version')
    echo $zapachever
    exit $rval;;
*)
    usage
    exit $?
esac

if [ $rval -ne 0 ];then
      echo ZBX_NOTSUPPORTED
fi
exit $rval