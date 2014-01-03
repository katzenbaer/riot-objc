//
//  BLTeamDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLMatchHistorySummaryDto.h"
#import "BLMessageOfDayDto.h"
#import "BLRosterDto.h"
#import "BLTeamStatSummaryDto.h"

@interface BLTeamDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *createDate;
@property (nonatomic, strong) NSString *fullId;
@property (nonatomic, strong) NSNumber *lastGameDate;
@property (nonatomic, strong) NSNumber *lastJoinDate;
@property (nonatomic, strong) NSNumber *lastJoinedRankedTeamQueueDate;
@property (nonatomic, strong) NSNumber *secondLastJoinDate;
@property (nonatomic, strong) NSNumber *thirdLastJoinDate;
@property (nonatomic, strong) NSNumber *modifyDate;

@property (nonatomic, strong) BLTeamStatSummaryDto *teamStatSummary;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *status;
@property (nonatomic, strong) NSString *tag;
@property (nonatomic, strong) BLMessageOfDayDto *messageOfDay;
@property (nonatomic, strong) BLRosterDto *roster;
@property (nonatomic, strong) NSArray *matchHistory;

@end
