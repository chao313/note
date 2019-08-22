1.3.1-ElasticSaerch术语及介绍
   1.索引词(term)
     定义: 索引词是一个能够被索引的精确值，foo，Foo，FOO是三个不同的索引词。可以通过term来精确查询
   2.文本(text)  
     定义: 1.文本是一个普通的非结构化的文字。
           2.文本会被分析成一个个索引词。
	   3.文本字段需事先进行分析
   3.分析(analysis)
     定义：分析是将文本转换为索引词的过程。分析的结果依赖于分词器。
     举例：Foo Bar ,FPP BAR , foo-bar 这三个词可能会被分析成相同的索引词foo bar。当使用Foo:Bar的时候，也能搜索出之前的结果。
   4.集群(cluster)
     定义:集群由一个或多个节点组成，提供索引和检索功能。
     注意:名称很重要
            1.一个集群由唯一的名称，默认为"Elasticsearch".
            2.当节点被设置为一个集群名称时，就会自动的加入集群，需要多个集群时，需要确保集群名称不重复。
            3.一个节点只能加入一个集群。
   5.节点(node)
     定义:一个节点是逻辑上独立的服务,是集群的一部。
          可以存储数据，可以参与集群的索引和搜索功能。
     注意:
           1.节点的名称是惟一的,可以启动时分配默认名称。也可以自定义
           2.名称很重要:网络中，ES集群通过名称来管理和通信。
           3.一个节点可以加入一个定的集群，默认情况下，会加入名为Elasticsearch的集群。-> 意味着，网络相通的情况下，启动多个节点会加入默认集群。
           4.一个节点就是一个集群。当启动一个节点时，默认会生成一个新的集群，只有一个节点。
   6.路由(routing)
     定义:决定存储到哪个主分片中。存储文档时，会通过散列值来选择唯一的主分片。散列值由文档的ID来生成。如果文档有指定的父文档，则从父文档的ID中生成。
   7.分片(shard)
     定义:分片是单个Lucene实例，是ES管理的较底层的功能。
     索引是指向主分片和副本分片的逻辑空间。
     注意:对于使用者，只需要指定分片的数量，其他的不需要做过多的事情。
          ES会自动管理集群中的所有分片，自动处理故障问题(把分片移动到不同的节点)
     索引:
         1.一个索引可以存储很大的数据，可以超过一个节点的物理存储限制(十亿个文档占用磁盘问1TB)
         2.解决索引过大的问题(一个节点查询缓慢，一个节点无法存储这么多数据)->ES把索引分解为多个分片。
         3.每个分片是一个全新的，独立的单元，可以托管在集群中的任何一个节点。
    8.主分片(primary shard)
      定义:存储文档首先存储的地方，然后复制到不同的副本中。
      注意:默认一个索引有5个主分片，可以事先制定分片的数量，当分片数量建立后，分片数量不能修改。
    9.副分片(replica shard):
      定义:每个主分片有零个或多个副本。副本主要是主分片的复制。
      目的:
           1.增加高可以性:当主分片失败时，可以从副本分片中选择一个作为主分片。
           2.提高性能    :查询的时候，可以到主分片或者副分片中查询，默认是一个主分片配一个副分片，副分片的数量可以动态添加。副分片必须部署在不同的节点上。
       分片的两个原因:
           1.允许水平分割扩展。
           2.允许分配和并行操作(多个节点上)从而提高性能和吞吐量。
    10.复制(replica)
       作用:
           1.提高了高可用性:当节点失败时不受影响。注意复制的分片不会存储在同一个节点
           2.允许扩展搜索量，提高并发量 -> 搜索可以在所有的副本上操作
        默认情况下:每个索引分配5个分片和一个副本，意味着将拥有5个主要分片和副分片。
    11.索引(index)
        定义:是具有相同结构的文档集合。
        注意:索引的名字都是小写，通过这个名字来执行索引，搜索，更新，删除操作。
        举例:  可以有一个客户信息的索引，可以有一个产品目录的索引...
    12.类型(type)
        定义:类型是索引的逻辑分区。类型被定义为一组具有公共字段的文档。
        举例:一个博客平台的所有数据存储到一个索引中，可以定义一个用户数据的类型，和一个博客数据的类型。
    13.文档(document)
        定义:文档是存储在ES中的一个JSON字符串。
             类似关系数据库中的一行数据，
             每个文档都有一个类型和一一个ID
             原始的JSON文档在_source的字段中
    14.映射(mapping)
       定义:映射类似数据库中的表结构，每一个索引都有一个映射，
            映射定义了索引中的每一个字段类型
            映射可以被事先定义或者第一次存储时字段识别。
    15.字段(field)
       定义:文档中包含0个或多个字段
            字段可以是简单的值(字符串，日期，整数)也可以是数组或对象的嵌套结构。
            字段类似数据库中的列。每个字段都对应一个类型
    16.来源字段(source field)
       默认情况下，原文被存储在_source字段中，查询的时候也是返回这个值。
       这个允许你可以从搜索结果中访问原始对象。
    17.主键(ID)
       ID是一个文件的唯一标识，如果存库时没有提供ID，就会自动生成ID，
       文档的index/type/id必须是唯一的   
            


   
