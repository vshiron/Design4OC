# iOS设计模式
## 前言

* 可能我们在很多编写代码的时候都没有留意,其实设计模式无处不在,iOS中经典的模式我们都耳熟能详,例如单例模式,工厂模式等等,设计模式可以优化框架的维护性,也可以使得程序在迭代的过程中更便于扩展,设计模式听上去距离我们很远.
* 但事实上却距离我们很近,在最初学习iOS的过程中,并没有什么需要扩展程序的概念,但是在后期加入工作当中的时候才明白,很多需要并不是一下子就能确定下来的,而是在交流和沟通的过程中不断修改的.而我们在学习编程的过程中,为了避免重复编码,复制黏贴这样的毛病,在设计界面,理念,逻辑的时候要考虑好程序的健壮性,思考才是提升能力的关键,既然能打开网络的世界,浏览不同的最新资讯,想必大家也是非常好学和乐意提高自己的编程水平的.

* 写下这篇文章主要是记录下自己学习过程中的一些心得吧,之前看到设计模式庞大的家族有点被震住,感觉并不是每种设计模式都要生搬硬套到自己的项目当中,判断设计模式对当前系统是否有帮助才是最重要的,每种设计模式都有自己的优点和不足之处,所以在编程的过程中还请大家更多的思考.

* 本人在学习的过程中主要是参考了 **[大话设计模式]**,虽然语言是Java写的,但是在阅读的过程中也有很多收获,Java作为一门古老而健壮的语言已经很很长历史了,所以设计模式在Java中可能更为体系,而iOS中我看过一本名为**[Objective-C编程之道：IOS设计模式解析]**,感觉里面的内容更为切合与贴近iOS的程序开发,感谢作者的总结和分享,我也希望大家能亲自去阅读这两本书,能够直接在里面获得更深刻的体会和认识.

* 我认为好书要多读几遍才能深刻理解,常翻常新,这里是本人的初读体会,但随着时间的推移,也会及时更新本人对设计模式的理解和感悟,谢谢

## 一. 简单工厂模式
#### 1.定义:
**简单工厂模式（Simple Factory Pattern）**属于类的创新型模式，又叫静态工厂方法模式（Static FactoryMethod Pattern）,是通过专门定义一个类来负责创建其他类的实例，被创建的实例通常都具有共同的父类。

工厂模式大家都非常熟悉,也可以写出结构优良的工厂模式代码,所以这里就简单的举例说明即可.

#### 2.模式:
假设现在有一家工厂在生产手机,但是手机的类型暂时还不确定,等到用户需求确定了,再决定扩大某条生产线来生产手机,该工厂主要有两种产品:Android和IPhone;
##### SMMobilePhone.h
* 主要就是一个useCall方法.


```
#import <Foundation/Foundation.h>
//手机基类
@interface SMMobilePhone : NSObject
-(void)useCall;
@end
//苹果,继承手机基类
@interface SMIPhone : SMMobilePhone
@end
//安卓,继承手机基类
@interface SMAndroid : SMMobilePhone
@end

```

##### SMMobilePhone.m
* 类的初始化和方法的实现,没啥好解析的

```
#import "SMMobilePhone.h"

@implementation SMMobilePhone
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%@类初始化中",self.class);
    }
    return self;
}
-(void)useCall{
    NSLog(@"使用%@,呼叫10086中...",self.class);
    
}

@end
@implementation SMIPhone
@end

@implementation SMAndroid
@end

```

接下来为了使用用户的不同需求,我们对建立了一个工厂模式,用户需要什么类型的手机,只有下单了,我们都可以直接生产成型:
##### SMFactoryImpl.h

* 提供类方法返回手机

```

#import <Foundation/Foundation.h>
#import "SMMobilePhone.h"
//选择生产什么手机
typedef enum : NSInteger{
    IPhone,
    Android,
}IPhoneType;

@protocol SMFactory <NSObject>
//提供类方法直接返回手机
+(SMMobilePhone*)creatMobileWithType:(IPhoneType)type;
@end
@interface SMFactoryImpl : NSObject<SMFactory>

@end

```

