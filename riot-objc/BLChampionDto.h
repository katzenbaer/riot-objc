//
//  BLChampionDto.h
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BLKeyValueObject.h"

@interface BLChampionDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *_id; // Champion ID.
@property (nonatomic, strong) NSString *name; // Champion name.
@property (nonatomic, strong) NSNumber *freeToPlay; // Indicates if the champion is free to play. Free to play
                                                    // champions are rotated periodically.

@property (nonatomic, strong) NSNumber *active; // Indicates if the champion is active.
@property (nonatomic, strong) NSNumber *rankedPlayEnabled; // Ranked play enabled flag.
@property (nonatomic, strong) NSNumber *botEnabled; // Bot enabled flag (for custom games).
@property (nonatomic, strong) NSNumber *botMmEnabled; // Bot Match Mode enabled flag (for Co-op vs. AI games).

@property (nonatomic, strong) NSNumber *attackRank; // Champion attack rank.
@property (nonatomic, strong) NSNumber *defenseRank; // Champion defense rank.
@property (nonatomic, strong) NSNumber *difficultyRank; // Champion difficulty rank.
@property (nonatomic, strong) NSNumber *magicRank; // Champion magic rank.

@end
