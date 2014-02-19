//
//  SOApiRequest.m
//  proof
//
//  Created by Jon Carl Matthews on 19/02/2014.
//  Copyright (c) 2014 Jon Carl Matthews. All rights reserved.
//

#import "ApiRequest.h"

@implementation ApiRequest

-(id) init
{
    self = [super init];
        
    // Set the defaults...
    [self setProtocol:@"http"];
    
    [self setType:@"GET"];
    
    return self;
    
}

-(id) initWithDomain: (NSString *) d
{
    self = [self init];
    
    [self setDomain:d];
    
    return self;
}

-(NSURL *) getUrl
{

    // Convert params into string
    NSMutableString *paramString = [NSMutableString stringWithString:@"?"];
    
    int i = 1;
    
    for (NSString *key in [self params]) {
        
        NSString *value = [[self params] objectForKey:key];
        
        [paramString appendString:key];
        
        [paramString appendString:@"="];
        
        [paramString appendString:value];
        
        if (i < [[self params] count]){
            [paramString appendString:@"&"];
        }
        
        i++;
        
    }
    
    // Build the NSUrl object.
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@://%@%@%@",
                                                                    [self protocol],
                                                                    [self domain],
                                                                    [self method],
                                                                    paramString]];
    
    return url;
}

-(int) makeRequest
{
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[self getUrl]];
    
    [request setHTTPMethod:[self type]];
    
    NSError *error;
    NSHTTPURLResponse *response;
    NSData *data = [NSURLConnection sendSynchronousRequest:request
                                         returningResponse:&response
                                                     error:&error];
    
    [self setError: error];
    [self setResponse: response];
    [self setData: data];
    
    // Connection error?
    if (error){
        return APIREQUEST_ERROR_CONN;
    }
    
    return APIREQUEST_REQUEST_SUCCESS;
}

@end
