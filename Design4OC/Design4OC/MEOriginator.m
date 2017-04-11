//
//  MEOriginator.m
//  Design4OC
//
//  Created by vshiron on 17/4/10.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "MEOriginator.h"

@implementation MEOriginator

-(MEMemento*)creatMemento{
    return [[MEMemento alloc] initWithState:self.state];
}
-(void)show{
    NSLog(@"%@",self.state);
}
-(void)setMemento:(MEMemento *)memento{
    self.state = memento.state;
}
@end
