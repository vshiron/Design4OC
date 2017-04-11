//
//  Observer.m
//  Design4OC
//
//  Created by vshiron on 17/4/4.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OBSubject.h"
#import "OBStudentX.h"
#import "OBStudentA.h"
#import "OBStudentB.h"
#import "OBEStudentX.h"
@interface Observer : XCTestCase

@end

@implementation Observer

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.

//    OBSubject* subject = [[OBSubject alloc] init];
//    OBStudentA * stuA = [[OBStudentA alloc] initWhitSubject:subject AndName:@"X"];
//    OBStudentB * stuB = [[OBStudentB alloc] initWhitSubject:subject AndName:@"Y"];
//    [subject attach:stuA];
//    [subject attach:stuB];
//    
//    [subject notify];
//    OBEStudentX * x = [[OBEStudentX alloc] init];
//    [[NSNotificationCenter defaultCenter] addObserver:x selector:@selector(notify) name:@"x.update" object:nil];
//    NSNotification * noti = [NSNotification notificationWithName:@"x.update" object:nil];
//    [[NSNotificationCenter defaultCenter] postNotification:noti];
//    [[NSNotificationCenter defaultCenter] removeObserver:x];

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
