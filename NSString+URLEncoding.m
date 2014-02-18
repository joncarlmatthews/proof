//
//  NSString+URLEncoding.m
//  proof
//
//  Created by Jon Carl Matthews on 18/02/2014.
//  Copyright (c) 2014 Jon Carl Matthews. All rights reserved.
//

#import "NSString+URLEncoding.h"

@implementation NSString (URLEncoding)
    -(NSString *)urlEncodeUsingEncoding:(NSStringEncoding)encoding
    {
        NSString *result = [NSString stringWithUTF8String:"foo"];
        
        return result;
    }
@end
