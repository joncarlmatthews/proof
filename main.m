//
//  main.m
//  proof
//
//  Created by Jon Carl Matthews on 17/02/2014.
//  Copyright (c) 2014 Jon Carl Matthews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PreprocessorDirectives.h"
#import "ApiRequest.h"
#import "NSString+URL.h"
#import "NSString+HTML.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        if (DEBUG_MODE){
            NSLog(@"%i", argc);
        }
        
        if (DEBUG_MODE){
        
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
            
            exit(1);
        }
        
        // Extract the query string from the args.
        NSString *queryStringRaw;
        queryStringRaw = [NSString stringWithUTF8String:argv[1]];
        
        // Encode the query string so it's URL safe.
        NSString *queryStringEncoded;
        queryStringEncoded = [queryStringRaw urlEncode];
        
        // Create an ApiRequest instance for the API question search.
        ApiRequest *apiQuestionSearch = [[ApiRequest alloc] initWithDomain: @"api.stackexchange.com"];
        
        // Set the method.
        [apiQuestionSearch setMethod:@"/2.2/search/advanced/"];
        
        // Create a dictionary of parameters to send to the API.
        NSDictionary *paramBind = [[NSDictionary alloc] initWithObjectsAndKeys:@"desc", @"order",
                                                                                @"relevance", @"sort",
                                                                                @"True", @"accepted",
                                                                                @"1", @"answers",
                                                                                @"stackoverflow", @"site",
                                                                                queryStringEncoded, @"q",
                                                                                nil];
        // Set the parameters.
        [apiQuestionSearch setParams: paramBind];
        
        // Make the request.
        if ([apiQuestionSearch makeRequest] != APIREQUEST_REQUEST_SUCCESS){
            
            printf("Error: Cannot connect to Stack Overflow\n");
            
            if (DEBUG_MODE){
                NSLog(@"%@", [apiQuestionSearch error]);
            }
            
            exit(2);
        }
        
        // Check the HTTP response code from the API.
        if (200 != [[apiQuestionSearch response] statusCode]){
            
            printf("Error: Invalid Stack Overflow API request\n");
            
            if (DEBUG_MODE){
                NSLog(@"%li", [[apiQuestionSearch response] statusCode]);
            }
            
            exit(3);
        }
        
        
        // Create an NSDictionary from the NSData data object.
        NSError *errorDict = nil;
        NSDictionary *questionDict = [NSJSONSerialization JSONObjectWithData:[apiQuestionSearch data]
                                                            options:0
                                                            error:&errorDict];
        
        // Check that creation happened without error.
        if (errorDict != nil) {
            
            printf("Error: Question could not be found\n");
            
            if(DEBUG_MODE){
                NSLog(@"%@", errorDict);
            }
            
            exit(4);
        }
        
        // Grab the questions node from the questionDict NSDictionary object.
        NSArray *questionArray = [questionDict objectForKey:@"items"];
        
        // Check that we have at least one question
        if ([questionArray count] <= 0){
            
            printf("Error: Question could not be found\n");
            
            if(DEBUG_MODE){
                NSLog(@"%@", questionArray);
            }
            
            exit(5);
        }
        
        bool answeredQuestionFound = false;
        
        for (NSDictionary *question in questionArray) {
            
            if ([question objectForKey:@"accepted_answer_id"]){
                
                // Answer found
                answeredQuestionFound = true;
                
                // Grab the correct answer's answer ID.
                NSNumber *correctAnswerID;
                correctAnswerID = [question objectForKey:@"accepted_answer_id"];
                
                if(DEBUG_MODE){
                    NSLog(@"Correct answer ID %@", [question objectForKey:@"accepted_answer_id"]);
                }
                
                // Create an ApiRequest instance for the API answer retreival.
                ApiRequest *apiAnswerFetch = [[ApiRequest alloc] initWithDomain: @"api.stackexchange.com"];
                
                // Set the method.
                NSMutableString *method = [NSMutableString stringWithString:@"/2.2/answers/"];
                [method appendString:[NSString stringWithString:[correctAnswerID stringValue]]];
                
                [apiAnswerFetch setMethod:method];
                
                // Create a dictionary of parameters to send to the API.
                NSDictionary *paramBind = [[NSDictionary alloc] initWithObjectsAndKeys:@"stackoverflow", @"site",
                                                                                       @"!9WgJfjxaP", @"filter",
                                                                                       nil];
                // Set the parameters.
                [apiAnswerFetch setParams: paramBind];
                
                // Make the request.
                if ([apiAnswerFetch makeRequest] != APIREQUEST_REQUEST_SUCCESS){
                    
                    printf("Error: Problem occured whilst retrieving answer\n");
                    
                    if (DEBUG_MODE){
                        NSLog(@"%@", [apiAnswerFetch error]);
                    }
                    
                    exit(6);
                }
                
                // Check the HTTP response code from the API.
                if (200 != [[apiAnswerFetch response] statusCode]){
                    
                    printf("Error: Invalid Stack Overflow API request\n");
                    
                    if (DEBUG_MODE){
                        NSLog(@"%li", [[apiAnswerFetch response] statusCode]);
                    }
                    
                    exit(7);
                }
                
                // Create an NSDictionary from the NSData data object.
                NSError *errorDict = nil;
                NSDictionary *answersDict = [NSJSONSerialization JSONObjectWithData:[apiAnswerFetch data]
                                                                            options:0
                                                                              error:&errorDict];
                
                // Check that creation happened without error.
                if (errorDict != nil) {
                    
                    printf("Error: Answer could not be found\n");
                    
                    if(DEBUG_MODE){
                        NSLog(@"%@", errorDict);
                    }
                    
                    exit(4);
                }
                
                // Grab the answers node from the answersDict NSDictionary object.
                NSArray *answerArray = [answersDict objectForKey:@"items"];
                
                // Check that we have at least one answer
                if ([answerArray count] <= 0){
                    
                    printf("Error: Answer could not be found\n");
                    
                    if(DEBUG_MODE){
                        NSLog(@"%@", answerArray);
                    }
                    
                    exit(5);
                }
                
                for (NSDictionary *answer in answerArray) {
                    
                    if([answer objectForKey:@"body"]){
                        
                        printf("\n");
                        printf([[[answer objectForKey:@"body"] stringByStrippingHTML] UTF8String]);
                        
                    }
                    
                    if (DEBUG_MODE){
                        NSLog(@"%@", answer);
                    }
                }
            
                // Stop iterating.
                break;
                
            }
            
        }
        
        if (!answeredQuestionFound){
            printf("Error: Correct answer not found.\n");
        }
    
    }
    
    return 0;
}

