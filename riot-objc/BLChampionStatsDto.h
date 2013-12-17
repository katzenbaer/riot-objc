//
//  BLChampionStatsDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLChampionStatDto.h"

@interface BLChampionStatsDto : BLKeyValueObject

@property(nonatomic, strong) NSNumber *_id; // Champion id.
@property(nonatomic, strong) NSString *name; // Champion name.
@property(nonatomic, strong) NSArray *stats; // List of stats associated with the champion.

@end