##### SMFactoryImpl.m

* 利用枚举判断手机类型,实例化手机类(此处可以继续添加不同种类的手机)
* 利用了类的多态形式,返回值是父类,工厂生产出来的是子类

```
#import "SMFactoryImpl.h"
@implementation SMFactoryImpl


+(SMMobilePhone *)creatMobileWithType:(IPhoneType)type{
    
    switch (type) {
        case IPhone:
            return [[SMIPhone alloc]init];
            break;
        case Android:
            return [[SMAndroid alloc]init];
            break;
    }
}
@end

```

Test.m

* 代码测试

```
    
    SMMobilePhone * iphone = [SMFactoryImpl creatFactoryWithType:IPhone];
    SMMobilePhone * android = [SMFactoryImpl creatFactoryWithType:Android];
    [iphone useCall];
    [android useCall];

//打印结果
//Design4OC[3636:398753] SMIPhone类初始化中
//Design4OC[3636:398753] SMAndroid类初始化中
//Design4OC[3636:398753] 使用SMIPhone,呼叫10086中...
//Design4OC[3636:398753] 使用SMAndroid,呼叫10086中...

```

#### 3. 用途:
工厂模式的用途非常广泛,可以基于面向对象的三大特性达到不同的效果,比如复杂类的构建过程(封装),父类指针可以指向子类对象(多态),也可以减低业务之间的耦合度.


## 二.策略模式
#### 1.定义:
**策略模式(Strategy)** : 它定义了算法家族,分别封装起来,让它们之间可以**相互替换**,此模式让算法的改变,不会影响到算法的客户端.

用通俗一点的话来说,就是更改算法,不需要大量改动客户端内容.

#### 2.模式:
比如现在商场是按原价将货物售出,但是遇到周年庆,老板打算让所有商品都按9.5折出售,这个业务很简单,只需要在代码上乘以一个系数就可以了(此时已经修改了客户端源码,有不妥之处).

过了一段时间以后,老板大婚,决定让商场里面的所有货物都打8.0出售,此时是不是我们又要去修改代码才能改变折扣呢?

...为了将临近过期的货物进口售出,此时老板决定临近过期的商品3.0折出售,另外,如果客户买满300减免100元.在业务不断变化的情况下,如果要经常修改源码才能满足业务需求的话,那可能要思考一下是否要改变一下代码的构造.

我们引入一个更为简单的例子来引入策略模式.

我们熟悉的钢铁侠既能在陆地急速奔跑,也能在水中潜行,更不要说在天空自由飞翔了,那么,每次切换不同模式,我们都可以理解为有一套最优的策略(算法)来适应陆地,海水和天空.

我们先定义个接口类来统一方法的调用:

##### IStrategy.h

* operate含有相关操作 
 
```

#import <Foundation/Foundation.h>

@protocol IStrategy <NSObject>
-(void)operate;
@end

```

##### STContext.h

* 上下文,用来对策略(算法)的引用,使用初始化方法initWithIstragty赋值id<IStrategy>引用


```
#import <Foundation/Foundation.h>
#import "IStrategy.h"
@interface STContext : NSObject<IStrategy>
+(instancetype)initWithIstragty:(id<IStrategy>)iStrategy;
@end

```
##### STContext.m

* 此处只要实现了算法接口的类都可以当做实现类id传入,内部获取到id的引用以后,直接调用同名方法operate,内部再调用id的operate方法,直到现在,STContext不需要管id的实现,主要对接口调用即可.(可以慢慢体会面向接口编程的好处.)

