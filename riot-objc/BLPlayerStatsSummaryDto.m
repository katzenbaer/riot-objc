//
//  BLPlayerStatsSummaryDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLPlayerStatsSummaryDto.h"

@implementation BLPlayerStatsSummaryDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        self.aggregatedStats = [BLAggregatedStatsDto newWithKVDictionary:dict[@"aggregatedStats"]];
    }
    return self;
}

+ (NSArray *)playerStatSummaryTypes {
    static NSArray *playerStatSummaryTypes;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        playerStatSummaryTypes = @[@"AramUnranked5x5", @"CoopVsAI", @"OdinUnranked", @"RankedPremade3x3", @"RankedPremade5x5", @"RankedSolo5x5", @"RankedTeam3x3", @"RankedTeam5x5", @"Unranked", @"Unranked3x3"];
    });
    return playerStatSummaryTypes;
}

@end
