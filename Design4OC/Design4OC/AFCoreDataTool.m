//
//  AFCoreDataTool.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "AFCoreDataTool.h"

@implementation AFCoreDataTool
-(void)update{
    NSLog(@"使用了%@数据库的%@方法",self.class,NSStringFromSelector(_cmd));
}
-(void)select{
    NSLog(@"使用了%@数据库的%@方法",self.class,NSStringFromSelector(_cmd));
    
}
@end