```

#import "STContext.h"
@interface STContext()
@property (nonatomic , strong ) STContext *impl;
@end
@implementation STContext

+(instancetype)initWithIstragty:(id<IStrategy>)iStrategy{
    STContext * i =  [[STContext alloc] init];
    i.impl = iStrategy;
    return i;
    
}
-(void)operate{
    
    [self.impl operate];
}
@end


```
然后有三个实现了IStrategy接口的类,分别是:**STFly**,**STSwimming**,**STSwimming**

```
#import "IStrategy.h"
@interface STFly : NSObject<IStrategy>
@end
--------------------
#import "IStrategy.h"
@interface STSwimming : NSObject<IStrategy>
@end
--------------------
#import "IStrategy.h"
@interface STRunning : NSObject<IStrategy>
@end
```
##### .m
* 此处是各个.m文件对接口的实现,对号入座即可.

```
-(void)operate{
    NSLog(@"启动飞行模式");//fly
    NSLog(@"启动游泳模式");//swimming
    NSLog(@"启动奔跑模式");//running
}
```

##### Test.m

* 此时你可以发现,主要简单的修改类,即可完全改变算法,切换成奔跑模式,飞行模式,潜行模式等
* 再如一开始商场的例子,虽然可能会写多一些类,但是主要给UI加上一个选择器变可以直接改变定价策略,修改价格和优惠

```
 //此处的STFly可以替换成Swimming或者Running
    STContext * is = [STContext initWithIstragty:[[STFly alloc]init]];
    NSLog(@"%@",is);
    [is operate];

```

#### 3. 用途:
1. 策略模式可以用来定义一系列是算法,对外提供的接口是相同的,只是改变了内部的实现即产生了不同的效果,核心作用就是用于封装算法
2. 原本我们可以将所有操作封装在一个类里面,每次增加策略就需要在里面增加`if else`或者`switch`语句,但是你会发现这样耦合度很高,不方便单个算法的测试--从而也引出了策略模式的另外一个好处:简单化了单元测试,每一个算法就是一个
3. 个人感觉这里算是一个面向对象特性的一个思想提升--运用了协议来统一工作方式,实质上这三个类是三个独立的存在的类,并没有规定统一父类,他们都有着自己的模式和算法.但我的思想暂时还没提高到策略模式的算法层面,只能暂时理解为解决问题的一种策略模式,可能还有偏颇!

## 三.装饰模式

#### 1.定义:
**装饰模式(Decorate)**,动态地给一个对象添加一些额外的职责,就增加功能来说,装饰模式比生成之类更为灵活

#### 2.模式:

如何理解装饰呢?比如说人身上的衣服,鞋子,裤子,帽子都是人身上装饰物品,没有装饰物的人依然有着能自由活动,吃饭,睡觉的基础功能.

再比如我们生活中常见的汽车,我们知道有低配版和高配版之分,只要价格给上去了,很多额外的装饰物都可以给你添上比如普通大灯换为疝气灯,普通沙发换成真皮沙发等等...首先可以理解为为某个类增加功能(增加特殊功能但不改变原有的类)
我们举一个简单的例子来说明一下,
首先我们有个组装的协议
DEComponent.h

* 该协议里面含有一个operation的基础操作方法,类比汽车的时候可以理解为:即使我没有真皮沙发,没有疝气大灯,依然可以执行最基础的行驶功能
 
```
#import <Foundation/Foundation.h>

@protocol DEComponent <NSObject>
-(void)operation;
@end

```

##### DEBaseCar.h

* 然后,我们以车为例子,当然需要有一个车的实例,该类遵守了协议,里面有operation方法
* baseCar独立存在,可以不知道有其他装饰类的存在,不影响最基础的工作

```
#import <Foundation/Foundation.h>
#import "DEComponent.h"
@interface DEBaseCar : NSObject<DEComponent>
@end

```

##### DEBaseCar.m

