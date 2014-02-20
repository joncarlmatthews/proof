//
//  NSString+URLEncoding.m
//  proof
//
//  Created by Jon Carl Matthews on 18/02/2014.
//  Copyright (c) 2014 Jon Carl Matthews. All rights reserved.
//

#import "NSString+URL.h"

@implementation NSString (URLEncoding)

    -(NSString *)urlEncode
    {
        CFStringRef string = CFURLCreateStringByAddingPercentEscapes(nil,
                                                                        (CFStringRef)self,
                                                                        nil,
                                                                        (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
                                                                        kCFStringEncodingUTF8);
        // Convert CFString to NSString object.
        NSString *encodedNSString = (__bridge NSString *)string;
        
        return encodedNSString;
    }

@end
