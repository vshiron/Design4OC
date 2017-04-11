
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
+(SMMobilePhone*)creatFactoryWithType:(IPhoneType)type;
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


+(SMMobilePhone *)creatFactoryWithType:(IPhoneType)type{
    
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
2017-04-10 23:31:08.717 Design4OC[3636:398753] SMIPhone类初始化中
2017-04-10 23:31:08.717 Design4OC[3636:398753] SMAndroid类初始化中
2017-04-10 23:31:08.718 Design4OC[3636:398753] 使用SMIPhone,呼叫10086中...
2017-04-10 23:31:08.718 Design4OC[3636:398753] 使用SMAndroid,呼叫10086中...

```

#### 3. 用途:
工厂模式的用途非常广泛,可以基于面向对象的三大特性达到不同的效果,比如复杂类的构建过程(封装),父类指针可以指向子类对象(多态),也可以减低业务之间的耦合度.


#### 待续...(下一篇为策略模式)

