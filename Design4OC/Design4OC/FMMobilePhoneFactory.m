//
//  FMMobilePhoneFactory.m
//  Design4OC
//
//  Created by vshiron on 17/4/15.
//  Copyright © 2017年 Apress. All rights reserved.
//

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
