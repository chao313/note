1.5.5 插入数据
  1.插入URL
    模板: curl -H 'content-type:application/json' -XPUT http://<ip>:<port>/<index>/type?pretty -d '{}'
    举例: curl -H 'content-type:application/json'  -XPOST http://39.107.236.187:9200/myindex/1?pretty -d '{"name":4}'
  
