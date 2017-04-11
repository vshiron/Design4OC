//
//  AbstractFactory.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AFRequestTool.h"
#import "AFFactory.h"
#import "AFDatabasesTool.h"
#import "AFMACFactory.h"
#import "AFIPhoneFactory.h"
@interface AbstractFactory : XCTestCase

@end

@implementation AbstractFactory

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    
//    id<AFFactory>  factory = [[AFIPhoneFactory alloc] init];//在iPhone上使用了AFN+SQLite方案
    id<AFFactory> factory = [[AFMACFactory alloc] init];//在MAC上使用了ASI+coreData方案
    id<AFRequestTool> requestTool =  [factory creatRequestTool];
    id<AFDatabasesTool> databsesTool = [factory creatDatabasesTool];
    [requestTool get];
    [requestTool post];
    [databsesTool select];
    [databsesTool update];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
