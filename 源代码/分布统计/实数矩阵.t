@外部依赖库("../../依赖/commons-math3-3.6.1.jar")
@导入Java("org.apache.commons.math3.linear.*")
@禁止创建对象
类 实数矩阵

    @code
    private RealMatrix matrix;
    @end

    @运算符重载
    方法 =(二维数据 : 小数[][])
        @code
        #<实数矩阵>.matrix = new Array2DRowRealMatrix(#二维数据);
        @end
    结束 方法

    @静态
    方法 新建(行 : 整数, 列 : 整数) : 实数矩阵
        变量 矩阵 : 实数矩阵?
        @code
        #矩阵.matrix = new Array2DRowRealMatrix(#行, #列);
		return #矩阵;
        @end
    结束 方法

    @静态
    方法 从二维数组创建(数据 : 小数[][]) : 实数矩阵
        变量 矩阵 : 实数矩阵?
        @code
        #矩阵.matrix = new Array2DRowRealMatrix(#数据);
        return #矩阵;
	    @end
    结束 方法

    @静态
    方法 从一维数组创建(行数 : 整数, 数据 : 小数[]) : 实数矩阵
        变量 矩阵 : 实数矩阵?
        @code
        #矩阵.matrix = MatrixUtils.createRealMatrix(#行数, #数据);
        return #矩阵;
		@end
    结束 方法

    方法 取行数() : 整数
        code return #<实数矩阵>.matrix.getRowDimension();
    结束 方法

    方法 取列数() : 整数
        code return #<实数矩阵>.matrix.getColumnDimension();
    结束 方法

    方法 取值(行 : 整数, 列 : 整数) : 小数
        code return #<实数矩阵>.matrix.getEntry(#行, #列);
    结束 方法

    方法 置值(行 : 整数, 列 : 整数, 值 : 小数)
        code #<实数矩阵>.matrix.setEntry(#行, #列, #值);
    结束 方法

    方法 取行(行索引 : 整数) : 小数[]
        code return #<实数矩阵>.matrix.getRow(#行索引);
    结束 方法

    方法 取列(列索引 : 整数) : 小数[]
        code return #<实数矩阵>.matrix.getColumn(#列索引);
    结束 方法

    方法 转置() : 实数矩阵
        变量 新矩阵 : 实数矩阵?
        @code
        #新矩阵.matrix = #<实数矩阵>.matrix.transpose();
        return #新矩阵;
		@end
    结束 方法

    方法 乘(另一个矩阵 : 实数矩阵) : 实数矩阵
        变量 结果 : 实数矩阵?
        @code
        #结果.matrix = #<实数矩阵>.matrix.multiply(#另一个矩阵.matrix);
        return #结果;
		@end
    结束 方法

    方法 加(另一个矩阵 : 实数矩阵) : 实数矩阵
        变量 结果 : 实数矩阵?
        @code
        #结果.matrix = #<实数矩阵>.matrix.add(#另一个矩阵.matrix);
        return #结果;
		@end
    结束 方法

    方法 减(另一个矩阵 : 实数矩阵) : 实数矩阵
        变量 结果 : 实数矩阵？
        @code
        #结果.matrix = #<实数矩阵>.matrix.subtract(#另一个矩阵.matrix);
        return #结果;
		@end
    结束 方法

    方法 乘标量(标量 : 小数) : 实数矩阵
        变量 结果 : 实数矩阵?
        @code
        #结果.matrix = #<实数矩阵>.matrix.scalarMultiply(#标量);
        return #结果;
		@end
    结束 方法

    方法 取行列式() : 小数
        @code
        return new LUDecomposition(#<实数矩阵>.matrix).getDeterminant();
        @end
    结束 方法

    方法 取逆矩阵() : 实数矩阵
        变量 结果 : 实数矩阵?
        @code
        #结果.matrix = new LUDecomposition(#<实数矩阵>.matrix).getSolver().getInverse();
        return #结果;
		@end
    结束 方法

    方法 取数据() : 小数[][]
        code return #<实数矩阵>.matrix.getData();
    结束 方法

    方法 到文本(格式 : 文本 = "%.4f") : 文本
        @code
        StringBuilder sb = new StringBuilder();
        double[][] data = #<实数矩阵>.matrix.getData();
        for (int i = 0; i < data.length; i++) {
            for (int j = 0; j < data[0].length; j++) {
                sb.append(String.format(#格式, data[i][j]));
                if (j < data[0].length - 1) sb.append("\t");
            }
            sb.append("\n");
        }
        return sb.toString();
        @end
    结束 方法

结束 类