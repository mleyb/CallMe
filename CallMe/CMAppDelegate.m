//
//  CMAppDelegate.m
//  CallMe
//
//  Created by Mark Leybourne on 15/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "CMAppDelegate.h"

@implementation CMAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    // Send a synchronous request
    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com"]];
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:urlRequest
                                          returningResponse:&response
                                                      error:&error];
    
    if (error == nil)
    {
        // Parse data here
        
        NSString *string = [NSString stringWithUTF8String:[data bytes]];
        
        NSLog(@"%@", string);
    }
    
    
    
    
    
    // Create the request.
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com"]];
    
    // Specify that it will be a POST request
    request.HTTPMethod = @"POST";
    
    // This is how we set header fields
    [request setValue:@"application/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    
    // Convert your data and set your request's HTTPBody property
    NSString *stringData = @"some data";
    NSData *requestBodyData = [stringData dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPBody = requestBodyData;
    
    // Create url connection and fire request
    NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    
    
    
    
    
    
    
    
    
    
    
    
}

@end
