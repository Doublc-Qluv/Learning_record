## 第十五章
- TCP/IP
  - 中继器、集线器
  - 网桥、二层交换机
  - 路由器、三层交换机
  - 网关
- 虚拟局域网
  - 广播域
  - VLAN

# 网络层
- **网络层寻址**
  - IPV4地址
    - 点分十进制、二进制
    - ABCDE类地址
    - 0、10、110、1110、1111
    - 掩码
  - 分类寻址时有大量的地址被浪费
    - （无类寻址）
      - CIDR记法
  - IPV6
- IP协议
  - 数据的流向、路由表
  - IPV4的结构、格式！
- 传递
- 转发
  - 构建路由表
    - 最小生成树
- 路由选择
  - 路由选择协议
    - 域内
      - RIP（Distance vector
      - OSPF（Link state
    - 域间
      - BGP（Path vector
- 路由聚合
- 最长掩码匹配
- 划分子网后分组的转发举例

# 传输层
- 应用进程间的通信
- TCP
  - 面向字节流
  - 报文结构
  - 有缓存——作流量控制
  - 滑动窗口的指针的位置
  - 避免拥塞
    - 慢开始（慢启动）
    - 拥塞避免算法
    - 快重传
      - 当收到连续三个ACK就认为丢失然后进行重传
- UDP
# 应用层
- DNS
- FTP
- HTTP
- SMTP

# 物理层
- 概念
  - 波长
  - 相位
  - 速率限制
  - 奈奎斯特、香农
  - ……
# 



1 2 5 6 

# 概述
双工半全

- 网拓扑结构
- 协议
  - 语法语义
# 网络模型
- OSI的概念，作用
- TCP/IP
- 层次中哪些是点对点、哪些是端对端，
  - 点：物理层
  - 端：网络层、传输层（提供可靠的网络服务、流量|差错|拥塞控制）
  - 

# 物理层与介质
- 带宽计算
- 基带传输
- 比特率（数据传输速率）、波特率（信号传递速率）
- 奈奎斯特比特率（噪声xx数据传输最大速率）l

# 数字传输

# 编码方案
- 单极
- 极性的

*87

传输同步异步


# 模拟传输

*99

- PSK

…………

# 5 了解

# 23 
- 面向无连接的服务：UDP
- 面向连接的服务：TCP
- 可靠服务
- 不可靠服务

23.19、23.20

MSS：max segment size 最大分段长度 bit

CRC
# 25 DNS
25.3