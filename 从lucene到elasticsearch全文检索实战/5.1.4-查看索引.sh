5.1.4-查看索引
 1.RestAPI上加上/_settings
   模板: curl -XGET http://<ip>:<port>/<index>/_settings?pretty
   举例: curl -XGET http://39.107.236.187:9200/myindex/_settings?pretty
         返回值:
         {
          "myindex" : {
          "settings" : {
            "index" : {
            "creation_date" : "1566695172152",
            "number_of_shards" : "1",
            "number_of_replicas" : "1",
            "uuid" : "zZAUqxzCQjeetrzMkrS_-w",
            "version" : {
              "created" : "7030199"
            },
         "provided_name" : "myindex"
      }
    }
  }
} 
 
 2.查询多个索引
   模板: curl -XGET http://<ip>:<port>/<index>,<index2>/_settings?pretty
   举例: curl -XGET http://39.107.236.187:9200/myindex,myindex2/_settings?pretty  
 3.查询全部的索引
   模板: curl -XGET http://<ip>:<port>/_all/_settings?pretty
   举例: curl -XGET http://39.107.236.187:9200/_all/_settings?pretty  
   



