@外部依赖库("../../依赖/commons-math3-3.6.1.jar")
@导入Java("org.apache.commons.math3.stat.descriptive.DescriptiveStatistics")
@指代类("org.apache.commons.math3.stat.descriptive.DescriptiveStatistics")
@禁止创建对象
类 描述统计

    @运算符重载
    方法 =(初始窗口大小 : 整数)
        code return new DescriptiveStatistics(#初始窗口大小);
    结束 方法

    @静态
    方法 新建(窗口大小 : 整数 = 100) : 描述统计
        code return new DescriptiveStatistics(#窗口大小);
    结束 方法

    方法 添加值(值 : 小数)
        code #this.addValue(#值);
    结束 方法

    方法 取平均值() : 小数
        code return #this.getMean();
    结束 方法

    方法 取标准差() : 小数
        code return #this.getStandardDeviation();
    结束 方法

    方法 取方差() : 小数
        code return #this.getVariance();
    结束 方法

    方法 取最小值() : 小数
        code return #this.getMin();
    结束 方法

    方法 取最大值() : 小数
        code return #this.getMax();
    结束 方法

    方法 取总和() : 小数
        code return #this.getSum();
    结束 方法

    方法 取数量() : 长整数
        code return #this.getN();
    结束 方法

    方法 取百分位数(百分比 : 小数) : 小数
        code return #this.getPercentile(#百分比);
    结束 方法

    方法 清空()
        code #this.clear();
    结束 方法

    方法 克隆() : 描述统计
        code return #this.copy();
    结束 方法

结束 类