```
#import "DEBaseCar.h"

@implementation DEBaseCar
-(void)operation{
    NSLog(@"最基本的车,具备了安全行驶功能");
}
@end

```
以上功能,我们就具备了一辆最基础的车,但是现在这里车没有满足你的要求,你想要加装一些零部件,这个时候就有了新的需求

##### DECarComponent.h

* DECarDecorator是装饰者类,它定义了**extraComponentOn:**方法用来增强baseCar的功能,也对对象进行了包装,从而实现了每个装饰者类都可以有自己独特的功能(这样的结构会使得功能相互独立开来,有了很好的扩展),并在有需要的时候增强baseCar功能实现
* DECarDecorator它可以是抽象基类,也可以是单个装饰者类
* DESofaDecorator,DELightDecorator,DEDogDecorator作为装饰者类的子类,都有着自己独特的方法和属性
* DESofaDecorator作为普通类,只给车辆换上沙发
* DELightDecorator给汽车赋予了新亮度,有远光和近光的功能实现(装饰后拥有的独特方法)
* DEDogDecorator香车洋狗和美女都是配在一起的,而狗可以有自己的名字(其他类不会有狗,狗也不会有名字)

```

#import <Foundation/Foundation.h>
#import "DEComponent.h"
@interface DECarDecorator : NSObject<DEComponent>
@property (nonatomic , strong ,setter=extraComponentOn:) id<DEComponent> component;
@end

/*------------------作为装饰汽车的沙发(不含参数和方法)--------------------*/
@interface DESofaDecorator : DECarDecorator
@end
/*------------------作为装饰汽车的疝气灯(含私有方法)--------------------*/
@interface DELightDecorator : DECarDecorator
@end
/*------------------作为装饰汽车的养狗(含公有属性)--------------------*/
@interface DEDogDecorator : DECarDecorator
@property (nonatomic , strong ) NSString *name;
@end

```

##### DECarComponent.m
* 类的属性和方法已经在上面简要说明,可以忽略这部分不看.

```

#import "DECarDecorator.h"

@implementation DECarDecorator

-(void)extraComponentOn:(id<DEComponent>)component{
    _component = component;
}

-(void)operation{
    if (self.component != nil) {
        [self.component operation];
    }
}
@end

/*------------------作为装饰汽车的沙发(不含参数和方法)--------------------*/
@implementation DESofaDecorator
-(void)operation{
    [super operation];
    NSLog(@"高配版要的就是豪华沙发...");
}
@end
/*------------------作为装饰汽车的沙发(含私有方法)--------------------*/
//远光近光
typedef enum : NSUInteger {
    HighLight,
    LowLitght
} LightType;

@implementation DELightDecorator
-(void)operation{
    [super operation];
    NSLog(@"装饰了疝气灯以后可以开启照明功能");
    
    [self openLight:arc4random()%2];
    
}
-(void)openLight:(LightType)ligthType{
    switch (ligthType) {
        case HighLight:
            NSLog(@"开启了远光灯");
            break;
        case LowLitght:
            NSLog(@"开启了近光灯");
            break;
    }
}
@end
/*------------------作为装饰汽车的养狗(含公有属性)--------------------*/
@implementation DEDogDecorator
-(void)operation{
    [super operation];
    if (self.name ==nil) {
        NSLog(@"刚刚捡回来的小狗没有名字");
    }else{
        NSLog(@"%@,跟大家打招呼吧!",self.name);
    }
}
@end

```

##### Test.m

