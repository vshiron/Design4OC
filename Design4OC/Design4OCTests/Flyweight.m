//
//  Flyweight.m
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FWUser.h"
#import "FWWebSite.h"
#import "FWWebSiteFactory.h"
#import "FWInnerWebSite.h"
@interface Flyweight : XCTestCase

@end

@implementation Flyweight

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    FWWebSiteFactory* factory = [[FWWebSiteFactory alloc] init];
    FWWebSite* webSiteX = [factory getWebSiteCategory:@"微博"];
     FWWebSite* webSiteY = [factory getWebSiteCategory:@"微信"];
     FWWebSite* webSiteZ = [factory getWebSiteCategory:@"飞信"];
    
    FWInnerWebSite* webSiteW = [[FWInnerWebSite alloc]initWithWebName:@"公司内网"];
    
    FWUser* userA = [[FWUser alloc]initWithName:@"小A"];
    FWUser* userB = [[FWUser alloc]initWithName:@"小B"];
    FWUser* userC = [[FWUser alloc]initWithName:@"小C"];
    FWUser* userD = [[FWUser alloc]initWithName:@"小D"];
    FWUser* userE = [[FWUser alloc]initWithName:@"小E"];
    FWUser* userF = [[FWUser alloc]initWithName:@"小F"];
    
    
    [webSiteX use:userA];
    [webSiteX use:userB];
    
    [webSiteY use:userC];
    [webSiteY use:userD];
    
    [webSiteZ use:userE];
    [webSiteZ use:userF];
    
    //内网集群,整个公司的人员的有,省略一般
    /*内网的列子是为了说明可以有独立实现FWWebSiteProtocol协议的类
     它不在制造工厂中,不被共享(不需要共享的类可以这样实现)
    */
    [webSiteW use:userA];
    [webSiteW use:userB];
    [webSiteW use:userC];

    
    NSLog(@"外网的总个数是:%d", [factory getWebSiteCount]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
