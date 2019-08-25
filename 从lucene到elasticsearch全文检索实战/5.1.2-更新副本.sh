5.1.2-更新副本
 ES支持修改索引的副本数
 模板:
 curl -H 'content-type:application/json'   -XPUT http://<ip>:<port>/<index>/_settings?pretty -d '
 {
   "number_of_replicas":3
 }'
 举例:
 curl -H 'content-type:application/json'   -XPUT http://39.107.236.187:9200/myindex6/_settings?pretty -d '
 {
   "number_of_replicas":3
 }'
 返回:
 {
  "acknowledged" : true
 } 




  
