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
    NSString *championString = [NSString stringWithFormat:API_LEAGUE,
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
    
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    if ([obj isKindOfClass:[NSDictionary class]]) {
        [(NSDictionary *)obj enumerateKeysAndObjectsUsingBlock:^(NSString *key,
                                                                 NSDictionary *val, BOOL *stop) {
        
            BLLeagueDto *league = [[BLLeagueDto alloc] initWithKVDictionary:val];
            result[key] = league;
            
            NSMutableArray *entries = [NSMutableArray array];
            
            for (NSDictionary *item in league.entries) {
                BLLeagueItemDto *_item = [[BLLeagueItemDto alloc] initWithKVDictionary:item];
                
                if (item[@"miniSeries"] != nil) _item.miniSeries = [[BLMiniSeriesDto alloc] initWithKVDictionary:item[@"miniSeries"]];
                else _item.miniSeries = nil;
                
                [entries addObject:_item];
            }
            
            league.entries = [NSArray arrayWithArray:entries];
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
