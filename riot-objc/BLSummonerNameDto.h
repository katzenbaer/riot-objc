//
//  BLSummonerNameDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLSummonerNameDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *_id; // Summoner ID.
@property (nonatomic, strong) NSString *name; // Summoner name.

@end
