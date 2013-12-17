//
//  BLRiotTeamAPI.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotAPI.h"

#import "BLTeamDto.h"

@interface BLRiotTeamAPI : BLRiotAPI

- (NSArray *)requestTeamsWithSummonerId:(NSNumber *)summonerId Error:(NSError **)error;

@end
