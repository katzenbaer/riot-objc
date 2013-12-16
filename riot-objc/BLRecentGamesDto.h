//
//  BLRecentGamesDto.h
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BLKeyValueObject.h"

@interface BLRecentGamesDto : BLKeyValueObject

@property (nonatomic, strong) NSArray *games; // List of recent games played (max 10).
@property (nonatomic, strong) NSNumber *summonerId; // Summoner ID.

@end
