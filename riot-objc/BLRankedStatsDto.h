//
//  BLRankedStatsDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLChampionStatsDto.h"

@interface BLRankedStatsDto : BLKeyValueObject

@property(nonatomic, strong) NSArray *champions;        // List of player stats summarized by champion.
@property(nonatomic, strong) NSNumber *modifyDate;      // Date stats were last modified specified as epoch milliseconds.
@property(nonatomic, strong) NSNumber *summonerId;       // Summoner ID.

@end
