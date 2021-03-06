//
//  BLGameDto.h
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BLKeyValueObject.h"

#import "BLPlayerDto.h"
#import "BLRawStatDto.h"

@interface BLGameDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *championId; // Champion ID assocaited with game.
@property (nonatomic, strong) NSNumber *createDate; // Date game was played specified as epoch milliseconds.
@property (nonatomic, strong) NSString *createDateStr; // Human readable string representing date game was played.
@property (nonatomic, strong) NSArray *fellowPlayers; // Other players assocaited with the game.
@property (nonatomic, strong) NSNumber *gameId; // Game ID.
@property (nonatomic, strong) NSString *gameMode; // Game mode.
@property (nonatomic, strong) NSString *gameType; // Game type.
@property (nonatomic, strong) NSNumber *invalid; // Invalid flag.
@property (nonatomic, strong) NSNumber *level; // Level.
@property (nonatomic, strong) NSNumber *mapId; // Map ID.
@property (nonatomic, strong) NSNumber *spell1; // ID of first summoner spell.
@property (nonatomic, strong) NSNumber *spell2; // ID of second summoner spell.
@property (nonatomic, strong) NSArray *statistics; // Statistics associated with the game for this summoner.
@property (nonatomic, strong) NSString *subType; // Game sub-type.
@property (nonatomic, strong) NSNumber *teamId; // Team ID associated with game.

@end
