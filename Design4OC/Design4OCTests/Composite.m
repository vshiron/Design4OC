//
//  Composite.m
//  Design4OC
//
//  Created by vshiron on 17/4/10.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "COLeaf.h"
#import "COComposite.h"
@interface Composite : XCTestCase

@end

@implementation Composite

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    COComposite * root = [[COComposite alloc]initWithName:@"root"];
    //增加叶子节点A,B
    COLeaf * leafA = [[COLeaf alloc]initWithName:@"leaf - A"];
    COLeaf * leafB = [[COLeaf alloc]initWithName:@"leaf - B"];
    [root add:leafA];
    [root add:leafB];
    
    COComposite * compX = [[COComposite alloc] initWithName:@"COComposite - X"];
    COLeaf * leafXA = [[COLeaf alloc]initWithName:@"leaf - A"];
    COLeaf * leafXB = [[COLeaf alloc]initWithName:@"leaf - B"];
    [compX add:leafXA];
    [compX add:leafXB];
    //A,B,X平级
    [root add:compX];
    
    //Z,XA,XB平级
    COComposite * compZ = [[COComposite alloc] initWithName:@"COComposite - Z"];
    COLeaf * leafZC = [[COLeaf alloc]initWithName:@"leaf - ZC"];
    COLeaf * leafZD = [[COLeaf alloc]initWithName:@"leaf - ZD"];
    [compZ add:leafZC];
    [compZ add:leafZD];
    
    [compX add:compZ];
    
    [root display:1];

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
