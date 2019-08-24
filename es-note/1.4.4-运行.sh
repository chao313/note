1.4.4 运行
  1.windows下执行 elasticsaerch.bat ; linux下执行 elasticsaerch
  2.启动的时候修改集群名称和节点名称：
    ./elasticsaerch --cluster.name myClusterName --node.name MyNodeName
  3.启动后检查ES的Rest API
    curl http://127.0.0.1:9200
    返回结果：
   {
  "name" : "localhost.localdomain",
  "cluster_name" : "elasticsearch",
  "cluster_uuid" : "s2LF4VRVSgC28AAp5oHk_g",
  "version" : {
    "number" : "7.3.1",
    "build_flavor" : "default",
    "build_type" : "tar",
    "build_hash" : "4749ba6",
    "build_date" : "2019-08-19T20:19:25.651794Z",
    "build_snapshot" : false,
    "lucene_version" : "8.1.0",
    "minimum_wire_compatibility_version" : "6.8.0",
    "minimum_index_compatibility_version" : "6.0.0-beta1"
  },
  "tagline" : "You Know, for Search"
  }
  4.注意:
    4.1 必须要以非root用户启动
    4.2 启动的时候，会指定ip，默认只有127.0.0.1
