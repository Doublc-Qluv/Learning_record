[TOC]
#What is ML
- 最重要的是对象：
    +  任务Task,T，一个或者多个
    +  经验Experience,E
    +  性能Performance,P
- 学习 = 在某项任务上总结与积攒的经验
    - 在任务T上提升
    - 用P作为评估标准
    - 基于经验E

##*例子*
- 中国象棋
    - 任务T：下中国象棋
    - 性能目标P：比赛中击败对手的百分比
    - 训练经验E：和自己进行对弈，或者看着棋谱学习
####关系：机器学习是人工智能的一个分支

#机器学习分类

- 监督学习：分类预测和回归分析
- 无监督学习：聚类和关联规则
- 强化学习：Q-learning和时间差学习（动态系统和机器人控制）



#1.1 监督学习
- 训练集
    + 特征1-n --目标 |
    + 特征1-n --目标 | -->监督学习算法
    + 特征1-n --目标 |
- 测试集
    + 特征1-n |                   |目标
    + 特征1-n | -->监督学习算法-->|目标
    + 特征1-n |                   |目标

#1.2 无监督学习
- 训练集
    + 特征1-n |
    + 特征1-n | -->监督学习算法
    + 特征1-n |

#1.3增强式学习
- 行为认知启发下的机器学习分支
- Agent感知环境，做出动作，根据奖惩状态/feedback做出调整和选择
    -进行不断地学习

python scikit-learn

#回顾
##2.1高等数学
- 微积分：两边夹定理/夹逼定理（）
- 导数：曲线的斜率，是曲线变化的快慢的反应（常用于代价函数的最小化求解）
- 二阶导数：斜率变化的快慢的反应
- Taylor公式
    - 应用：数值计算初等函数的计算（在原点展开）
$$
sinx = x-\frac{x^{3}}{3!}+\frac{x^{5}}{5!}-\frac{x^{7}}{7!}+\frac{x^{9}}{9!}+…+(-1)s^{m-1}\frac{x^{2m-1}}{(2m-1)!}+R_2m
$$
$$
e^{x}=1+x+\frac{x^{2}}{2!}+\frac{x^{3}}{3!}+…+\frac{x^{n}}{n!}+R_n
$$
    - 应用：考察基尼指数的图像、熵、分类误差率三者之间的关系【决策树】
        - 将f(x)=-lnx在x=1处展开，忽略高阶无穷小，得到
        $$f(x)\approx1-x$$
    则
    $$H(X)=-\sum_{k=1}^{K} p_{k}lnp_k\approx\sum_{k=1}^{K}p_{k}(1-lnp_k)$$
- Maclaurin公式(好吧这就是上面的再原点展开)
- 1:17:57
- **方向导数**
$$\frac{\partial f}{\partial l}=\frac{\partial f}{\partial x}cos\varphi+\frac{\partial f}{\partial y}sin\varphi
$$
    - 其中，$\varphi$ 为x轴转到方向L的转角。
- **梯度**
    - 设函数z=f(x,y)在平面区域D内具有一阶连续偏导数，则对于每一个点P(x,y)$\in$D，向量
$$(\frac{\partial f}{\partial x},\frac{\partial f}{\partial y})$$
    - 为函数z=f(x,y)在点P的梯度，记作$grad f(x,y)$
- 凸函数
# 2.2概率论
- 条件概率：
    $$P(A|B)=\frac{P(AB)}{P(B)}$$
- 全概率公式：
    $$P(A)=\sum_{i}P(A|B_{i})P(B_i)$$
-贝叶斯公式：
    $$P(B_{i}|A)=\frac{P(A|B_{i})}{\sum_{j}P(A|B_{j})P(B_j)}=P(A)$$
    *贝叶斯公式的作用：原本知道的是P(A|B)从而推出了P(B|A)*
- +
- 两点分布（0—1分布）
    -分布律

| X | 1 | 0 |
|---|--| --|
| p | p | 1-p |

 $$E(X)=1*p+0*q=p$$
$$D(X)=E(X^2)-[E(X)]^2$$
    $$=1^2*p+0^2*(1-p)-p^2=pq$$

