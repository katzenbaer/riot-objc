//
//  BLSummonerNameListDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLSummonerNameDto.h"

@interface BLSummonerNameListDto : BLKeyValueObject

@property (nonatomic, strong) NSArray *summoners; // The list of summoner name information.

@end
