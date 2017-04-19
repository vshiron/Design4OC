//
//  PTBook.m
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "PTBook.h"

@implementation PTBook
-(id)copyWithZone:(NSZone *)zone{
    PTBook* book = [[[self class] allocWithZone:zone]init];
    book.bookName = [NSString stringWithFormat:@"%@",self.bookName];
    /*
     (lldb) p student.book.bookName
     (__NSCFConstantString *) $0 = 0x00000001043616b0 @"B"
     (lldb) p otherStudent.book.bookName
     (NSTaggedPointerString *) $1 = 0xa000000000000421 @"B"
     (lldb)
     
     
     */
    
    
//    book.bookName = [self.bookName copy];
    
    /*
     (lldb) p student.book.bookName
     (__NSCFConstantString *) $0 = 0x00000001074466b0 @"B"
     (lldb) p otherStudent.book.bookName
     (__NSCFConstantString *) $1 = 0x00000001074466b0 @"B"
     (lldb)
     */
    return book;
}
@end
