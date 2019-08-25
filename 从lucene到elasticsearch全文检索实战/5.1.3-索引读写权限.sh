5.1.3-索引读写权限
 1.可以设置索引的读写操作权限
  1.1 blocks.read_only:true -> 只读
  1.2 blocks.read:true -> 禁止读操作
  1.3 blocks.write:true -> 禁止写操作
 2.举例:
  curl -H 'content-type:application/json'   -XPUT http://39.107.236.187:9200/myindex6/_settings?pretty -d '
  {
   "blocks.write":true
  }'
  返回值:
  {
   "acknowledged" : true
  }
  之后的插入数据就会被禁止
  url -H 'content-type:application/json'  -XPOST http://39.107.236.187:9200/myindex6/1?pretty -d '{"name":4}'
  {
     "error" : {
     "root_cause" : [
        {
         "type" : "cluster_block_exception",
         "reason" : "index [myindex6] blocked by: [FORBIDDEN/8/index write (api)];"
        }
      ],
      "type" : "cluster_block_exception",
      "reason" : "index [myindex6] blocked by: [FORBIDDEN/8/index write (api)];"
     },
    "status" : 403
  }
 
  
