//
//  BLRiotLeagueAPI.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotAPI.h"

#import "BLLeagueDto.h"

#define API_LEAGUE  API_ENDPOINT @"/api/lol/%@/v2.2/league/by-summoner/%ld"

@interface BLRiotLeagueAPI : BLRiotAPI

- (NSDictionary *)requestLeaguesWithSummonerId:(NSNumber *)summonerId Error:(NSError **)error;

- (BLLeagueDto *)requestSoloQueueLeagueWithSummonerId:(NSNumber *)summonerId
                                                Error:(NSError **)error;

@end
