// 4.6 层叠布局 Stack、Positioned
/**
 *
 * 层叠布局和 Web 中的绝对定位、Android 中的 Frame 布局是相似的，子组件可以根据距父容器四个角的位置来确定自身的位置。
 * 层叠布局允许子组件按照代码中声明的顺序堆叠起来。Flutter中使用Stack和Positioned这两个组件来配合实现绝对定位。
 * Stack允许子组件堆叠，而Positioned用于根据Stack的四个角来确定子组件的位置。
 *
 * Stack
 *
 * Stack({
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.fit = StackFit.loose,
    this.overflow = Overflow.clip,
    List<Widget> children = const <Widget>[],
    })
 *
 * 1、alignment：此参数决定如何去对齐没有定位（没有使用Positioned）或部分定位的子组件,所谓部分定位，
 * 在这里特指没有在某一个轴上定位：left、right为横轴，top、bottom为纵轴，只要包含某个轴上的一个定位属性就算在该轴上有定位。
 * 2、textDirection：和Row、Wrap的textDirection功能一样，都用于确定alignment对齐的参考系
 * 即：textDirection的值为TextDirection.ltr，则alignment的start代表左，end代表右，
 * 即从左往右的顺序；textDirection的值为TextDirection.rtl，则alignment的start代表右，end代表左，即从右往左的顺序。
 * 3、fit：此参数用于确定没有定位的子组件如何去适应Stack的大小。
 * StackFit.loose表示使用子组件的大小，StackFit.expand表示扩伸到Stack的大小。
 * 4、overflow：此属性决定如何显示超出Stack显示空间的子组件；
 * 值为Overflow.clip时，超出部分会被剪裁（隐藏），值为Overflow.visible 时则不会。
 *
 *
 * ### Positioned
 *  const Positioned({
    Key? key,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    required Widget child,
    })
 *
 * 1、left、top 、right、 bottom分别代表离Stack左、上、右、底四边的距离。
 * 2、width和height用于指定需要定位元素的宽度和高度。
 * 注意，Positioned的width、height 和其它地方的意义稍微有点区别，此处用于配合left、top 、right、 bottom来定位组件，
 * 举个例子，在水平方向时，你只能指定left、right、width三个属性中的两个，如指定left和width后，right会自动算出(left+width)，
 * 如果同时指定三个属性则会报错，垂直方向同理。
 *
 * */

/*
*  第五节 固定资产
* (一）固定资产的概念和特征
* 固定资产是指同时具有以下特征的有形资沙
* (1）为生产商品、提供劳务、出租或经营管理而持有；
* (2）使用寿命超过一个会计年度。
* 从这一定义可以看出，作为企业的固定资产应具备以下两个特征
* 第一，企业持有固定资产的日的，是为了生产商品、提供劳务、出租或经营管理的需要，而不像存货是为了对外出售。这一特征是固定资产区别于存货等流动资产的重要标志。
* 第二，企业使用固定资产的期限较长，使用寿命一般超过一个会计年度。这一特征表明企业固定资产属于非流动资产，其给企业带来的收益期超过一年，能在一年以上的时间里为企业创造经济利益。
* (一）固定资产的分类
* 根据不同的管理需要和核算要求以及不同的分类标准，可以对固定资产进行不同的分类，主要有以下几种分类方法:
* 1、按经济用途分类
*
*
* */