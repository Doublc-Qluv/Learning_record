---
信息量和熵(第2章) 
信源编码(第3章) 
信道及其容量(第4章) 
信道编码定理(第5章) 
线性分组码(第6章)
---
# 信息论的对象和方法
## 信息基本概念
- 广义信息: 情报、知识、消息
- 技术术语: 计算机处理中的数据、文字
- 科学名词: 统计数学、通信技术
  - 用严格的数学公式定义的科学名词，它与 内容无关，而且不随信息具体表现形式的 变化而变化，因而也独立于形式。
  - 是事物运动状态或存在方式不确定性的描述
<table>
    <tr>
        <td rowspan="2">输入消息</td> 
        <td rowspan="2">码字输出</td> 
        <td rowspan="2">消息先验概率</td> 
        <td colspan="3">消息后验概率</td>
   </tr>
        <td>收到0</td> 
        <td>收到01</td> 
        <td>收到011</td> 
    <tr>
        <td>x1</td>
        <td>000</td>
        <td>1/8</td>
        <td>&#10004</td> 
        <td>&#10005</td>
        <td>&#10005</td>
    </tr>
    <tr>
        <td>x2</td>
        <td>001</td>
        <td>1/8</td>
        <td>&#10004</td> 
        <td>&#10005</td>
        <td>&#10005</td>
    </tr>
    <tr>
        <td>x3</td>
        <td>010</td>
        <td>1/8</td>
        <td>&#10004</td> 
        <td>&#10004</td>
        <td>&#10005</td>
    </tr>
    <tr>
        <td>x4</td>
        <td>011</td>
        <td>1/8</td>
        <td>&#10004</td> 
        <td>&#10004</td>
        <td>&#10004</td>
    </tr>
    <tr>
        <td>x5</td>
        <td>100</td>
        <td>1/8</td>
        <td>&#10005</td> 
        <td>&#10005</td>
        <td>&#10005</td>
    </tr>
    <tr>
        <td>x6</td>
        <td>101</td>
        <td>1/8</td>
        <td>&#10005</td> 
        <td>&#10005</td>
        <td>&#10005</td>
    </tr>
    <tr>
        <td>x7</td>
        <td>110</td>
        <td>1/8</td>
        <td>&#10005</td> 
        <td>&#10005</td>
        <td>&#10005</td>
    </tr>
    <tr>
        <td>x8</td>
        <td>111</td>
        <td>1/8</td>
        <td>&#10005</td> 
        <td>&#10005</td>
        <td>&#10005</td>
    </tr>
</table>

- 对比
  - 信息：
    - 事物运动状态或存在方式不确定性的描述
  - 消息：
    - 包含所有信息的语言、文字和图像等
  - 信号
    - 是消息的物理体现
- Shannon信息定义

```mermaid
graph LR
    B(信道)-->C(信宿)
    subgraph 
        A(信源)-->B
    end
    D(噪声或干扰)-->B
```

$$不知、不确定\longrightarrow消除或部分消除不知、不确定$$

- 信息的特征
  - 不确定性，接收者在收到信息之前，对它的 内容是不知道的;
  - 信息能使认识主体对某一事物的未知性或不 确定性减少;
  - 信息可以产生，也可以消失，同时信息可以 被携带、贮存及处理;
  - 信息是可以量度的

事物出现某状态不确定性的大小，与该状态出现
的概率大小有关

- 概率空间

$$
\left[
\begin{matrix}
   X \\ P
\end{matrix}
\right]
=\left[
\begin{matrix}
   x_1 & x_2 & \cdots & x_n\\ 
   p(x_1) & p(x_2) & \cdots & p(x_n)
\end{matrix}
\right]
$$
  - 样本空间
    - 信源所有可能发送的消息符号
  - 先验概率$p(x_i)$
    - 选择符号$x_i$作为发送消息的概率
  - 不确定性大小：$f(p(x_i))$

