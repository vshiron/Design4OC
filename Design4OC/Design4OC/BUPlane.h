//
//  BUPlane.h
//  Design4OC
//
//  Created by vshiron on 17/4/1.
//  Copyright © 2017年 Apress. All rights reserved.
/*  
 Product(Plane):表示被构造的复杂对象或具体的产品(这里用parts来表示)。
 BuilderImpl(指本例中:BUHelicopterBuilder/BUPlaneBuilder)实现类创建该产品的内部
 表示并定义它的装配过程(addPlanePart:)
 包含定义组成部件的类，包括将这些部件装配成最终产品的接口。
*/
#import <Foundation/Foundation.h>

@interface BUPlane : NSObject
@property (nonatomic , strong ) NSMutableArray<NSString*> *parts;
-(void)addPlanePart:(NSString*)part;
-(void)show;
@end
