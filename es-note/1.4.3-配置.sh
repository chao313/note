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
       4.通过交互式进行设置:通过${prompt.txt}或者${prompt.secret}来指定。 
                            ${prompt.txt}表示在终端输入显示值，${prompt.secret} 表示终端输入隐藏值
         举例:node.name:${prompt.text} -> ES启动的时候，将会提示输入: Enter value for {node.name}
  4.Elasticsearch.yml的配置说明
    4.1: cluster.name 集群名称(确保不同环境集群中的名称不重复)
         cluster.name: my-application       
    4.2：node.name 节点名称(默认情况下，节点启动时，会在3000个名字的列表中随机指定一个)
         node.name: node-1
    4.3: node.rack 节点描述
         node.rack: r1
    4.4: path.data 索引存储的位置
         path.data: /path/to/data
    4.5: path.logs 日志存储位置
         path.logs: /path/to/logs
    4.6: bootstrap.mlockall 内存分配模式
         bootstrap.mlockall: true 
   
