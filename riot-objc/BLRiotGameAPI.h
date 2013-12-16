//
//  BLRiotGameAPI.h
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotAPI.h"

#import "BLPlayerDto.h"
#import "BLRawStatDto.h"
#import "BLGameDto.h"
#import "BLRecentGamesDto.h"

@interface BLRiotGameAPI : BLRiotAPI

- (BLRecentGamesDto *)requestGamesWithSummonerId:(NSNumber *)summonerId Error:(NSError **)error;

@end
