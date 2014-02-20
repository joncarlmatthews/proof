//
//  NSString+HTMLUtilities.m
//  proof
//
//  Created by Jon Carl Matthews on 20/02/2014.
//  Copyright (c) 2014 Jon Carl Matthews. All rights reserved.
//

#import "NSString+HTML.h"

@implementation NSString (HTMLUtilities)

-(NSString *) stringByStrippingHTML
{
    NSRange r;
    NSString *s = [self copy];
    while ((r = [s rangeOfString:@"<[^>]+>" options:NSRegularExpressionSearch]).location != NSNotFound)
        s = [s stringByReplacingCharactersInRange:r withString:@""];
    return s;
}

@end
