//
//  AFAFNetworkingTool.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "AFAFNetworkingTool.h"

@implementation AFAFNetworkingTool
-(void)get{
      NSLog(@"使用了%@的%@请求",self.class,NSStringFromSelector(_cmd));
}
-(void)post{
        NSLog(@"使用了%@的%@请求",self.class,NSStringFromSelector(_cmd));
}
@end