- 信息定义
不确定性大小$ f ( p(x)) $应该满足以下3个条件
  - $f(1) = 0$
  - $f(p(x))是单调减函数$
  - 独立可加性:
    $$f(p(x)p(y))= f(p(x))+ f(p(y))$$
  - 自信息
  $$I(x_i)=\log\frac{1}{P(x_i)}$$
    - 先验概率$p(x_i)$：选择符号$x_i$作为发送消息的概率
  - 条件自信息
  $$I(x_i|y_i)=\log\frac{1}{p(x_i|y_i)}$$    
  - 后验概率$p(x_i|y_i)$：接收端收到消息yj后而发送端发的是$y_i$的概率
- 香农定义的信息的优缺点
  - 优点
    - 有明确的数学模型和定量计算公式
    - 与日常用语中的信息含意一致
    - 排除了对信息一词某些主观上的含意
  - 局限性
    - 没有考虑收信者的主观特性和主观意义
    - 定义的出发点假定事物状态可以用一个概率模型来描述
## 信息论研究的对象、目的和内容
- 目的
  - 寻找信息传输过程中的共同规律，以提
高信息传输的**可靠性**、**有效性**、**保密性**
和**认证性**，使达到信息传输系统最优化
- 信息论研究的内容
  - 狭义信息论(香农基本理论)
    - 主要研究信息的测度、信道容量以及信源和信道编码理论等问题。
  - 一般信息论
    - 除香农信息论，还包括噪声理论、信号滤波和预测、统计检测和估计等。
  - 广义信息论
    - 不仅包括上述两方面内容，而且包括所有与信息有 关的自然和社会领域，如模式识别、心理学等

# 离散信源的数学模型及其信息测度
## 信源及其分类
- 信源的数学描述
在通信系统中收信者在未收到消息以前对信 源发出什么消息是不确定的,是随机的，所以可用**随机变量**、**随机序列或随机过程**来描述信源输出的消息,或者说用一个样本空间及其概率测度—**概率空间**来描述信源。
- 信源的分类
不同的信源输出的消息的**随机性质**不同，可以根据消息的不同的随机性质来对信源进行分类:
  - 按照某时刻信源输出消息的取值集合的离散性和连续 性, 信源可分为**离散信源**和**连续信源**;
  - 按照信源输出消息的所对应的随机序列中随机变量前 后之间有无依赖关系,信源可分为**无记忆信源**和**有记忆信源**;
  - 按照信源输出消息的所对应的随机序列的平稳性, 信源可分为**平稳信源**和**非平稳信源**;
- 简单信源
  - 离散信源
  $$
  \left[
  \begin{matrix}
    X \\ P(x)
  \end{matrix}
  \right]
  =\left[
  \begin{matrix}
    a_1 & a_2 & \cdots & a_q\\ 
    p(a_1) & p(a_2) & \cdots & p(a_q)
  \end{matrix}
  \right]
  $$
  且满足：
  $$o\le P(a_i)\le 1
  $$
  $$\sum_{i=1}^{q}P(a_i)=1$$
  >注解:X代表随机变量，指的是信源整体;ai代表随机事件的某一结果或信源的某个元素。

  - 连续信源
  $$
  \left[
  \begin{matrix}
    X \\ p(x)
  \end{matrix}
  \right]
  =\left[
  \begin{matrix}
    (a,b)\\ 
    p(x)
  \end{matrix}
  \right]
  $$
  并满足:
  $$\int_{a}^{b}p(x)dx=1$$
  >注:这里的p(x)代 表概率密度函数。
- 离散无记忆信源
离散信源在**不同时刻发出的符号之间是无依赖的**，彼此统计独立的。
  $$
  \left[
  \begin{matrix}
    X \\ P(x)
  \end{matrix}
  \right]
  =\left[
  \begin{matrix}
    a_1 & a_2 & \cdots & a_q\\ 
    p(a_1) & p(a_2) & \cdots & p(a_q)
  \end{matrix}
  \right]
  $$
  其中：
  $$\alpha_i\in\{\alpha_1,\alpha_2,\cdots,\alpha_q\} 且\sum_{i=1}^{q}P(\alpha_i)=1$$
