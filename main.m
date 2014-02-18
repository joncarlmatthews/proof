//
//  main.m
//  proof
//
//  Created by Jon Carl Matthews on 17/02/2014.
//  Copyright (c) 2014 Jon Carl Matthews. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        bool debug = false;
        
        if (debug){
            NSLog(@"%i", argc);
        }
        
        if (debug){
        
            // First argument in argv is the path of this application's binary.
            for (int i=0; i<argc; i++) {
                
                NSString *str = [NSString stringWithUTF8String:argv[i]];
                
                NSLog(@"argv[%d] = '%@'", i, str);
                
            }
        }
        
        // Check that we have at least one argument.
        if (argc <= 1) {
            
            // Output usage.
            printf("usage: proof [search term]\n");
            
            // leave with code 1.
            exit(1);
        }
        
        // URL of the API's search method
        NSString *url = [NSString stringWithUTF8String:"http://api.stackoverflow.com/1.1/search"];
        
        // Maximum number of results to display.
        int maxResults = 5;
        
        // Parameter in which to sort the results by.
        NSString *order = [NSString stringWithUTF8String:"votes"];
        
        // The query string for the API.
        NSString *queryString = [NSString stringWithFormat:@"?intitle=%@&pagesize=%i&sort=%@",
                                                            [NSString stringWithUTF8String:argv[1]],
                                                            maxResults,
                                                            order];
        
        NSURL *endPoint = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",
                                                                           url,
                                                                           queryString]];
        
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:endPoint];
        
        [request setHTTPMethod:@"GET"];
        
        NSError *error;
        NSHTTPURLResponse *response;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                        returningResponse:&response
                                        error:&error];
        
        // Check for connection error.
        if (error){
            
            printf("Error: Cannot connect to Stack Overflow\n");
            
            if (debug){
                NSLog(@"%@", [error description]);
            }
            
            // leave with code 2.
            exit(2);
            
        }
        
        // Check the HTTP response code from the API.
        if (200 != [response statusCode]){
            
            printf("Error: Invalid Stack Overflow API request\n");
            
            if (debug){
                NSLog(@"%li", [response statusCode]);
            }
            
            // leave with code 3.
            exit(3);
        }
        
        NSLog(@"%@", data);
        
        //NSString *result2 = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        
    
    }
    
    return 0;
}

