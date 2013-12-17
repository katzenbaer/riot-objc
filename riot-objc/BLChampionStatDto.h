//
//  BLChampionStatDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLChampionStatDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *count; // Count of samples (games) that make up the aggregated value, where relevant.
@property (nonatomic, strong) NSNumber *_id; // Aggregated stat type ID.
@property (nonatomic, strong) NSString *name; // Aggregated stat type name.
@property (nonatomic, strong) NSNumber *value; // Aggregated stat value.

@end
