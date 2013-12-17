//
//  BLMatchHistorySummaryDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLMatchHistorySummaryDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *assists;
@property (nonatomic, strong) NSNumber *date;
@property (nonatomic, strong) NSNumber *deaths;
@property (nonatomic, strong) NSNumber *gameId;
@property (nonatomic, strong) NSString *gameMode;
@property (nonatomic, strong) NSNumber *invalid;
@property (nonatomic, strong) NSNumber *kills;
@property (nonatomic, strong) NSNumber *mapId;
@property (nonatomic, strong) NSNumber *opposingTeamKills;
@property (nonatomic, strong) NSString *opposingTeamName;
@property (nonatomic, strong) NSNumber *win;

@end
