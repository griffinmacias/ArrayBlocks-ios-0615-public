//
//  NSArray+mapWithOperation.h
//  arrayBlocks
//
//  Created by Mason Macias on 7/7/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (mapWithOperation)
-(void)mapWithOperation:(void(^)(id obj, NSUInteger idx))enumerator;
- (void)selectWithComparitor:(void (^)(id obj))evenNumbers;
@end