- 离散无记忆信源 N次扩展信源
  由离散无记忆信源输出N长的随机序列构成的信源
  $$
  \left[
  \begin{matrix}
    X^N \\ P(\alpha_i)
  \end{matrix}
  \right]
  =\left[
  \begin{matrix}
    a_1 & a_2 & \cdots & a_{q^{N}}\\ 
    p(a_1) & p(a_2) & \cdots & p(a_{q^{N}})
  \end{matrix}
  \right]
  $$
   其中：
  $$\alpha_i\in\{\alpha_1,\alpha_2,\cdots,\alpha_q\} (a_{i_1},a_{i_2},\cdots a_{i_N}=1,2,\cdots q)$$
  $$
  并满足P\left(\alpha_{i}\right)=P\left(a_{i_{1}} a_{i_{2}} \cdots a_{i_{N}}\right)=\prod_{i_{k}=1}^{N} P\left(a_{i_{k}}\right)$$
  $$
  \sum_{i=1}^{q^{N}} P\left(\alpha_{i}\right)=\sum_{i=1}^{q^{N}} \prod_{i_{k}=1}^{N} P\left(a_{i_{k}}\right)=1
  $$

  掷两枚硬币：
  $$
  \left[
  \begin{matrix}
    X \\ P
  \end{matrix}
  \right]
  =\left[
  \begin{matrix}
    0 & 1 \\ 
    1/2 & 1/2 
  \end{matrix}
  \right]
  $$
  $$
  \left[
  \begin{matrix}
    X \\ P
  \end{matrix}
  \right]
  =\left[
  \begin{matrix}
    00 & 01 & 10 & 11\\ 
    1/4 & 1/4 & 1/4 & 1/4
  \end{matrix}
  \right]
  $$

  - 其他几种常见的信源
    - 有记忆信源：输出的随机序列X中各随机变量之间有依赖关系，但记忆长度有限。
    - 马尔可夫信源实例
    ```mermaid
    graph LR
        A(X_r)-->B((+))
        B-->C(Y_r)
        B-->D[T]
        D-->E(Y_r-1)
        E-->B
    ```
    $Y_r是一个马氏链,Y_r确定后,Y_{r+1}概率分布只与Yr有关, 与Y_{r-1} 、Y_{r-2} \cdots等无关$
    - 有记忆信源:输出的随机序列X中各随机变量之间有依赖关系，但记忆长度有限。
    - m阶马尔可夫信源:信源每次发出的符号只与前m个符号有关，与更前面的符号无关。
    - 随机波形信源:信源输出的消息在时间上和取值上都是连续的。
## 离散信息熵
- 信息量应满足的条件

  - $I(x_i)= f[p(x_i)]$应该满足以下条件: 
  1. 是先验概率 $p(x_i )$的单调递减函数
  2. p(xi)=1时，$f[p(x_i)]=0 p(x_i ) = 0 时，f [ p(x_i )] = \infty$
  3. 两个独立事件的联合信息量等于各自信息量之和。
- 自信息量定义
  设单符号离散信源的信源空间为:
  $$
  \left[ \begin{array}{l}{X} \\ 
  {P(x)}\end{array}\right]
  =
  \left[ \begin{array}{l}{x_{1}},  &{x_{2}}, &\cdots  &{x_{n}} \\ 
  {p\left(x_{1}\right)},& p\left(x_{2}\right), &\cdots &{p\left(x_{n}\right)}\end{array}\right]
  $$
  $$
  且满足：0 \leq p\left(x_{i}\right) \leq 1, \sum_{i=1}^{n} p\left(x_{i}\right)=1
  $$
  如果知道事件$x_i$已发生，则该事件所含有的信息量称
  为<font color=red>自信息</font>，定义为:
  $$
  I\left(x_{i}\right)=\log \frac{1}{p\left(x_{i}\right)}=-\log p\left(x_{i}\right)
  $$
  - I(xi)含义
    - 当事件xi发生以前,表示事件xi 发生的不确定性
    - 当事件xi发生以后,表示事件xi所含有的信息量
  - I(xi)单位
    - 常用对数底是2,信息量的单位为比特(bit); – 若取自然对数,则信息量的单位为奈特(nat);
  
  对数换底关系:
  $$\log _{a} X=\frac{\log _{b} X}{\log _{b} a}$$
  or
  $$\log _{b} X=\log _{a} X \cdot \log _{b} a$$
