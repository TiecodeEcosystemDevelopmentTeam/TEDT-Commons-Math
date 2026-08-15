@外部依赖库("../../依赖/commons-math3-3.6.1.jar")
@导入Java("org.apache.commons.math3.distribution.UniformRealDistribution")
@指代类("org.apache.commons.math3.distribution.UniformRealDistribution")
@禁止创建对象
类 均匀分布

    @运算符重载
    方法 =(下界 : 小数, 上界 : 小数)
        code return new UniformRealDistribution(#下界, #上界);
    结束 方法

    @静态
    方法 新建(下界 : 小数, 上界 : 小数) : 均匀分布
        code return new UniformRealDistribution(#下界, #上界);
    结束 方法

    方法 取下界() : 小数
        code return #this.getSupportLowerBound();
    结束 方法

    方法 取上界() : 小数
        code return #this.getSupportUpperBound();
    结束 方法

    方法 概率密度(值 : 小数) : 小数
        code return #this.density(#值);
    结束 方法

    方法 累积概率(值 : 小数) : 小数
        code return #this.cumulativeProbability(#值);
    结束 方法

    方法 逆累积概率(概率 : 小数) : 小数
        code return #this.inverseCumulativeProbability(#概率);
    结束 方法

    方法 随机采样() : 小数
        code return #this.sample();
    结束 方法

    方法 随机采样数组(数量 : 整数) : 小数[]
        code return #this.sample(#数量);
    结束 方法

结束 类