//
//  BLRiotStatsAPI.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotStatsAPI.h"

@implementation BLRiotStatsAPI

- (BLPlayerStatsSummaryListDto *)requestStatsSummaryWithSummonerId:(NSNumber *)summonerId Season:(NSString *)season Error:(NSError *__autoreleasing *)error {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:API_STATS_SUMMARY, self.region, summonerId.longValue]];
    
    NSObject *obj = [self requestJsonWithUrl:url Params:[@"season=" stringByAppendingString:[season stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]
                                       Error:error];
    
    if (*error) return nil;
    
    if ([obj isKindOfClass:[NSDictionary class]])
        return [BLPlayerStatsSummaryListDto newWithKVDictionary:(NSDictionary *)obj];
    else
        return nil;
}

#define CURRENT_SEASON @"SEASON3"
- (BLPlayerStatsSummaryListDto *)requestStatsSummaryWithSummonerId:(NSNumber *)summonerId Error:(NSError *__autoreleasing *)error {
    
    return [self requestStatsSummaryWithSummonerId:summonerId Season:CURRENT_SEASON Error:error];
}

- (BLRankedStatsDto *)requestStatsRankedWithSummonerId:(NSNumber *)summonerId Season:(NSString *)season Error:(NSError *__autoreleasing *)error {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:API_STATS_RANKED, self.region, summonerId.longValue]];
    
    NSObject *obj = [self requestJsonWithUrl:url Params:[@"season=" stringByAppendingString:[season stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]] Error:error];
    
    if (*error) return nil;
    
    if ([obj isKindOfClass:[NSDictionary class]])
        return [BLRankedStatsDto newWithKVDictionary:(NSDictionary *)obj];
    else
        return nil;
}

- (BLRankedStatsDto *)requestStatsRankedWithSummonerId:(NSNumber *)summonerId Error:(NSError *__autoreleasing *)error {
    
    return [self requestStatsRankedWithSummonerId:summonerId Season:CURRENT_SEASON Error:error];
}

@end
