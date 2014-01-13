//
//  BLRiotGameAPI.h
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotAPI.h"

#import "BLPlayerDto.h"
#import "BLRawStatsDto.h"
#import "BLGameDto.h"
#import "BLRecentGamesDto.h"

#define API_GAME    API_ENDPOINT @"/api/lol/%@/v1.3/game/by-summoner/%ld/recent"

@interface BLRiotGameAPI : BLRiotAPI

- (BLRecentGamesDto *)requestGamesWithSummonerId:(NSNumber *)summonerId Error:(NSError **)error;

@end
