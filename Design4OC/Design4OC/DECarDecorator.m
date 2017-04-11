//
//  DECarComponent.m
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "DECarDecorator.h"

@implementation DECarDecorator

-(void)setComponent:(id<DEComponent>)component{
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
