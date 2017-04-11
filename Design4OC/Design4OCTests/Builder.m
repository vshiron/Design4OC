//
//  Builder.m
//  Design4OC
//
//  Created by vshiron on 17/4/1.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "BUPlaneDirector.h"
#import "BUHelicopterBuilder.h"
#import "BUAirplaneBuilder.h"
@interface Builder : XCTestCase

@end

@implementation Builder

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    BUPlaneDirector* planeDirector = [[BUPlaneDirector alloc]init];
    BUHelicopterBuilder* helicopterBuilder = [[BUHelicopterBuilder alloc]init];
    BUAirplaneBuilder* airplaneBuilder = [[BUAirplaneBuilder alloc]init];
    
    BUPlane* helicopter = [planeDirector constructPlane:helicopterBuilder];
    BUPlane* airplane =   [planeDirector constructPlane:airplaneBuilder];
    
    
    [helicopter show];
    [airplane show];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
