//
//  BLAggregatedStatDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLAggregatedStatDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *count; // Aggregated stat value.
@property (nonatomic, strong) NSNumber *_id; // Aggregated stat type ID.
@property (nonatomic, strong) NSString *name; // Aggregated stat type name.

@end
