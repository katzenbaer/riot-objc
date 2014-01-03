//
//  BLTeamStatDetailDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLTeamStatDetailDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *averageGamesPlayed;
@property (nonatomic, strong) NSString *fullId;
@property (nonatomic, strong) NSNumber *losses;
@property (nonatomic, strong) NSString *teamStatType;
@property (nonatomic, strong) NSNumber *wins;

@end
