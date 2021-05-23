## DSP-第六章
##### 16180110067 郑淇公
### 6.1
(1)$\alpha_p=0.15dB,\alpha_s=43dB$
$\varepsilon=\sqrt{10^{\alpha_p/10-1}}\sqrt{10^{0.15/10-1}}=0.1875,A=10^{\alpha_p/20}=10^{43/20}=141.2538$

(2)$\alpha_p=0.04dB,\alpha_s=57dB$
$\varepsilon=\sqrt{10^{\alpha_p/10-1}}\sqrt{10^{0.04/10-1}}=0.0962,A=10^{\alpha_p/20}=10^{57/20}=707.9458$

(3)$\alpha_p=0.23dB,\alpha_s=60dB$
$\varepsilon=\sqrt{10^{\alpha_p/10-1}}\sqrt{10^{0.23/10-1}}=0.2332,A=10^{\alpha_p/20}=10^{60/20}=1000$

### 6.2
因为$H_1(s)=\frac{a}{s+a}\ a>0,故H_1(j\Omega)=\frac{a}{j\Omega+a}\ a>0,|H_(j\Omega)|=\frac{a}{\sqrt{\Omega^2+a^2}}\ a>0，$由已知可得：$|H_1(j0)|=1，|H_1(j\infty)|=0$可得该滤波器具有单调下降的低通幅频特性$\alpha(\Omega)=-20lg|H_1(j\Omega)|^2=-10lg\frac{a^2}{\Omega^2+a^2},$可得，$\Omega_c=0.9976a\ a>0$

### 6.3
证明：$H_h(s)\frac{s}{s+a} \ a>0$

所以$H_h(j\Omega)=\frac{j\Omega}{j\Omega+a} \ a>0,|H_h(j\Omega)|=\frac{\sqrt{\Omega^2}}{\sqrt{\Omega^2+a^2}}=\frac{|\Omega|}{\sqrt{\Omega^2+a^2}} \ a>0$

由已知条件：$|H_h(j0)|=0,|H_h(j\infty)|=1$该滤波器具有单调上升的高通幅频滤波特性

$\alpha(\Omega)= -20\lg|H_h(j\Omega)|=-10\lg|H_h(j\Omega)|^2=-10\lg\frac{\Omega^2}{\Omega^2+a^2}=3,$可得$\Omega_c=1.0024a\  a>0$

### 6.11
已知$\lambda_p=0.2Hz,\alpha_p=0.5dB,N=2,$可得

$$\varepsilon=\sqrt{10^{\alpha_p/10}-1}=\sqrt{10^{0.5/10}-1}=0.349,\Omega_c=\frac{\Omega_p}{\varepsilon^{1/N}}=\frac{2\pi \lambda_p}{\varepsilon^{1/N}}=2.126\ rad/s$$
因为：
$$H_{lp}(s)=G(p)|p=s/\Omega_c$$
所以：
$$G(p)=H_{lp}(s)|s=p\Omega=\frac{4.52}{p^2\Omega_c^2+3p\Omega_c+4.52}=\frac{4.52}{4.52p^2+6.378p+4.52}$$
故：
$$H_{Hp}(s)=G(p)|p=\lambda_p\Omega_{pb}/s=G(p)|p=2.512/s=\frac{4.52s^2}{4.52s^2+16.02s+28.52}$$

### 6.19
#### 1)用脉冲响应不变法设计公式，
$H_a(s)=\frac{1}{2s^2+3s+1}$

(1)$s_1=-\frac{1}{2}+\frac{\sqrt{3}}{2}j ,s_2=-\frac{1}{2}-\frac{\sqrt{3}}{2}j$
$$H_a(s)=\frac{-\frac{\sqrt{3}}{3}j}{s-(-\frac{1}{2}+\frac{\sqrt{3}}{2}j)}+\frac{\frac{\sqrt{3}}{3}j}{s-(-\frac{1}{2}-\frac{\sqrt{3}}{2}j)},H(z)=\frac{-\frac{\sqrt{3}}{3}j}{1-z^{-1}e^{-1+\sqrt{3}j}}+\frac{\frac{\sqrt{3}}{3}j}{1-z^{-1}e^{-1-\sqrt{3}j}}$$
将$T=2$代入，得$H(z)=\frac{-\frac{\sqrt{3}}{3}j}{1-z^{-1}e^{-1+\sqrt{3}j}}+\frac{\frac{\sqrt{3}}{3}j}{1-z^{-1}e^{-1-\sqrt{3}j}}=\frac{2\sqrt{3}}{3}·\frac{z^{-1}e^{-1}sin\sqrt{3}}{1-2z^{-1}e^{-1}cos\sqrt{3}+e^{-1}z^{-2}}$

