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
    // Copy of the string value
    NSString *s = [self copy];
    
    NSRange r;

    // Loop through replacing regex with ""
    while ((r = [s rangeOfString:@"<[^>]+>" options:NSRegularExpressionSearch]).location != NSNotFound){
        s = [s stringByReplacingCharactersInRange:r withString:@""];
    }
    
    return s;
}

@end
