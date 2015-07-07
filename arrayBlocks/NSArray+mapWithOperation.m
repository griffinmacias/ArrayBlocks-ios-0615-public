//
//  NSArray+mapWithOperation.m
//  arrayBlocks
//
//  Created by Mason Macias on 7/7/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import "NSArray+mapWithOperation.h"

@implementation NSArray (mapWithOperation)

-(void)mapWithOperation:(void(^)(id obj, NSUInteger idx))enumerator
{
    NSArray *array = self;
    for (NSInteger i = 0; i < array.count; i++)
    {
        NSNumber *number = array[i];
        NSNumber *newNumber = @(number.intValue + 1);

        enumerator(newNumber, i);
        
    }
}
    
- (void)selectWithComparitor:(void (^)(id obj))evenNumbers
{
    NSArray *numbers = self;
    NSMutableArray *theEvenNumbers = [NSMutableArray array];
    
    for (NSNumber *obj in numbers) {
        if (obj.integerValue % 2 == 0) {
            [theEvenNumbers addObject:obj];
        }
    }
    
    evenNumbers(theEvenNumbers);
    
    
}

@end
