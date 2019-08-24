1.4.3-配置.sh
  1.配文件的地址: elasticseach/config文件夹
  2.配置文件: 
      配置不同模块: elasticsearch.yml
      配置日志    : logging.yml/log4j2.properties
  3.ES提供了多种的方式进行设置:
     3.1 系统内部使用命名空间来表示这些设置
     3.2 根据这些命名空间,可以很容易的扩展到其他格式。
     举例:
       1.通过yml的格式配置为:node.name:node-1
       2.通过JSON的格式配置为:{"node":{"name":"node-1"}} ， 然后吧elasticsearch.yml 重命名为 elasticsearch.json
       3.通过Elasticsearch命令参数来设置: eslasticsearch -Des.node.name=node-1 
     
   
