//
//  BLRiotSummonerAPI.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotAPI.h"

#import "BLMasteryPagesDto.h"
#import "BLRunePagesDto.h"
#import "BLSummonerDto.h"
#import "BLSummonerNameListDto.h"

#define API_SUMMONER            API_ENDPOINT @"/api/lol/%@/v1.2/summoner/%ld"
#define API_SUMMONER_BYNAME     API_ENDPOINT @"/api/lol/%@/v1.2/summoner/by-name/%@"
#define API_SUMMONERS           API_ENDPOINT @"/api/lol/%@/v1.2/summoner/%@/name"
#define API_SUMMONER_MASTERY    API_SUMMONER @"/mastery"
#define API_SUMMONER_RUNES      API_SUMMONER @"/runes"

@interface BLRiotSummonerAPI : BLRiotAPI

- (BLMasteryPagesDto *)requestSummonerMasteriesWithSummonerId:(NSNumber *)summonerId
                                                        Error:(NSError **)error;
- (BLRunePagesDto *)requestSummonerRunesWithSummonerId:(NSNumber *)summonerId
                                                 Error:(NSError **)error;
- (BLSummonerDto *)requestSummonerWithSummonerName:(NSString *)summonerName
                                             Error:(NSError **)error;
- (BLSummonerDto *)requestSummonerWithSummonerId:(NSNumber *)summonerId
                                           Error:(NSError **)error;
- (BLSummonerNameListDto *)requestSummonerNamesWithSummonerIds:(NSArray *)summonerIds
                                                         Error:(NSError **)error;

@end
