5.1.1-创建管理.sh
 1.创建索引模板:curl   -XGET http://<ip>:<port>/<目标index>?pretty
 2.创建索引举例:curl   -XGET http://39.107.236.187:9200/myindex5?pretty
 3.创建索引返回值:
   {
  "acknowledged" : true,
  "shards_acknowledged" : true,
  "index" : "myindex6"
   }
   3.1 acknowledged为tru                 -> 表明创建索引成功
   3.2 resource_already_exists_exception -> 表明已经存在 
   3.3 invalid_index_name_exception      -> 表明无效的索引name(must be lowercase)
 4.ES默认给索引设置5个分片和1个副本
   4.1 分片数指定之后就无法改变
   4.2 副本数量可以随时改变
   4.3 举例: 创建索引的时候指定分片数和副本数
       curl -H 'content-type:application/json'   -XPUT http://39.107.236.187:9200/myindex7?pretty -d '
    {
      "settings":{
       "number_of_shards":3,
       "number_of_replicas":0
      }
    }'
    返回 
    {  
     "acknowledged" : true,
     "shards_acknowledged" : true,
     "index" : "myindex7"
    } 
