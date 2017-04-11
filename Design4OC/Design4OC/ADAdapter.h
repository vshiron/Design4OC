//
//  ADAdapter.h
//  Design4OC
//
//  Created by vshiron on 17/3/31.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "ADAdaptee.h"
#import "ADTarget.h"
//模式1:需要继承被适配的类和目标接口
@interface ADAdapter : ADAdaptee<ADTarget>

@end

//模式2:不需要继承,实现接口,实例化的时候需要传入被适配的对象,避免了单继承代理的负面影响
@interface ADAdapterExtra : NSObject<ADTarget>
-(instancetype)initWhitADAdaptee:(ADAdaptee*)adaptee;
@end
