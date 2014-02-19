//
//  ApiRequest.h
//  proof
//
//  Created by Jon Carl Matthews on 19/02/2014.
//  Copyright (c) 2014 Jon Carl Matthews. All rights reserved.
//

#import <Foundation/Foundation.h>

#define APIREQUEST_REQUEST_SUCCESS 1
#define APIREQUEST_ERROR_CONN 2

@interface ApiRequest : NSObject

@property NSString *protocol;

@property NSString *domain;

@property NSString *method;

@property NSDictionary *params;

@property NSString *type;

@property NSError *error;

@property NSHTTPURLResponse *response;

@property NSData *data;

-(id) initWithDomain: (NSString *) d;

-(NSURL *) getUrl;

-(int) makeRequest;

@end
