//
//  BLPlayerStatsSummaryDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLAggregatedStatsDto.h"

@interface BLPlayerStatsSummaryDto : BLKeyValueObject

@property (nonatomic, strong) BLAggregatedStatsDto *aggregatedStats;	// List of aggregated stats.
@property (nonatomic, strong) NSNumber *losses; // Number of losses for this queue type. Returned for ranked queue types only.
@property (nonatomic, strong) NSNumber *modifyDate; // Date stats were last modified specified as epoch milliseconds.
@property (nonatomic, strong) NSString *playerStatSummaryType; // Player stats summary type. (legal values: AramUnranked5x5, CoopVsAI, OdinUnranked, RankedPremade3x3, RankedPremade5x5, RankedSolo5x5, RankedTeam3x3, RankedTeam5x5, Unranked, Unranked3x3)
@property (nonatomic, strong) NSNumber *wins; // Number of wins for this queue type.

+ (NSArray *)playerStatSummaryTypes;

@end
