//
//  SimpleFactory.m
//  Design4OC
//
//  Created by vshiron on 17/4/10.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SMFactoryImpl.h"
#import "SMMobilePhone.h"
@interface SimpleFactory : XCTestCase

@end

@implementation SimpleFactory

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    SMMobilePhone * iphone = [SMFactoryImpl creatFactoryWithType:IPhone];
    SMMobilePhone * android = [SMFactoryImpl creatFactoryWithType:Android];
    [iphone useCall];
    [android useCall];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