(2)$H_a(s)=\frac{1}{2s^2+3s+1}=\frac{1}{s+1/2}-\frac{1}{s+1}$
$$H(z)=\frac{1}{1-e^{-T/2}z^{-1}}-\frac{1}{1-e^{-2}z^{-1}}|_{T=2}=\frac{1}{1-e^{-1}z^{-1}}-\frac{1}{1-e^{-2}z^{-1}}=\frac{(e^{-1}-e^{-2})z^{-1}}{1-(e^{-1}+e^{-2})z^{-1}+e^{-3}z^{-2}}$$

#### 2)使用双线性变换法

(1)$H(z)=H_a(s)|_{s=\frac{2}{T}\frac{1-z^{-1}}{1+z^{-1},T=2}}=\frac{(1+z^{-1})^2}{(1-z^{-1})^2+(1-z^{-1})^2(1+z^{-1})+(1+z^{-1})^2}=\frac{1+2z^{-1}+z^{-2}}{3+z^{-2}}$

(2)$H(z)=H_a(s)|_{s=\frac{2}{T}\frac{1-z^{-1}}{1+z^{-1},T=2}}=\frac{(1+z^{-1})^2}{2(1-z^{-1})^2+3(1-z^{-1})^2+(1+z^{-1})^2}=\frac{1+2z^{-1}+z^{-2}}{6-2z^{-1}}$

### 6.20

用脉冲响应不变法：

由：$f_p=0.5Hz,T=0.5ms$

得：$\omega_p=\Omega T=2\pi f_pT=2\pi \times0.5\times10^3\times0.5\times10^{-3}=0.5\pi =1.57$

用双线性变换法：

由：$\Omega_p=\frac{2}{T}tan\frac{\omega_p}{2}$

得：$2\pi f_pT=\frac{2}{T}tan\frac{\omega_p}{2}$

则：$\omega_p=2arctan\frac{\pi}{4},-\pi <\omega_p < \pi$

### 6.22
#### 1)脉冲相应不变法

(1)将数字滤波器指标转换为相应模拟滤波器指标，设采样周期为T,得

$$\Omega_p=\frac{\omega_p}{T}=\frac{0.2}{T}rad/s,\Omega_s=\frac{\omega_s}{T}rad/s\ \ \alpha_p=1dB,\alpha_s=10dB$$<br>

(2)设计相应的模拟滤波器

$$\varepsilon=\sqrt{10^{\alpha_p/10}-1}=\sqrt{10^{1/10}-1}=0.508847\ \ \ A=10^{\alpha_s/20}=10^{10/20}=3.1623$$

$$k=\frac{\Omega_p}{\Omega_s}=\frac{0.2/T}{0.3/T}=\frac{2}{3},k_1=\frac{\varepsilon}{\sqrt{A^2-1}}=\frac{0.508847}{\sqrt{3.1623^2-1}}=0.193349$$

$N=\frac{\lg k_1}{\lg k}=4.0528$，取整数N=5

取$T=1s,\ \Omega_c=\frac{\Omega_s}{(A^2-1)^{1/2N}}=\frac{0.3}{(3.1623^2-1)^{1/10}}=2.408$

查表，得去归一化，得低通滤波器系统函数为：

$$H_a(s)=G(p)|_{s/\Omega_c}=\sum^{5}_{k=1}\frac{\Omega_c·A_k}{s-\Omega_c·p_k}=\sum^{5}_{k=1}\frac{B_k}{s-s_k},s_k=\Omega_c·p_k,B_k=\Omega_c·A_k$$<br>

