//
//  BLLeagueDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLLeagueItemDto.h"

@interface BLLeagueDto : BLKeyValueObject

@property (nonatomic, strong) NSArray *entries;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *queue;
@property (nonatomic, strong) NSString *tier;

+ (NSArray *)queues;
+ (NSArray *)tiers;

@end
