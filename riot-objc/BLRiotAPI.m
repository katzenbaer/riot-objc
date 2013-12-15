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

- (NSData *)requestWithUrl:(NSURL *)url error:(NSError *__autoreleasing *)error {
    NSString *s = [[url absoluteString] stringByAppendingString:API_KEY];
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:s]];
    NSURLResponse *response = nil;
    NSError *_error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:req
                                         returningResponse:&response
                                                     error:&_error];
    if (_error) {
        NSLog(@"HTTP Error: %@", _error);
        NSLog(@"Response: %@", response);
        NSLog(@"Response Data: %@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
        *error = [NSError errorWithDomain:@"HTTPError" code:_error.code userInfo:_error.userInfo];
        return nil;
    }
    return data;
}

@end
