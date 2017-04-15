//
//  FactroyMethod.m
//  Design4OC
//
//  Created by vshiron on 17/4/15.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FMMobilePhone.h"
#import "FMMobilePhoneFactory.h"
@interface FactroyMethod : XCTestCase

@end

@implementation FactroyMethod

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    FMMobilePhoneFactory * iphoneFactory = [[FMIPhoneFactory alloc]init];
    FMMobilePhone * iphone = [iphoneFactory creatFactory];
    [iphone useCall];
    
    FMMobilePhoneFactory * andoridFactory = [[FMAndroidFactory alloc]init];
    FMMobilePhone * andorid = [andoridFactory creatFactory];
    [andorid useCall];

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
