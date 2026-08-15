@外部依赖库("../../依赖/commons-math3-3.6.1.jar")
@导入Java("org.apache.commons.math3.util.*")
@全局类
类 数学工具

    @静态
    方法 取阶乘(数 : 整数) : 长整数
        code return CombinatoricsUtils.factorial(#数);
    结束 方法

    @静态
    方法 取组合数(n : 整数, k : 整数) : 长整数
        code return CombinatoricsUtils.binomialCoefficient(#n, #k);
    结束 方法

    @静态
    方法 取排列数(n : 整数, k : 整数) : 长整数
        @code
        if (#k > #n) throw new IllegalArgumentException("k 不能大于 n");
        long result = 1;
        for (int i = 0; i < #k; i++) {
            result *= (#n - i);
        }
        return result;
        @end
    结束 方法

    @静态
    方法 取最大公约数(a : 整数, b : 整数) : 整数
        code return ArithmeticUtils.gcd(#a, #b);
    结束 方法

    @静态
    方法 取最小公倍数(a : 整数, b : 整数) : 整数
        code return ArithmeticUtils.lcm(#a, #b);
    结束 方法

    @静态
    方法 取两数幂(幂次 : 整数) : 长整数
        code return ArithmeticUtils.pow(2L, #幂次);
    结束 方法

    @静态
    方法 安全相加(a : 整数, b : 整数) : 整数
        code return ArithmeticUtils.addAndCheck(#a, #b);
    结束 方法

    @静态
    方法 安全相乘(a : 整数, b : 整数) : 整数
        code return ArithmeticUtils.mulAndCheck(#a, #b);
    结束 方法

    @静态
    方法 标准化角度(角度 : 小数) : 小数
        code return MathUtils.normalizeAngle(#角度, Math.PI);
    结束 方法

    @静态
    方法 判断数值有限(值 : 小数) : 逻辑型
        code return Precision.equals(#值, #值, 0) || !Double.isInfinite(#值);
    结束 方法

    @静态
    方法 四舍五入(值 : 小数, 位数 : 整数) : 小数
        code return Precision.round(#值, #位数);
    结束 方法

    @静态
    方法 近似相等(a : 小数, b : 小数, 允许误差 : 小数 = 1e-6) : 逻辑型
        code return Precision.equals(#a, #b, #允许误差);
    结束 方法

结束 类