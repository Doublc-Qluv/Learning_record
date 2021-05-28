[TOC]
##Cost Function：
$$J(\theta_0,\theta_1)=\frac{1}{2m}\sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})^2$$

##Linear Regression Model
$$h_\theta(x)=\theta_0+\theta_1x$$
$$J(\theta_0,\theta_1)=\frac{1}{2m}\sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})^2$$

##Gradient descent(梯度下降):
- **Gradient descent algorithm<br>**
repeat until convergence<br>
{
$$
\theta_j:=\theta_j -\alpha\frac{\partial}{\partial\theta_j}J(\theta_0,\theta_1)\ \ \ \ \ \ \ \ \ (for \ j=0\ and\ j=1)
$$
}
	- := 		赋值
	- $\alpha$学习速率
		+ 过小，会导致到达最低点的时间变长:
		+ 过大，会导致到达最低点的时间变短，但是可能会错过最低点。
	- $J(\theta_0,\theta_1)$(可以视作斜率)
- **Correct:Simultaneous update**
	- $temp0:=\theta_0-\alpha\frac{\partial}{\partial\theta_0}J(\theta_0,\theta_1)$
	- $temp1:=\theta_0-\alpha\frac{\partial}{\partial\theta_1}J(\theta_0,\theta_1)$
	- $\theta_0:=temp0$
	- $\theta_1:=temp1$
- **Incorrect**:
	 - $temp0:=\theta_0-\alpha\frac{\partial}{\partial\theta_0}J(\theta_0,\theta_1)$
	 - $\theta_0:=temp0$
	 - $temp1:=\theta_0-\alpha\frac{\partial}{\partial\theta_1}J(\theta_0,\theta_1)$
	 - $\theta_1:=temp1$

- **Gradient descent can converge to a local minimum,even with the learning rate a fixed.**

- **Eduction**
$$\frac{\partial}{\partial\theta_j}J(\theta_0,\theta_1)=\frac{\partial}{\partial\theta_j}\frac{1}{2m}\sum_{i=1}^{m}(\theta_0+\theta_1x^{(i)}-y^{(i)})^2$$
$$\longrightarrow 
\begin{cases}
j=0:\frac{\partial}{\partial\theta_0}J(\theta_0,\theta_1)=\frac{1}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})\\
\\
j=1:\frac{\partial}{\partial\theta_1}J(\theta_0,\theta_1)=\frac{1}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})·x^{(i)}
\end{cases}$$

- **Gradient descent algorithm<br>**
- repeat until convergence<br>
{$$\begin{aligned}
	\theta_0&:=\theta_0-\alpha\frac{1}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})\\
	\theta_1&:=\theta_1-\alpha\frac{1}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})·x^{(i)}
	\end{aligned}
$$}