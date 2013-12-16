//
//  BLRiotGameAPI.m
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotGameAPI.h"

@implementation BLRiotGameAPI

- (BLRecentGamesDto *)requestGamesWithSummonerId:(NSNumber *)summonerId
                                           Error:(NSError *__autoreleasing *)error {
    NSString *championString = [NSString stringWithFormat:API_GAME,
                                self.region, summonerId.longValue];
    
    NSError *_error, *httpError = nil;
    
    NSData *data = [self requestWithUrl:[NSURL URLWithString:championString] Params:nil error:&httpError];
    
    if (httpError) {
        *error = [NSError errorWithDomain:RESPONSE_ERROR code:httpError.code userInfo:httpError.userInfo];
        return nil;
    }
    
    NSObject *obj = [NSJSONSerialization JSONObjectWithData:data
                                                    options:NSJSONReadingAllowFragments
                                                      error:&_error];
    
    if (_error) {
        *error = [NSError errorWithDomain:PARSE_ERROR code:_error.code userInfo:_error.userInfo];
        return nil;
    }
    
    NSMutableArray *result = [NSMutableArray array];
    if ([obj isKindOfClass:[NSDictionary class]]) {
        NSArray *games = [(NSDictionary *)obj valueForKey:@"games"];
        for (NSDictionary *game in games) {
            BLGameDto *g = [[BLGameDto alloc] initWithKVDictionary:game];
            
            {
                NSMutableArray *result = [NSMutableArray array];
                NSArray *fellowPlayers = [g fellowPlayers];
                
                for (NSDictionary *player in fellowPlayers) {
                    [result addObject:[[BLPlayerDto alloc] initWithKVDictionary:player]];
                }
                
                g.fellowPlayers = [NSArray arrayWithArray:result];
            }
            
            {
                NSMutableArray *result = [NSMutableArray array];
                NSArray *statistics = [g statistics];
                
                for (NSDictionary *stat in statistics) {
                    [result addObject:[[BLRawStatDto alloc] initWithKVDictionary:stat]];
                }
                
                g.statistics = [NSArray arrayWithArray:result];
            }
            
            [result addObject:g];
        }
    }
    return [[BLRecentGamesDto alloc] initWithKVDictionary:@{
                                        @"games" : [NSArray arrayWithArray:result]
                                        }];
}

@end
