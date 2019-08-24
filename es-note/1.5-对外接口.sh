1.5 对外接口
  1.ES对外的API是HTTP的协议
  2.ES对外API是通过JSON按照REST的方式提供
  3.HTTP的配置放在elasticsearch.yml里面
    3.1 HTTP相关的配置都是静态的，需要重启才能生效
    3.2 HTTP可以禁用，只要设置http.enabled=false
  4.ES集群内部通信是通过内部接口，而不是HTTP协议的
  5.正常情况下，只需要在一个节点上开启HTTP
