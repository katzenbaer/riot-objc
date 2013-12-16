//
//  BLRiotAPI.m
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotAPI.h"

@interface BLRiotAPI()
@end

@implementation BLRiotAPI

@synthesize region = _region;

- (id)init {
    return [self initWithRegion:@"na"];
}

- (id)initWithRegion:(NSString *)region {
    if (self = [super init]) {
        self.region = region;
    }
    return self;
}

/**
 * endpointUrl
 * Returns an NSURL object representing the API endpoint
 */
- (NSURL *)endpointUrl {
    return [NSURL URLWithString:API_ENDPOINT];
}

- (void) setRegion:(NSString *)region
{
    const NSArray *regions = @[@"eune", @"euw", @"br", @"tr", @"na"];
    
    region = [region lowercaseString];
    if ([regions containsObject:region])
        _region = region;
    else
        [NSException raise:@"Invalid region" format:@"Region must be one of the following: %@", [regions componentsJoinedByString:@", "]];
}

- (NSData *)requestWithUrl:(NSURL *)url Params:(NSArray *)params error:(NSError *__autoreleasing *)error {
    
    // Add API key to parameters
    NSMutableArray *_params = [NSMutableArray arrayWithArray:params];
    [_params addObject:API_KEY];
    NSString *s = [[url absoluteString] stringByAppendingFormat:@"?%@", [_params componentsJoinedByString:@"&"]];
    
    NSLog(@"Requesting from '%@'", s);
    // Create NSURLRequest and NSURLConnection
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:s]];
    NSHTTPURLResponse *response = nil;
    NSError *_error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:req
                                         returningResponse:&response
                                                     error:&_error];
    if (_error || [response statusCode] != 200) {
        if ([response statusCode] != 0) {
            if ([response statusCode] != 0) {
                //NSLog(@"HTTP Error! Status Code: %d", [response statusCode]);
                //NSLog(@"Response Data: %@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
                
                NSString *reasonString = nil;
                switch ([response statusCode]) {
                    case 400:
                        reasonString = @"Bad request";
                        break;
                    case 500:
                        reasonString = @"Internal server error";
                        break;
                    default:
                        reasonString = @"Undefined error";
                        break;
                }
                
                NSDictionary *userInfo = @{@"status_code": [NSNumber numberWithInteger:[response statusCode]],
                                           @"reason": reasonString};
                
                *error = [NSError errorWithDomain:RESPONSE_ERROR code:[response statusCode] userInfo:userInfo];
                return nil;
            }
        }
        //NSLog(@"Authentication Error: Check your API_KEY in `BLRiotAPI.h`!");
        *error = [NSError errorWithDomain:AUTHENTICATION_ERROR code:401 userInfo:@{@"api_key": API_KEY}];
        return nil;
    }
    return data;
    
}

- (NSData *)requestWithUrl:(NSURL *)url error:(NSError *__autoreleasing *)error {
    return [self requestWithUrl:url Params:@[] error:error];
}

@end
