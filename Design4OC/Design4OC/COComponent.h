//
//  COComponent.h
//  Design4OC
//
//  Created by vshiron on 17/4/10.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol COComponent <NSObject>
@property (nonatomic , strong ) NSString *name;
-(id<COComponent>)initWithName:(NSString*)name;
-(void)add:(id<COComponent>)component;
-(void)remove:(id<COComponent>)component;
-(void)display:(int)depth;
@end
