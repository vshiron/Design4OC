//
//  Strategy.m
//  Design4OC
//
//  Created by vshiron on 17/4/11.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "STContext.h"
#import "STRunning.h"
#import "STSwimming.h"
#import "STFly.h"
@interface Strategy : XCTestCase

@end

@implementation Strategy

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    //此处的STFly可以替换成Swimming或者Running
    STContext * is = [STContext initWithIstragty:[[STFly alloc]init]];
    NSLog(@"%@",is);
    [is operate];

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
