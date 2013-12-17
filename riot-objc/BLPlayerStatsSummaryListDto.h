//
//  BLPlayerStatsSummaryListDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLPlayerStatsSummaryDto.h"

@interface BLPlayerStatsSummaryListDto : BLKeyValueObject

@property (nonatomic, strong) NSArray *playerStatSummaries; // List of player stats summaries associated with the summoner.
@property (nonatomic, strong) NSNumber *summonerId; // Summoner ID.

@end
