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
    4.7: network.host 绑定网卡
         network.host: 192.168.0.1
    4.8: http.port http协议端口
         http.port: 9200
    4.9: discovery.zen.ping.unicast.hosts 开始发现新节点的IP地址
         discovery.zen.ping.unicast.hosts: ["host1","host2"] 
    4.10:discovery.zen.minimum_master_nodes 最多发现的主节点的个数
         discovery.zen.minimum_master_nodes: 3
    4.11:gateway.recover_after_nodes 当重启节点后最少启动N个节点后开始恢复
         gateway.recover_after_nodes: 3
    4.12:node.max_local_storage_nodes 一台机器最多启动的节点数
         node.max_loacl_storage_nodes: 3
    4.13:action.destructive_requires_name 当删除一个节点的时候，需要具体的索引名称
         action.destructive_requores_name: true
  5.索引配置说明
    5.1 集群中配置的索引可以提供自己的设置。
        举例:创建一个刷新间隔为5s而不是默认刷新时间 
          请求:PUT http://127.0.0.1:9200/kimchy
          index:refresh_interval: 5s
    5.2 可以统一设置(所有的索引都是5s)
        举例: 在elasticsearch.yml文件中设置 index.refresh_interval: 5s
    5.3 也可以启动时设置:
        elasticsearch -Des.index.refresh_interval=5s
  6.日志配置说明
    6.1 ES内部使用的log4j来记录系统日志
    6.2 可以通过YAML配置方式来简化配置
    6.4 配置文件地址为conf/logging.yml 也可以是(.yml,.yaml,.json.properties) 
    6.5 日志比较重要，正常情况下不要禁止日志产生
    6.6 日志每天会生成一个新的文件   
