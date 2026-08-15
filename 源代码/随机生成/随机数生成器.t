@外部依赖库("../../依赖/commons-math3-3.6.1.jar")
@导入Java("org.apache.commons.math3.random.RandomDataGenerator")
@指代类("org.apache.commons.math3.random.RandomDataGenerator")
@禁止创建对象
类 随机数生成器

    @静态
    方法 新建() : 随机数生成器
        code return new RandomDataGenerator();
    结束 方法

    @静态
    方法 创建带种子(种子 : 长整数) : 随机数生成器
        code return new RandomDataGenerator(#种子);
    结束 方法

    方法 取种子() : 长整数
        code return #this.getSeed();
    结束 方法

    方法 重新设置种子(种子 : 长整数)
        code #this.reSeed(#种子);
    结束 方法

    方法 随机整数(下界 : 整数, 上界 : 整数) : 整数
        code return #this.nextInt(#下界, #上界);
    结束 方法

    方法 随机长整数(下界 : 长整数, 上界 : 长整数) : 长整数
        code return #this.nextLong(#下界, #上界);
    结束 方法

    方法 随机小数(下界 : 小数, 上界 : 小数) : 小数
        code return #this.nextDouble(#下界, #上界);
    结束 方法

    方法 随机高斯(均值 : 小数, 标准差 : 小数) : 小数
        code return #this.nextGaussian(#均值, #标准差);
    结束 方法

    方法 随机布尔() : 逻辑型
        code return #this.nextBoolean();
    结束 方法

    方法 随机字节集(长度 : 整数) : 字节[]
        code return #this.nextBytes(#长度);
    结束 方法

    方法 随机文本(长度 : 整数, 字符集 : 文本 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789") : 文本
        @code
        char[] chars = #字符集.toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < #长度; i++) {
            sb.append(chars[#this.nextInt(0, chars.length - 1)]);
        }
        return sb.toString();
        @end
    结束 方法

结束 类