- 二项分布（Bernoulli distribution）
    - 设随机变量X服从参数为n,p的二项分布，
    - 设$X_i$为第$i$次试验中事件$A$发生的次数，$i=1,2,…,n$

则$$X=\sum_{i=1}^{n}X_i$$
显然$X_i$相互独立服从参数为$p$的0-1分布，
$$所以E(X)=\sum_{i=1}^{n}E(X_i)=np$$
$$D(X)=\sum_{i=1}^{n}D(X_i)=np(1-p)$$

- 泊松分布(Possion distribution)
    - 将Taylor展式变型
$$e^{x}=1+x+\frac{x^{2}}{2!}+\frac{x^{3}}{3!}+…+\frac{x^{k}}{k!}+R_k$$
$$1=1*e^{-x}+x*e^{-x}+\frac{x^{2}}{2!}*e^{-x}+\frac{x^{3}}{3!}*e^{-x}+…+\frac{x^{k}}{k!}*e^{-x}+R_k*e^{-x}$$
$$\frac{x^{k}}{k!}*e^{-x}\longrightarrow\frac{{\lambda}^{k}}{k!}*e^{-\lambda}$$
设$X \thicksim\pi(\lambda)$且分布律为
$$P\{X=k\}=\frac{{\lambda}^{k}}{k!}e^{-\lambda}，k=0,1,2,…, \lambda>0$$
$$=\lambda e^{-\lambda}·e^{\lambda}$$
    - 泊松分布的实际应用（当实际实例中的一个随机事件，以固定的平均瞬时速度$\lambda$(或称密度)随机且独立地出现时，那么这个时间在单位时间（面积或者体积）内出现的次数或个数就近似服从泊松分布$P(\lambda)$）
        - 某一服务设施在一定时间内达到的人数
        - 电话交换机接到呼叫的次数
        - 汽车站台的等候人数
        - 机器出现的故障数
        - 自然灾害发生的次数
        - 一块产品上的缺陷数
        - 显微镜下单位分区内的细菌分部数
        - 某放射性物质单位时间发射出的粒子数
        - …………
    - 泊松分布的期望和方差都等于参数  **$\lambda$**

- 均匀分布
    - 设$X \thicksim U(a,b)$,其概率密度为
    $$f(x)=\begin{cases} 
        \frac{1}{b-a}, & a<x<b,\\
        \\
        0, & other \ values 
    \end{cases}$$
    $$则有E(X)=\int_{-\infty}^{\infty}xf(x)dx=\int_{a}^{b}\frac{1}{b-a}xdx=\frac{1}{2}(a+b)$$
    $$D(X)=\frac{(b-a)^2}{12}$$
- 指数分布
    + 设随机变量$X$服从指数分布，其概率密度为
    $$f(x)=\begin{cases}
        \frac{1}{\theta}e^(-x/\theta),&x>0\\
        \\&&其中\theta>0\\
        0,&x\leqslant0
        \end{cases}
    $$
    - 指数函数的一个重要的特征是无记忆性（遗失记忆性，Memoryless Property）
        + 如果一个随机变量呈指数分布，当$s,t\geqslant0时有$：
        $$P(x>s+t|x>s)=P(x>t)$$
        + 即，如果x是某个电器元件的寿命，已知元件使用了s小时，则共使用至少s+t小时的条件概率，与从未使用开始至少使用t小时的概率相等。
- 正态分布
    - 设$X \thicksim N(\mu , \sigma^{2})$，其概率密度为
    $$f(x)=\frac{1}{\sqrt{2\pi}\sigma}e^{-\frac{(x-\mu)^2}{2\sigma^2}},\sigma>0,$$
    则有$$E(X)=\mu$$
    $$D(X)=\sigma^2$$

##特殊函数
- Sigmoid函数
$$f(x)=\frac{1}{1+e^{-x}}$$
- Logistic函数的导数
$$f'(x)=f(x)·(1-f(x))$$

#3.1概率统计
- 期望
    - 离散型$$E(X)=\sum_{i}x_i p_i$$
    -连续型$$E(X)=\int_{-\infty}^{\infty}xf(x)dx$$
