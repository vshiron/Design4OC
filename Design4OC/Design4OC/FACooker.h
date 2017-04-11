//
//  FACooker.h
//  Design4OC
//
//  Created by vshiron on 17/3/31.
//  Copyright © 2017年 Apress. All rights reserved.
/*  
 厨师类(外观类),统筹所有原料类
 知道客户需要什么类型的食物,将原料加工成成品
 
 外观类知道如何"组合"原料类来使得客户端调用的时候不再面对每一个原料类
 原料类内容并没有任何修改,而且可以不知道外观类的存在
 
 应用:
 1.在设计初期分层需要,比如一个控制器需要拿到多份模型来产生业务,此时可以考虑在:
        控制器<--多个模型
 的基础上:
        控制器 <--外观(统一dao接口,类似于Java中的service层) <--多个模型
 2.在开发迭代的过程中,如果零碎的小类比较多,多次大量调用比较麻烦的话,可以考虑该模式
 3.在产品后期维护的过程中,随着时间的推移变得难以维护和扩展的时候,可以考虑有整合一个逻辑清晰的接口或者类来方便日后使用
 
 FACooker* fa = [[FACooker alloc]init];
 [fa methodA];
 [fa methodB];
*/
#import <Foundation/Foundation.h>

@interface FACooker : NSObject
-(void)methodA;
-(void)methodB;
@end
