@全局类
@外部依赖库("../../依赖/commons-math3-3.6.1.jar")
@导入Java("org.apache.commons.math3.stat.StatUtils")
@导入Java("org.apache.commons.math3.stat.correlation.Covariance")
@导入Java("org.apache.commons.math3.stat.correlation.PearsonsCorrelation")
类 静态统计
	
	@静态
	方法 求和(数组 : 小数[]) : 小数
		code return StatUtils.sum(#数组);
	结束 方法
	
	@静态
	方法 求均值(数组 : 小数[]) : 小数
		code return StatUtils.mean(#数组);
	结束 方法
	
	@静态
	方法 求方差(数组 : 小数[]) : 小数
		code return StatUtils.variance(#数组);
	结束 方法
	
	@静态
	方法 求平方和(数组 : 小数[]) : 小数
		code return StatUtils.sumSq(#数组);
	结束 方法
	
	@静态
	方法 求乘积(数组 : 小数[]) : 小数
		code return StatUtils.product(#数组);
	结束 方法
	
	@静态
	方法 取最小值(数组 : 小数[]) : 小数
		code return StatUtils.min(#数组);
	结束 方法
	
	@静态
	方法 取最大值(数组 : 小数[]) : 小数
		code return StatUtils.max(#数组);
	结束 方法
	
	@静态
	方法 查找众数(数组 : 小数[]) : 小数[]
		code return StatUtils.mode(#数组);
	结束 方法
	
	@静态
	方法 求几何平均数(数组 : 小数[]) : 小数
		code return StatUtils.geometricMean(#数组);
	结束 方法
	
	@静态
	方法 求百分位(数组 : 小数[], 百分位 : 小数) : 小数
		code return StatUtils.percentile(#数组, #百分位);
	结束 方法
	
	@静态
	方法 归一化(数组 : 小数[]) : 小数[]
		@code 
			double[] arr = #数组;
			double min = StatUtils.min(arr);
			double max = StatUtils.max(arr);
			double[] result = new double[arr.length];
			if (max == min) {
				java.util.Arrays.fill(result, 0.0);
			} else {
				for (int i = 0; i < arr.length; i++) {
					result[i] = (arr[i] - min) / (max - min);
				}
			}
			return result;
		@end
	结束 方法
	
	// 标准差（样本标准差，分母为 n-1）
	@静态
	方法 求标准差(数组 : 小数[]) : 小数
		code return Math.sqrt(StatUtils.variance(#数组));
	结束 方法
	
	// 中位数（等价于 50% 百分位）
	@静态
	方法 求中位数(数组 : 小数[]) : 小数
		code return StatUtils.percentile(#数组, 50.0);
	结束 方法
	
	// 协方差（两个等长数组）
	@静态
	方法 求协方差(数组1 : 小数[], 数组2 : 小数[]) : 小数
		@code 
			Covariance cov = new Covariance();
			return cov.covariance(#数组1, #数组2, false); // false表示样本协方差（除以 n-1）
		@end
	结束 方法
	
	// 皮尔逊相关系数（两个等长数组）
	@静态
	方法 求相关系数(数组1 : 小数[], 数组2 : 小数[]) : 小数
		@code
			PearsonsCorrelation pc = new PearsonsCorrelation();
			return pc.correlation(#数组1, #数组2);
		@end
	结束 方法
	
	// 汇总统计：返回包含 count, min, max, mean, median, std, variance 的键值对（此处返回 JSON 字符串方便展示，可自行调整）
	@静态
	 方法 获取汇总统计(数组 : 小数[]) : 文本
		@code
			double[] a = #数组;
			java.text.DecimalFormat df = new java.text.DecimalFormat("#.#####");
			java.util.Map<String, String> map = new java.util.LinkedHashMap<>();
			map.put("count", String.valueOf(a.length));
			map.put("min", df.format(StatUtils.min(a)));
			map.put("max", df.format(StatUtils.max(a)));
			map.put("mean", df.format(StatUtils.mean(a)));
			map.put("median", df.format(StatUtils.percentile(a, 50.0)));
			map.put("std", df.format(Math.sqrt(StatUtils.variance(a))));
			map.put("variance", df.format(StatUtils.variance(a)));
			return new com.alibaba.fastjson.JSONObject(map).toJSONString(); // 若无 fastjson 可自行拼接字符串
		@end
	结束 方法
	
结束 类