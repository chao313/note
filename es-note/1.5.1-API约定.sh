1.5.1-API约定.sh
 1.多索引参数
   1.1 大多数API支持同时查询多个索引中的数据
       举例：参数test1,test2.test3表示同时搜索test1,test2.test3三个索引中的数据
   1.2 参数支持通配符
       test* -> 查询所有以test开头的索引
      +test* -> 查询所有test开头的索引
      -test3 -> 排除test3的索引
   1.3 支持的参数：
       ignore_unavaiable:当索引不存在或者关闭的时候，是否忽略这些索引
       allow_no_indices :当使用通配符查询索引的时候，有索引不存在的时候是否返回查询失败(true|false)
       expand_wildcards: 控制通配符索引表达式具体匹配哪一类的索引(close|none|all)
   1.4 文档操作API和别名API不支持多索引

  2.日期筛选
       
