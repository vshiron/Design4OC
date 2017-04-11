//
//  State.m
//  Design4OC
//
//  Created by vshiron on 17/4/7.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SEContext.h"
#import "SEOneDayState.h"
#import "SEMorningState.h"
@interface State : XCTestCase

@end

@implementation State

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
//    NSMutableArray
    SEMorningState* morning = [[SEMorningState alloc]init];
    
    SEContext * context = [[SEContext alloc] initWithState:morning];
    [context request];
    [context request];
    [context request];
    [context request];
    [context request];
    [context request];

    NSLog(@"--->%@",[self abc](@"cde"));
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

-(NSString* (^)(NSString* abc))abc{
    
    return ^(NSString * abc){
        NSString* str = [NSString stringWithFormat:@"abc:%@",abc];
        return str;
    };
}
@end
