//
//  BLSummonerDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLSummonerDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *_id; // Summoner ID.
@property (nonatomic, strong) NSString *name; // Summoner name.
@property (nonatomic, strong) NSNumber *profileIconId; // ID of the summoner icon associated with the summoner.
@property (nonatomic, strong) NSNumber *revisionDate; // Date summoner was last modified specified as epoch milliseconds.
@property (nonatomic, strong) NSNumber *revisionDateStr; // Human readable string representing date summoner was last modified.
@property (nonatomic, strong) NSNumber *summonerLevel; // Summoner level associated with the summoner.

@end
