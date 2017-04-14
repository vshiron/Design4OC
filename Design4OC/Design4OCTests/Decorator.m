//
//  Decorator.m
//  Design4OC
//
//  Created by vshiron on 17/4/13.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DEBaseCar.h"
#import "DEComponent.h"
#import "DECarDecorator.h"
@interface Decorator : XCTestCase

@end

@implementation Decorator

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    NSLog(@"---最新出厂---");
    DEBaseCar * car = [[DEBaseCar alloc] init];
    NSLog(@"---把沙发,疝气灯,狗搬到装配车间---");
    DESofaDecorator * sofaDecorator = [[DESofaDecorator alloc] init];
    DELightDecorator * lightDecorator = [[DELightDecorator alloc] init];
    DEDogDecorator * dogDecorator = [[DEDogDecorator alloc] init];
    //设置狗的名字
    [dogDecorator setName:@"旺财"];
    NSLog(@"开始装饰,将需要的东西组装到车上");
    [sofaDecorator extraComponentOn:car];
    [lightDecorator extraComponentOn:sofaDecorator];
    [dogDecorator extraComponentOn:lightDecorator];
    NSLog(@"---------------------");
    [dogDecorator operation];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
