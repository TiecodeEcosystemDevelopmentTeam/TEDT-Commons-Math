@外部依赖库("../../依赖/commons-math3-3.6.1.jar")
@导入Java("org.apache.commons.math3.fraction.Fraction")
@指代类("org.apache.commons.math3.fraction.Fraction")
@禁止创建对象
类 分数

	@运算符重载
	方法 =(分子 : 整数, 分母 : 整数)
		code return new Fraction(#分子, #分母);
	结束 方法

	@静态
	方法 新建(分子 : 整数, 分母 : 整数) : 分数
		code return new Fraction(#分子, #分母);
	结束 方法

	@静态
	方法 从小数创建(小数 : 小数, 精度 : 整数 = 10000) : 分数
		code return new Fraction(#小数, #精度);
	结束 方法

	方法 取分子() : 整数
		code return #this.getNumerator();
	结束 方法

	方法 取分母() : 整数
		code return #this.getDenominator();
	结束 方法

	方法 取小数() : 小数
		code return #this.doubleValue();
	结束 方法

	方法 加(另一个分数 : 分数) : 分数
		code return #this.add(#另一个分数);
	结束 方法

	方法 减(另一个分数 : 分数) : 分数
		code return #this.subtract(#另一个分数);
	结束 方法

	方法 乘(另一个分数 : 分数) : 分数
		code return #this.multiply(#另一个分数);
	结束 方法

	方法 除(另一个分数 : 分数) : 分数
		code return #this.divide(#另一个分数);
	结束 方法

	方法 取绝对值() : 分数
		code return #this.abs();
	结束 方法

	方法 取反() : 分数
		code return #this.negate();
	结束 方法

	方法 约分() : 分数
		code return #this.reduce();
	结束 方法

	@运算符重载
	方法 ==(另一个 : 分数) : 逻辑型
		@code
        if (#this == null && #另一个 == null) return true;
        if (#this == null || #另一个 == null) return false;
        return #this.equals(#另一个);
        @end
	结束 方法

	@运算符重载
	方法 !=(另一个 : 分数) : 逻辑型
		返回 (本对象 == 另一个) == 假
	结束 方法

	@虚拟方法
	方法 到文本() : 文本
		code return #this.toString();
	结束 方法

结束 类