(3)将T=1s代入，将模拟滤波器系统函数$H_a(s)$转化为数字滤波器系统函数H(z),即：

$$H(z)=\sum^{5}_{k=1}\frac{B_k}{1-e^{s_4T}z^{-1}}=$$

$$\frac{2.2204\times10^{-16}+2.882\times10^{-5}z^{-1}+0.00027036z^{-2}+0.00023137z^{-3}+1.8057\times10^{-5}z^{-4}}{14.2236z^{-1}+7.1871z^{-2}-6.1541z^{-3}+2.6498z^{-4}-0.45872z^{-5}}$$

#### 2)双线性变换法
(1)确定数字滤波器指标：$\omega_p=0.2rad,\omega_s=0.3rad,\alpha_p=1dB,\alpha_s=10dB$

(2)非线性预畸变矫正，将数字滤波器设计指标转换成相应的过渡滤波器指标(设采样周期T=2s)

$$\Omega_p=\frac{2}{T}tan\frac{\omega_p}{2}=tan\frac{0.2}{2}=0.001745,\alpha_p=1dB$$

$$\Omega_s=\frac{2}{T}tan\frac{\omega_s}{2}=tan\frac{0.3}{2}=0.002618,\alpha_s=10dB$$
<br>

(3)$\varepsilon=\sqrt{10^{\alpha_p/10}-1}=\sqrt{10^{1/10}-1}=0.508847$

$$A=\frac{\Omega_p}{\Omega_s}=\frac{0.001745}{0.002618}=0.6665,k_1=\frac{\varepsilon}{\sqrt{A^2-1}}=\frac{0.508847}{s\sqrt{3.1623^2-1}}=0.193349$$

$N=\frac{\lg k_1}{\lg k}=4.0503，取整数N=5$

$取T=2s, \Omega_c=\frac{\Omega_s}{(A^2-1)^{1/2N}}=\frac{0.002618}{(3.1623^2-1)^{1/10}}=1.2457$

去归一化，得$H_a(s)=G(p)|_{s/\Omega_c}$

(4)用双线性变换法将模逆滤波器转换为数字滤波器，即：

$$H(z)=H_a(s)|_{s=\frac{1-z^{-1}}{1+z^1}}=$$

$$\frac{1.7763\times10^{-5}+8.8815\times10^{-15}z^{-1}+0.00017763z^{-2}+0.00017763z^{-3}+8.8815\times10^{-5}z^{-4}+17763\times10^{-5}z^{-5}}{1-4.2191z^{-1}+7.1728z^{-2}-6.1365z^{-3}+2.64z^{-4}-0.45669z^{-5}}$$

### 6.23

已知$\omega_p=0.8rad,\omega_s,\alpha_p=3dB,\alpha_s=18dB$

(1)将数字高通滤波器的边界频率转换为相应的模拟高通滤波器$H_a(s)$的边界频率。(令$T=2$)

$$\omega_{ph}=tan\frac{\omega_p}{2}=tan\frac{0.8}{2}=0.006981,\Omega_{sh}=tan\frac{\omega_s}{2}=tan\frac{0.5}{2}=0.004363$$<br>

(2)将$H_a(s)$的指数转换为模拟低通归一化原型滤波器G(p)的指标

$$\lambda_p=1,\alpha_p=3dB;\lambda_s=\frac{\Omega_{ph}}{\Omega_{sh}}=1.6,\alpha_s=18dB$$

matlab程序：

```matlab
%用双线性变换法设计巴特沃斯数字高通滤波器
wp=1;
ws=1.6;
rp=3;
as=18;
[N,wc]=buttord(wp,ws,rp,as,'s');
[Bap,Aap]=butter(N,wc,'s');
[BHP,AHP]=lp2hp(Bap,Aap,16);
[Bz,Az]=bilinear(BHP,AHP,0.5);
%N,Bz,Az为所设计的巴特沃斯数字高通滤波器的阶数和系统系统；
```
运行结果：
```matlab
N=5
Bz=[0.0165-0.0824 0.1648-0.1648 0.0824-0.0165]
Az=[1.0000 1.2604 1.1914 0.5375 0.1505 0.0166]
```