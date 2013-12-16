//
//  BLPlayerDto.h
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BLKeyValueObject.h"

@interface BLPlayerDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *championId; // Champion id associated with the player.
@property (nonatomic, strong) NSNumber *summonerId; // Summoner id associated with the player.
@property (nonatomic, strong) NSNumber *teamId; // Team id associated with the player.

@end
