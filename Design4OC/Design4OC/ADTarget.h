//
//  ADTarget.h
//  Design4OC
//
//  Created by vshiron on 17/3/31.
//  Copyright © 2017年 Apress. All rights reserved.
//
/*

 ADAdapter * ad1 = [[ADAdapter alloc]init];
 [ad1 request];
 
 ADAdapterExtra * ad2 = [[ADAdapterExtra alloc] initWhitADAdaptee: [[ADAdaptee alloc]init]];
 [ad2 request];
*/
#import <Foundation/Foundation.h>

@protocol ADTarget <NSObject>
-(void)request;
@end
