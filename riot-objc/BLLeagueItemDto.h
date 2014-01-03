//
//  BLLeagueItemDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLMiniSeriesDto.h"

@interface BLLeagueItemDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *isFreshBlood;
@property (nonatomic, strong) NSNumber *isHotStreak;
@property (nonatomic, strong) NSNumber *isInactive;
@property (nonatomic, strong) NSNumber *isVeteran;
@property (nonatomic, strong) NSNumber *lastPlayed;
@property (nonatomic, strong) NSString *leagueName;
@property (nonatomic, strong) NSNumber *leaguePoints;
@property (nonatomic, strong) BLMiniSeriesDto *miniSeries;
@property (nonatomic, strong) NSString *playerOrTeamId;
@property (nonatomic, strong) NSString *playerOrTeamName;
@property (nonatomic, strong) NSString *queueType;
@property (nonatomic, strong) NSString *rank;
@property (nonatomic, strong) NSString *tier;
@property (nonatomic, strong) NSNumber *wins;

@end