- 方差
    - $$Var(X)=E\{[X-E(X)]^2 \}=E(X^2)-E^2(X)$$
- 协方差
    - $$Cov(X,Y)=E\{[X-E(X)][Y-E(Y)]\}$$
    - 协方差的上界
        - $$若Var(X)=\sigma_1^2 , Var(Y)=\sigma_2^2 ,$$
        - $$则|Cov(X,Y)|\leqslant\sigma_1\sigma_2$$
- Pearson相关系数
    - $$\rho_{XY}=\frac{Cov(X,Y)}{\sqrt{Var(X)Var(Y)}}$$
- 协方差矩阵(是一个对称阵)[可以基于协方差矩阵来筛选数据]
    - $$C=\left(\begin{array}{cccc}
        C_{11} & C_{12} & … & C_{1n}\\ 
        C_{21} & C_{22} & … & C_{2n}\\ 
        \vdots & \vdots &   &\vdots\\
        C_{n1} & C_{n2} & … & C_{nn}\\
    \end{array}\right)$$
    - 将随机向量$X_i$写成向量，将X的列分别去均值后得到矩阵$\widetilde{X}$
    则协方差矩阵为$$C=\frac{1}{n}(\widetilde{X}^T·\widetilde{X})$$
- 矩
    - 对于随机变量X，X的k阶原点矩为$$E(X^k)$$
    - X的中心距为$$E\{X-E(X)^k\}$$
##总结
- 期望（一阶原点矩）
- 方差（标准差，二阶中心距）
- 变异系数（Coefficient of Variation）
    + 标准差与均值的比值称为变异系数，记作$C·V$
