//
//  Bridge.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BRBus.h"
#import "BRCar.h"
#import "BRStreet.h"
#import "BRSpeedWay.h"
#import "BRMan.h"
#import "BRWoman.h"
@interface Bridge : XCTestCase

@end

@implementation Bridge

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    BRMan * man = [[BRMan alloc] init];
    BRSpeedWay * sw = [[BRSpeedWay alloc] init];
    BRCar * car1 = [[BRCar alloc] init];
    [man setRoad:sw];
    [sw setCar:car1];
    [man run];
    
    NSLog(@"-------------");
    BRWoman* woman = [[BRWoman alloc]init];
    BRStreet * st = [[BRStreet alloc] init];
    BRBus * bus1 = [[BRBus alloc] init];
    [woman setRoad:st];
    [st setCar:bus1];
    [woman run];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
