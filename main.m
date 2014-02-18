//
//  main.m
//  proof
//
//  Created by Jon Carl Matthews on 17/02/2014.
//  Copyright (c) 2014 Jon Carl Matthews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+URLEncoding.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSString *testString;
        
        testString = [NSString stringWithUTF8String:"some url parsms + here/or something"];
        
        NSLog(@"%@", testString);
        
        NSString *something;
        
        something = [testString urlEncode];
        
        NSLog(@"%@", something);
        
        exit(1);
        
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
            
            exit(1);
        }
        
        // URL of the API's search method
        NSString *url = [NSString stringWithUTF8String:"http://api.stackoverflow.com/1.1/search"];
        
        // Maximum number of results to display.
        int maxResults = 2;
        
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
        
        NSError *errorConn;
        NSHTTPURLResponse *response;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                        returningResponse:&response
                                        error:&errorConn];
        
        // errorConn for connection error.
        if (errorConn){
            
            printf("Error: Cannot connect to Stack Overflow\n");
            
            if (debug){
                NSLog(@"%@", [errorConn description]);
            }
            
            exit(2);
            
        }
        
        // Check the HTTP response code from the API.
        if (200 != [response statusCode]){
            
            printf("Error: Invalid Stack Overflow API request\n");
            
            if (debug){
                NSLog(@"%li", [response statusCode]);
            }
            
            exit(3);
        }
        
        // Create an NSDictionary from the NSData data object.
        NSError *errorDict = nil;
        NSDictionary *answersDict = [NSJSONSerialization JSONObjectWithData:data
                                                    options:0
                                                    error:&errorDict];
        
        // Check that creation happened without error.
        if (errorDict != nil) {
            
            printf("Error: Answer could not be found\n");
            
            exit(4);
        }
        
        // Grab the answers node from the answersDict NSDictionary object.
        NSArray *answersArray = [answersDict objectForKey:@"questions"];
        
        // Check that we have at least one answer
        if ([answersArray count] <= 0){
            
            printf("Error: No answers found. What on earth are you searching for!?\n");
            
            exit(5);
        }
        
        bool answeredQuestionFound = false;
        
        for (NSDictionary *answer in answersArray) {
            
            if ([answer objectForKey:@"accepted_answer_id"]){
                
                answeredQuestionFound = true;
                
                NSLog(@"Correct answer ID %@", [answer objectForKey:@"question_id"]);
                
                // Get the answer.
                
                
                break;
                
            }
            
        }
        
        if (!answeredQuestionFound){
            NSLog(@"Correct answer not found");
        }
        
        // Print the first question found.
        // @TODO Loop through each question, finding the first that
        //NSLog(@"%@", [answersArray objectAtIndex:1]);
        //NSLog(@"%@", [[answersArray objectAtIndex:0] objectForKey:@""]);
        
        
        /*
        for(id key in answersDict) {
            id answer = [answersDict objectForKey:key];
            NSLog(@"%@", [key class]);
            NSLog(@"%@", [answer class]);
        }
        */
        
        
        
        /*
        
        NSData *webData = [@"{\"1\": {\"name\": \"Jerry\",\"age\": \"12\"}, \"2\": {\"name\": \"Bob\",\"age\": \"16\"}}" dataUsingEncoding:NSUTF8StringEncoding];
        NSLog(@"%@", [webData description]);
        exit(1);
        
        NSError *jsonError;
        NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:answersJSONString
                                                        options:0
                                                        error:&jsonError];
        NSLog(@"JSON DIct: %@", jsonDict);
         */
        
        //NSLog(@"%@", answersNSDictionary);
        
        
        
        
        
        
        // Get the answer...
        // http://api.stackoverflow.com/1.1/answers/178450?body=true
        // http://api.stackoverflow.com/1.1/usage/methods/answers-by-ids
    
    }
    
    return 0;
}