```
    NSLog(@"---最新出厂---");
    DEBaseCar * car = [[DEBaseCar alloc] init];
    NSLog(@"---把沙发,疝气灯,狗搬到装配车间---");
    DESofaDecorator * sofaDecorator = [[DESofaDecorator alloc] init];
    DELightDecorator * lightDecorator = [[DELightDecorator alloc] init];
    DEDogDecorator * dogDecorator = [[DEDogDecorator alloc] init];
    //设置狗的名字
    [dogDecorator setName:@"旺财"];
    NSLog(@"开始装饰,将需要的东西组装到车上");
    [sofaDecorator extraComponentOn:car];
    [lightDecorator extraComponentOn:sofaDecorator];
    [dogDecorator extraComponentOn:lightDecorator];
    NSLog(@"---------------------");
    [dogDecorator operation];
    //打印结果
    //Design4OC[8316:763030] ---最新出厂---
    //Design4OC[8316:763030] ---把沙发,疝气灯,狗搬到装配车间---
    //Design4OC[8316:763030] 开始装饰,将需要的东西组装到车上
    //Design4OC[8316:763030] ---------------------
    //Design4OC[8316:763030] 最基本的车,具备了安全行驶功能
    //Design4OC[8316:763030] 高配版要的就是豪华沙发...
    //Design4OC[8316:763030] 装饰了疝气灯以后可以开启照明功能
    //Design4OC[8316:763030] 开启了近光灯


```
#### 3. 用途:
1. 装饰者模式可以理解为在一个基础的类上,增强或增加某些功能的实现,大家在维护老代码的时候不一定方便直接修改源码(当增强的功能并不常用,这个时候其实不应该直接修改源码,额外的增加了这个类的职责和负担,违背了职责单一的原则)
2. 把核心功能和其他功能区分开,方便拆装和管理
3. 个人感觉,使用分类也能增加类的实现,在不导入分类的头文件时,其实类的功能也没有加载进来,也像是一种装饰者的特殊实现吧,以后有更多的体会再来更改现在的想法


## 四.工厂方法模式

#### 1.定义
**工厂方法模式(Factory Method)**:定义一个用于创建对象的接口,让子类决定实例化哪一个类.工厂方法使得一个类的实例化延迟到其子类.

#### 2. 模式

为何前面有说一个简单工厂模式,现在又来一个工厂方法模式?看到定义估计还比较模模糊糊,实际上工厂模式是简单工厂模式的抽象和推广.

简单工厂模式是在内部case判断返回什么内容给控制器,同一个工厂可以生产不同的产品,而如果需要修改产品的类型,就需要重新在内部部署生产设备,在工厂内部协调工作

而工厂模式是在控制器就选择好了要生成什么类型的类,不同的工厂生产不同的产品,每个工厂都有自己独特的产品,接到指令时不需要在内部协调就可以直接生产产品.先上代码:

##### FMMobilePhoneFactory.h

* FMFactoryProtocol: 是工厂模式的抽象接口,使子类有一个实例化方法
* FMMobilePhoneFactory:作为工厂基类,其他的工厂类应该继承该父类
* FMIPhoneFactory和FMAndroidFactory: 父类是FMMobilePhoneFactory,使用协议方法的时候可以实例化具体的产品

```

#import <Foundation/Foundation.h>
#import "FMMobilePhone.h"
@class FMMobilePhoneFactory;

//
@protocol FMFactoryProtocol<NSObject>
-(FMMobilePhone*)creatFactory;
@end
//工厂基类
@interface FMMobilePhoneFactory : NSObject<FMFactoryProtocol>

@end
//苹果工厂,继承工厂基类
@interface FMIPhoneFactory : FMMobilePhoneFactory
@end
//安卓工厂,继承工厂基类
@interface FMAndroidFactory : FMMobilePhoneFactory
@end

```

##### FMMobilePhoneFactory.m

* 不同的工厂生产不同的产品,基类不可直接使用,这里不再做判断


```
#import "FMMobilePhoneFactory.h"
#import "FMMobilePhone.h"
@implementation FMMobilePhoneFactory

-(FMMobilePhone*)creatFactory{
    return [[FMMobilePhone alloc]init];
}
@end
@implementation FMIPhoneFactory
-(FMMobilePhone *)creatFactory{
    return [[FMIPhone alloc]init];
}
@end

@implementation FMAndroidFactory
-(FMMobilePhone *)creatFactory{
    return [[FMAndroid alloc]init];
}
@end

```