- 偏度Skewness（三阶）
- 峰度Kurtosis（四阶）
##重要定理与不等式
- Jensen不等式
    + 若函数f的定义域$domf$为凸集，且满足$\forall x,y\in dom f,0\leqslant\theta\leqslant1,有$
    $$f(\theta x+(1-\theta)y\leqslant\theta f(x)+(1-\theta)f(y)$$
    + $f(E·x)\leqslant E·f(x)$
- 切比雪夫不等式
    + 设随机变量$X$的期望$\mu$,方差为$\sigma^2$,对于任意正数$\varepsilon$,有：
    $$P\{|X-\mu|\geqslant\varepsilon\}\leqslant\frac{\sigma^2}{\varepsilon^2}$$
    X的取值基本上集中在期望$\mu$附近
- 大数定理
    - 辛钦大数定理    
        - 设随机变量$X_1,X_2…X_n…$相互独立，并且具有相同的期望$\mu$和方差$\sigma^2$.作前n个随机变量的平均$$Y_n=\frac{1}{n} \sum_{i=1}^{n} X_i$$, 则对于任意正数$\varepsilon$,有
    $$\lim_{n \to+\infty} P\{|Y_n-\mu|<\varepsilon\}=1$$
    - 伯努利大数定理（由上推出
        - 一次实验中的事件A发生的概率为p;重复n次毒理试验中，事件A发生了$n_A$次，则p、n、$n_A$的关系满足：
        $对于任意正数\varepsilon,$
        $$\lim_{n \to+\infty} P\{|\frac{n_A}{n}-p|<\varepsilon\}=1$$
        $$或\lim_{n \to+\infty} P\{|\frac{n_A}{n}-p|\geqslant\varepsilon\}=0$$
        - 应用：
            - 正态分布的参数估计
            - 朴素贝叶斯做垃圾邮件分类
            - 隐马尔可夫模型有监督参数学习
- 中心极限定理
    - 独立同分布的中心极限定理
        - 设随机变量$X_1,X_2…X_n…$相互独立，服从统一分布，且具有相同的期望$\mu$和方差$\sigma^2$,则对基变量
        $$Y_n=\frac{\sum\limits_{i=1}^{n}X_i-n\mu}{\sqrt{n}\sigma}$$
        的分布收敛到标准正态分布
        - 容易得到：$\sum\limits_{i=1}^{n}X_i$收敛到正态分布$N(n\mu,n\sigma^2)$
#3.2用样本估计参数
- 矩估计
    - 样本的矩
        + k阶样本原点矩$$A_k=\frac{1}{n}\sum_{i=1}^{n}{X}_i^k$$
        + k阶样本中心距$$M_k=\frac{1}{n}\sum_{i=1}^{n}(X_i-\overline{X})^k$$
    - 矩估计
        + 设总体的均值为$\mu$，方差$\sigma^2$,($\mu和\sigma$未知，待求)则有原点矩表达式
        $$f(x)=
        \begin{cases}
        E(X)=\mu\\
        \\
        E(X^2)=Var(X)+[E(X)]^2=\sigma^2+\mu^2
        \end{cases}
        $$
        + 根据该总体的一组样本，求得原点矩：
        $$f(x)=
        \begin{cases}
        A_1=\frac{1}{n}\sum_{i=1}^{n}X_i\\
        \\
        A_2=\frac{1}{n}\sum_{i=1}^{n}X_i^2
        \end{cases}
        $$
    - 矩估计的结论
        +  根据各自的中心矩相等计算得到：
        $$\begin{cases}
        \mu = \overline{X}\\
        \\
        \sigma^2=\frac{1}{n}\sum_{i=1}^{n}X_i^2-\overline{X}^2=\frac{1}{n}\sum_{i=1}^{n}(x_i-\overline{X})^2
        \end{cases}
        $$
        + 由于是根据样本求得的估计结果，根据记号习惯，写作：
        $$
        \begin{cases}
        \hat{\mu}=\overline{X}\\
        \\
        \hat{\sigma}^2=\frac{1}{n}\sum_{i=1}^{n}(X_i-\overline{X})^2
        \end{cases}
        $$
    - 正态分布的矩估计
        + 在正态分布的总体中采样得到n个样本：$X_1,X_2…X_n$,估计该总体的均值和方差。
        + 直接运用结论
        $$
        \begin{cases}
        \hat{\mu}=\overline{X}\\
        \\
        \hat{\sigma}^2=\frac{1}{n}\sum_{i=1}^{n}(X_i-\overline{X})^2
        \end{cases}
        $$
    - 均匀分布的矩估计
        + 设$X_1,X_2,…,X_n$为定义在[a,b]上的均匀分布的总体采样的得到的样本，求a，b
        + 解:<br>
            均匀分布的均值和方差为
            $$
            \begin{cases}
            E(X)=\frac{a+b}{2}\\
            \\
            Var(X)=\frac{(b-a)^2}{12}
            \end{cases}
            $$
          	矩估计要求满足        
          	$$
        	\begin{cases}
        	\hat{\mu}=\overline{X}\\
        	\\
        	\hat{\sigma}^2=\frac{1}{n}\sum_{i=1}^{n}(X_i-\overline{X})^2
        	\end{cases}
        	$$
        	从而：
        	$$
            \begin{cases}
            \frac{a+b}{2}=\hat{\mu}\\
            \\ 
            \frac{(b-a)^2}{12}=\hat{\sigma}
            \end{cases}
            \longrightarrow
            \begin{cases}
            a=\hat{\mu}-\sqrt{3}\hat{\sigma}\\
            \\ 
            b=\hat{\mu}+\sqrt{3}\hat{\sigma}
            \end{cases}
            $$
- 极大似然估计
	- 设总体分布为$f(x,\theta),X_1,X_2…X_n$为该总体采样得到的样本。因为$X_1,X_2…X_n$独立同分布，于是，他们的联合密度函数为：
	$$
	L(x_1,x_2,…,x_n;\theta_1,\theta_2,…,\theta_k)=\prod_{i=1}^{n}f(x_i;\theta_1,\theta_2,…,\theta_k)
	$$
	- $这里，\theta被看做固定但未知的参数；反过来，因为样本已经存在，可以看成x_1,x_2,…,x_n是固定的,L(x,\theta)是关于\theta的函数，即似然函数。$
	- $求参数\theta的值，使得似然函数取极大值，这种方法就要是极大然估计。$
	- 在实践中，由于求导数的需要，往往将似然函数去对数，得到对数似然函数；若对数似然函数可导，可通过求导的方式，解下列方程组，得到驻点，然后分析改驻点是极大值点
	$$
	logL(x_1,x_2,…,x_n;\theta_1,\theta_2,…,\theta_k)=\sum_{i=1}^{n}logf(x_i;\theta_1,\theta_2,…,\theta_k)
	$$
	$$\frac{\partial L(\theta)}{\partial\theta_i}=0,\ \ i=1,2,…k$$
- 按照MLE的过程分析
	+ 高斯分布的概率函数：
	$$f(x)=\frac{1}{\sqrt{2\pi}\sigma}e^{-\frac{(x_i-\mu)^2}{2\sigma^2}}$$
	+ $将X_i的样本值x_i带入，得到：$
	$$L(x)=\prod_{i=1}^{n}\frac{1}{\sqrt{2\pi}\sigma}e^{-\frac{(x_i -\mu)^2}{2\sigma^2}}$$
	+ 化简对数似然函数
	$$\begin{array}{ll}
	l(x)&=&log\prod_{i=1}^{n}\frac{1}{\sqrt{2\pi}\sigma}e^{-\frac{(x_i -\mu)^2}{2\sigma^2}}\\
    &=&-\frac{n}{2}log(2\pi\sigma^2)-\frac{1}{2\sigma^2}\sum_{i}(x_i-\mu)^2
	\end{array}$$
	+ $将目标函数对参数\mu,\sigma分别求偏导，很容易得到\mu,\sigma的式子：$
	$$\mu=\frac{1}{n}\sum_{i}x_i$$
	$$\sigma^2=\frac{1}{n}\sum_{i}(x_i-\mu)^2$$
	+ 样本的均值即高斯分布的均值，样本的伪方差即高斯分布的方差。
		* 注：经典意义下的方差，分母是n-1；在似然估计的方法中，求得方差是n
	+ 该结论将在EM(期望最大化算法)、GMM搞高斯混合模型中将继续使用。
	
#4.1线性代数
- 部分数学符号表
	+ $\mathbb{R}^n$ n维实空间
	+ $\mathbb{R}^{m\times n}$ $m\times n$的实矩阵集合
	+ $T$ 转置
	+ $det(A)$ 行列式
	+ $C(A)$ 列空间
	+ $N(A)$ 零空间
	+ $A^{-1}$ 逆
	+ $diag(a)$ 将向量转化为对角矩阵
	+ $Tr$ 迹(trace)(矩阵对角元素求和)
	+ $rank$ 秩

$$
\begin{bmatrix}
2 &-1 \\ 
1 &1 
\end{bmatrix}
\begin{bmatrix}
x\\ 
y
\end{bmatrix}
=\begin{bmatrix}
1\\ 
5
\end{bmatrix}
$$


- Ax = b
	+ 行视图——凸优化中的超平面
		* $a^T X$=b
$$\begin{cases}2x-y&=&1 \\ x+y&=&5\end{cases}$$
		* 线性代数里的维数与物理的维数不一致
	+ 列式图——矩阵的线性组合
	
$$
x\begin{bmatrix}
2\\ 
1
\end{bmatrix}
+y\begin{bmatrix}
-1\\ 
1
\end{bmatrix}
=\begin{bmatrix}
1\\ 
5
\end{bmatrix}
$$

- 线性相关和线性无关
	+ $线性相关(Linear\ dependence)：矢量集[a_1,…,a_n]是线性相关的， 如果\sum\limits_{k=1}^{n}c_ka_k=0,当且仅当c_1,c_2,…,c_n\neq0。即，至少有一个向量，a_l可以由其它向量线性表出：$
	$$a_l=-\frac{1}{c_l}\sum_{k=1,k\neq1}^{n}c_ka_k$$
	+ $线性无关(Linear\ independence):矢量集[a_1,…,a_n]是线性无关的，如果\sum\limits_{k=1}^{n}c_ka_k=0,当且仅当c_1,c_2,…,c_n=0。$
	+ $定义A=[a_1,…,a_n],则Ax=0只有x=0.没有其他的线性组合能产生0.此时矩阵A可逆。$
   
####要不下一个内容

 
# 5.1 凸优化

## 问：为什么要做优化？
    考虑现实的情况，不可能有完全拟合的数据，或者无法接的答案，所以出现了近似解。
