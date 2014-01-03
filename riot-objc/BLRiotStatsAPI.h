//
//  BLRiotStatsAPI.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotAPI.h"

#import "BLPlayerStatsSummaryListDto.h"
#import "BLRankedStatsDto.h"

#define API_STATS               API_ENDPOINT @"/api/lol/%@/v1.2/stats/by-summoner/%ld"
#define API_STATS_SUMMARY       API_STATS @"/summary"
#define API_STATS_RANKED        API_STATS @"/ranked"

@interface BLRiotStatsAPI : BLRiotAPI

- (BLPlayerStatsSummaryListDto *)requestStatsSummaryWithSummonerId:(NSNumber *)summonerId Error:(NSError **)error;

- (BLPlayerStatsSummaryListDto *)requestStatsSummaryWithSummonerId:(NSNumber *)summonerId Season:(NSString *)season Error:(NSError **)error;

- (BLRankedStatsDto *)requestStatsRankedWithSummonerId:(NSNumber *)summonerId Error:(NSError **)error;

- (BLRankedStatsDto *)requestStatsRankedWithSummonerId:(NSNumber *)summonerId Season:(NSString *)season Error:(NSError **)error;

@end