- 自信息的性质
  1. $I (x_i)$是非负值
  2. 当$p(x_i) = 1时，I(x_i) = 0$
  3. 当$p(x_i) = 0时，I(x_i) =∞$
  4. $I(x_i)$是先验概率$p(x_i)$的单调递减函数，即当$p(x_1)>p(x_2)时，I (x_1)<I (x_2) $
  5. 两个独立事件的联合信息量等于它们分别的信息量之和，即统计独立信源的信息量等于它们分别的信息量之和。
- 自信息量例题
  - 一个以等概率出现的二进制码元(0,1)所包含的 自信息量为:
  $$\mathbf{I}(\mathbf{0})=\mathbf{I}(\mathbf{1})=-\log _{2}(\mathbf{1} / \mathbf{2})=\log _{2} 2=\mathbf{1} \text { bit }$$
  - 二进制码元0,1,当符号概率为p(0)=1/4, p(1)=3/4, 则这两个符号的自信息量为:
  $$\begin{array}{l}{\mathbf{I}(0)=-\log _{2}(1 / 4)=\log _{2} 4=2 b i t} \\ {\mathbf{I}(1)=-\log _{2}(3 / 4)=0.4151 \text { bit }}\end{array}$$
- 联合自信息与条件自信息
  考虑两个随机事件，其联合概率空间为:
  $$
  \left[ \begin{array}{l}{X Y} \\ {P(X Y)}\end{array}\right]=\left\{\begin{array}{l}{x_{1} y_{1}, \cdots, x_{1} y_{m}, x_{2} y_{1}, \cdots, x_{2} y_{m}, \cdots, x_{n} y_{1}, \cdots x_{n} y_{m}} \\ {p\left(x_{1} y_{1}\right), \cdots p\left(x_{1} y_{m}\right), p\left(x_{2} y_{1}\right), \cdots, p\left(x_{n} y_{m}\right)}\end{array}\right\}
  $$
  $$
  0 \leq p\left(x_{i} y_{j}\right) \leq 1, \sum_{i=1}^{n} \sum_{j=1}^{m} p\left(x_{i} y_{j}\right)=1
  $$
  - <font color=red>联合自信息量</font>
  $$I\left(x_{i} y_{j}\right)=-\log p\left(x_{i} y_{j}\right)$$
  - 在事件yj出现的条件下，随机事件xi发生的<font color=red>条件自信息量</font>
