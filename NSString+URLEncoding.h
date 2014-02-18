//
//  NSString+URLEncoding.h
//  proof
//
//  Created by Jon Carl Matthews on 18/02/2014.
//  Copyright (c) 2014 Jon Carl Matthews. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (URLEncoding)
    -(NSString *)urlEncodeUsingEncoding:(NSStringEncoding)encoding;
@end
