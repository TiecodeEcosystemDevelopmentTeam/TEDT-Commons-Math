@外部依赖库("../../依赖/commons-math3-3.6.1.jar")
@导入Java("org.apache.commons.math3.distribution.NormalDistribution")
@指代类("org.apache.commons.math3.distribution.NormalDistribution")
@禁止创建对象
类 正态分布

    @运算符重载
    方法 =(均值 : 小数, 标准差 : 小数)
        @code
        try {
            return new NormalDistribution(#均值, #标准差);
        } catch (Exception e) {
            throw new RuntimeException("正态分布参数错误：" + e.getMessage());
        }
        @end
    结束 方法

    @静态
    方法 新建(均值 : 小数, 标准差 : 小数) : 正态分布
        @code
        try {
            return new NormalDistribution(#均值, #标准差);
        } catch (Exception e) {
            throw new RuntimeException("正态分布参数错误：" + e.getMessage());
        }
        @end
    结束 方法

    @静态
    方法 创建标准正态() : 正态分布
        code return new NormalDistribution();
    结束 方法

    方法 取均值() : 小数
        code return #this.getMean();
    结束 方法

    方法 取标准差() : 小数
        code return #this.getStandardDeviation();
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