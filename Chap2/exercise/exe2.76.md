# 显式分派

- 这种方式无论是新增操作还是新增类型都是不好的，都需要修改所有的代码。

# 数据导向

- 是一种基于类型进行分派的组织方式，其中让每个操作管理自己的分派。

- 从效果上来看，这种方式是将操作-类型表格按行分解，每个通用型过程表示表格中的一行。采用一批“智能操作”去基于数据类型进行分派。

- 如果新增类型，只需再增加一个程序包即可，不需要修改源代码。

- 如果新增操作，同样也不需要修改之前的代码，只需要增加相应的分发函数即可。

数据导向可以很方便地通过包机制增加新类型和新的通用操作，因此无论是增加新类型还是增加新操作，这种策略都很适合。

# 消息传递（面向对象编程）

- 这种方式是将操作-类型表格按列分解，采用一批“智能数据对象”去基于操作名进行分派。

- 如果这样做就需要做出一种安排，将每一个数据对象表示为一个过程。它以操作的名字作为输入，能够去执行指定的操作。

- 如果新增类型，只需再增加一个分发过程，原有代码不需要修改。

- 如果新增操作，则需要修改每个分发过程，把新增的操作添加上。

消息传递将数据对象和数据对象所需的操作整合在一起，因此它可以很方便地增加新类型，但是这种策略不适合增加新操作，因为每次为某个数据对象增加新操作之后，这个数据对象已有的实例全部都要重新实例化才能使用新操作。