- 联合自信息与条件自信息
  - <font color=blue>含义</font>
  - 联合自信息量和条件自信息量<font color=blue>性质</font>
  - 联合自信息量和条件自信息量<font color=blue>关系</font>
  $$
  \begin{aligned} I\left(x_{i} y_{j}\right) &=-\log _{2} p\left(x_{i} y_{j}\right)=-\log _{2} p\left(x_{i}\right) p\left(y_{j} / x_{i}\right)=I\left(x_{i}\right)+I\left(y_{j} / x_{i}\right) \\ &=-\log _{2} p\left(x_{i} y_{j}\right)=-\log _{2} p\left(y_{j}\right) p\left(x_{i} / y_{j}\right)=I\left(y_{j}\right)+I\left(x_{i} / y_{j}\right) \end{aligned}
  $$
    - 当X和Y独立时
    $$
    \begin{array}{c}{I\left(x_{i} y_{j}\right)=-\log _{2} p\left(x_{i} y_{j}\right)=-\log _{2} p\left(x_{i}\right) p\left(y_{j}\right)} \\
    =-\log _{2} p\left(x_{i}\right)-\log _{2} p\left(y_{j}\right)=I\left(x_{i}\right)+I\left(y_{j}\right)\end{array}
    $$
  - 信源熵定义
  信源各个离散消息的<font color=red>自信息量的数学期望</font>(即概率加权的统计平均值)为信源的平均信息量，称为信源的信息熵，也叫信源熵或香农熵，简称熵。
  $$
  H(X)=E\left[I\left(x_{i}\right)\right]=E\left[\log _{2} \frac{1}{p\left(x_{i}\right)}\right]=-\sum_{i=1}^{n} p\left(x_{i}\right) \log _{2} p\left(x_{i}\right)
  $$
    - 熵函数的自变量是X表示信源整体，实质上是离散无记忆信源平均不确定度的度量。<font color=blue>与自信息不同</font>,自信息表示某一消息所含有的信息量，它是一个随机变量, 不能用它来作为整个信源的信息测度。
  - 信源熵理解
    - 信源熵H(X)的两种物理含义
    - 信源输出后，每个离散消息所提供的平均信息量; 
    - 信源输出前，信源的平均不确定度;
      (反映了随机变量X的随机性)
    - 例如有两个信源，其概率空间分别为:
    $$
    \left[ \begin{array}{c}{X} \\ {p(x)}\end{array}\right]=\left[ \begin{array}{cc}{x_{1},} & {x_{2}} \\ {0.99} & {0.01}\end{array}\right] \left[ \begin{array}{c}{Y} \\ {p(y)}\end{array}\right]=\left[ \begin{array}{cc}{y_{1},} & {y_{2}} \\ {0.5} & {0.5}\end{array}\right]
    $$
    $$
    \begin{array}{l}{H(X)=-0.99 \log 0.99-0.01 \log 0.01=0.08 b i t} \\ {H(Y)=-0.5 \log 0.5-0.5 \log 0.5=1 b i t}\end{array}
    $$
    因为$H(Y) >H(X)$所以信源$Y$比信源$X$的平均不确定性要大。
  - 信源熵例题
    - 电视屏上约有 $500 × 600= 3×10^5$个格点，按每格点有10个不同的灰度等级考虑，则共能组成$10^{3×10^5}$个 不同的画面。按等概率$1/10^{3×10^5}$计算，平均每个画面可提供的信息量为:
      解：
      $$
      \begin{aligned} H(X) 
      &=-\sum_{i=1}^{n} p\left(x_{i}\right) \log _{2} p\left(x_{i}\right)\\
      &=-\log _{2} 1 / 10^{3 \times 10^{5}} \\ 
      &=9.97 \times 10^{5} \text { bit } \end{aligned}
      $$
    - 有一篇千字文章，假定每字可从万字表中任选，则共 有不同的千字文$N=10000^1000=10^4000 篇$
    仍按等概率$1/100001000$计算，平均每篇千字文可提供的信息量为:
    $$
    \begin{aligned} \mathbf{H}(\mathbf{X}) &=\log _{2} N \\ & \approx 1.3 \times 10^{4} \text { bit } \end{aligned}
    $$
    - 该信源X输出符号只有两个,设为0和1输出符号发生 的概率分别为p和q，p+q=l，即信源的概率空间为:
    $$
    \left( \begin{array}{c}{X} \\ {P}\end{array}\right)=\left( \begin{array}{ll}{0} & {1} \\ {p} & {q}\end{array}\right)
    $$
    则二元信源熵为:
    $$
    \begin{aligned} \mathbf{H}(\mathbf{X}) &=-p \log p-q \log q \\ &=-p \log p-(1-p) \log (1-p) \\ &=\mathbf{H}(p) \end{aligned}
    $$
    分析：
    $$
    H(p) = -plogp- (1- p)log(1-p)
    $$