##### FMMobilePhone.h
##### FMMobilePhone.m

* 产品类在简单工厂模式的时候已经讲过了,也比较简单,自己可以看看

```
#import <Foundation/Foundation.h>

@interface FMMobilePhone : NSObject
-(void)useCall;
@end
//苹果,继承手机基类
@interface FMIPhone : FMMobilePhone
@end
//安卓,继承手机基类
@interface FMAndroid : FMMobilePhone
@end


//-------------.m------------------

#import "FMMobilePhone.h"

@implementation FMMobilePhone
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%@类初始化中",self.class);
    }
    return self;
}
-(void)useCall{
    NSLog(@"使用%@,呼叫10086中...",self.class);
    
}
@end

@implementation FMIPhone@end

@implementation FMAndroid@end

```

##### Test.m

* 下面是控制器的调用,我们可以看到,其实两台代码完全相同,就只是在实例化工厂的时候选择了FMIPhoneFactory和FMAndroidFactory就可以改变产品的产品,避免了产品增多的时候要修改工厂类(实际上是违背了封闭-开放原则)

```
  FMMobilePhoneFactory * iphoneFactory = [[FMIPhoneFactory alloc]init];
    FMMobilePhone * iphone = [iphoneFactory creatFactory];
    [iphone useCall];
    
    FMMobilePhoneFactory * andoridFactory = [[FMAndroidFactory alloc]init];
    FMMobilePhone * andorid = [andoridFactory creatFactory];
    [andorid useCall];
    
     //FMIPhone类初始化中
     //使用FMIPhone,呼叫10086中...
     //FMAndroid类初始化中
     //使用FMAndroid,呼叫10086中...

```

#### 3.用途
1. 实际上是简单工厂模式的抽象和推广,克服了简单工厂模式违背了封闭-开放原则,又保持了封装对象的优点
2. 把从工厂的内部判断移动到了控制器,产生子类的选择更加灵活
3. 个人感觉,一直都习惯了在工厂类中做了条件判断来生产不同的产品类,而且每产生多一个产品就要多一个工厂类和产品类,工作量有所增加,如果能用运行时来产生不同的子类更好


## 五.原型模式
#### 1.定义
**原型模式(Prototype)**:用原型实例指定创建对象的种类,并且通过拷贝这些原型创建新的对象.

#### 2.模式
其实这篇文章就是要说明**复制**这个概念,网上也很多文章无数次分析深拷贝和浅拷贝了,这里就不在详细说明深拷贝和浅拷贝的内容了,深拷贝复制对象,浅拷贝复制引用地址.

现在来举例说明,我们有一个学生对象和书本对象,里面分别有如下属性:

PTStudent.h

* 学生手中有一本书,直接拿在手上看的,属性为:book
* 书包里面有很多书,用`NSMutableArray<PTBook*>` 存储
* 学生还有名字和年龄两个属性
* 学生还有不同的老师,用字符串来表示`NSMutableArray<NSString*>`(也可以理解为老师只有一个,大家共享这个字符串的资源)

###### PTStudent.h

```
#import <Foundation/Foundation.h>
#import "PTBook.h"
@interface PTStudent : NSObject<NSCopying>

@property (nonatomic , strong ) PTBook *book;
@property (nonatomic , strong ) NSString *name;
@property (nonatomic , assign ) int age;
@property (nonatomic , strong ) NSMutableArray<NSString*> *teachers;
@property (nonatomic , strong ) NSMutableArray<PTBook*> *package;

@end


```

##### PTBook.h

* 书本有名字

```
#import <Foundation/Foundation.h>

@interface PTBook : NSObject<NSCopying>
@property (nonatomic , strong ) NSString *bookName;
@end

```
##### PTBook.m

