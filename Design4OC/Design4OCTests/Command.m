//
//  Command.m
//  Design4OC
//
//  Created by vshiron on 17/4/11.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CDCommand.h"
#import "CDWarship.h"
#import "CDMasters.h"
@interface Command : XCTestCase

@end

@implementation Command

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    CDWarship* warship = [[CDWarship alloc]init];
    CDCommand* attShop = [[CDAttackShipCommand alloc] initWithWarship:warship];
    CDCommand* attPlane = [[CDAttackAirplaneCommand alloc] initWithWarship:warship];
    
    CDMasters* master = [[CDMasters alloc]init];
    //每下一次命令攻击一次
    //攻击潜艇
    [master setOrder:attShop];
    [master notify];
    //攻击飞机
    [master setOrder:attPlane];
    [master notify];
    

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
