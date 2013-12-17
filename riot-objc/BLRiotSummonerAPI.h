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