* ``book.bookName = [NSString stringWithFormat:@"%@",self.bookName];``这个是作为深复制存在,开辟了新的内存空间
* `book.bookName = [self.bookName copy];` 此时使用的是浅复制,共享常量字符串的内容,可以结合内存地址查看

```
#import "PTBook.h"

@implementation PTBook
-(id)copyWithZone:(NSZone *)zone{
    
     book.bookName = [NSString stringWithFormat:@"%@",self.bookName];
    /*
     (lldb) p student.book.bookName
     (__NSCFConstantString *) $0 = 0x00000001043616b0 @"B"
     (lldb) p otherStudent.book.bookName
     (NSTaggedPointerString *) $1 = 0xa000000000000421 @"B"
     (lldb)
     
     
     */
    
    
//book.bookName = [self.bookName copy];
    
    /*
     (lldb) p student.book.bookName
     (__NSCFConstantString *) $0 = 0x00000001074466b0 @"B"
     (lldb) p otherStudent.book.bookName
     (__NSCFConstantString *) $1 = 0x00000001074466b0 @"B"
     (lldb)
     */

}
@end

```

##### PTStudent.m


* 常量字符串在常量区共享,也可以用字符串对象开辟新的内存空间
* 由于age是NSUInteger类型的，属于基本数据类型，则直接赋值
* book对象遵守了NSCopying协议,里面已经处理,可以直接用copy方法深复制
* teachers作为了常量字符串容器,里面的字符串是共享的,但是容器是作了深拷贝
* package里面装有book对象,除了拿到新容器外,还需要把book存进容器里面,这个时候就可以使用遍历或者`copyItems:YES`这种方式(后来才找到有这个方法...)


```
#import "PTStudent.h"
@interface PTStudent()


@end
@implementation PTStudent

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        PTBook* book = [[PTBook alloc]init];
        book.bookName = @"新华字典";
        
        PTBook* bookA = [[PTBook alloc]init];
        book.bookName = @"A";
        
        PTBook* bookB = [[PTBook alloc]init];
        book.bookName = @"B";
        
        self.book = book;
        self.name = @"小明";
        self.age = 18;
        self.teachers = [NSMutableArray arrayWithObjects:@"张飞",@"刘备",@"关羽", nil];
        self.package=[NSMutableArray arrayWithObjects:bookA,bookB, nil];
    }
    return self;
}
-(id)copyWithZone:(NSZone *)zone{
    PTStudent* student = [[[self class] allocWithZone:zone]init];
    student.age = self.age;
    student.book = [self.book copy];
    //这里会深复制,再开辟内存空间
    student.name = [NSString stringWithFormat:@"%@",self.name];
    student.teachers = [NSMutableArray arrayWithArray:self.teachers];
    //NSMutableArray<PTBook*> *package;
    student.package = [NSMutableArray array];
    
 //原本是打算通过遍历的方法来深复制
//    [self.package enumerateObjectsUsingBlock:^(PTBook * _Nonnull book, NSUInteger idx, BOOL * _Nonnull stop) {
//        [student.package addObject:[book copy]];
//    }];

    //后来发现一种不需要遍历的方法,如果你只需要数组中数组第一层的深拷贝,那么
    student.package= [[NSMutableArray alloc] initWithArray:self.package copyItems:YES];
    
    
    //这里是浅复制
    //指向的是常量区
    ////student.name = [self.name copy];
    //此处数组可以复制,但是里面每一个元素的指针都是没有被复制的,和原来的类型指向同一内容
    //student.teachers = [self.teachers mutableCopy];
//    student.package = [NSMutableArray mutableCopy];
    return student;
}

@end

```

#### 3.用途
1. 需要重复创建对象的时候可以考虑使用原型模式
2. 原型模式也属于创建模式的一种,工厂模式会new一个全新的对象,使用原型模式就可以拷贝一份对象出来,工厂模式和原型模式其实效率差不多,但是如果在大量创建数据的时候,原型模式则更加节省资源,效率更高.





