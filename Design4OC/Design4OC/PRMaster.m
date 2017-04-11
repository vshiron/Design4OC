//
//  PRMaster.m
//  Design4OC
//
//  Created by vshiron on 17/3/31.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "PRMaster.h"

@implementation PRMaster
-(void)buyShoes{
    NSLog(@"%@真实的请求:买鞋子",self.class);
}
-(void)buyClothes{
    NSLog(@"%@真实的请求:买衣服",self.class);
}
@end
