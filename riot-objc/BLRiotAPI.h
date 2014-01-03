//
//  BLRiotAPI.h
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import <Foundation/Foundation.h>

#define API_ENDPOINT            @"https://prod.api.pvp.net"
#define API_KEY                 @"api_key=" @"YOUR-KEY-HERE"

// Errors
#define AUTHENTICATION_ERROR    @"AuthenticationError"
#define RESPONSE_ERROR          @"ResponseError"
#define PARSE_ERROR             @"ParseError"

@interface BLRiotAPI : NSObject <NSURLConnectionDelegate>

@property (nonatomic, strong) NSString *region;

- (id)initWithRegion:(NSString *)region;

- (NSURL *)endpointUrl;

- (NSData *)requestWithUrl:(NSURL *)url Error:(NSError **)error;
- (NSData *)requestWithUrl:(NSURL *)url Params:(id)params Error:(NSError **)error;

- (NSObject *)requestJsonWithUrl:(NSURL *)url Error:(NSError **)error;
- (NSObject *)requestJsonWithUrl:(NSURL *)url Params:(id)params Error:(NSError **)error;

@end
