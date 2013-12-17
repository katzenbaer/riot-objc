//
//  BLRiotLeagueAPI.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotLeagueAPI.h"

@implementation BLRiotLeagueAPI

- (NSDictionary *)requestLeaguesWithSummonerId:(NSNumber *)summonerId
                                         Error:(NSError *__autoreleasing *)error {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:API_LEAGUE,
                                       self.region, summonerId.longValue]];
    
    NSObject *obj = [self requestJsonWithUrl:url Error:error];
    
    if (*error) return nil;
    
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    if ([obj isKindOfClass:[NSDictionary class]]) {
        [(NSDictionary *)obj enumerateKeysAndObjectsUsingBlock:^(NSString *key,
                                                                 NSDictionary *val, BOOL *stop) {
            result[key] = [BLLeagueDto newWithKVDictionary:val];
        }];
    }
    return [NSDictionary dictionaryWithDictionary:result];
}

- (BLLeagueDto *)requestSoloQueueLeagueWithSummonerId:(NSNumber *)summonerId
                                                Error:(NSError *__autoreleasing *)error {
    NSDictionary *leagues = [self requestLeaguesWithSummonerId:summonerId
                                                         Error:error];
    return leagues[summonerId.stringValue];
}
@end
