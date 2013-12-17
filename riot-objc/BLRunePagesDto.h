//
//  BLRunePagesDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLRunePageDto.h"

@interface BLRunePagesDto : BLKeyValueObject

@property (nonatomic, strong) NSArray *pages; // Set of rune pages associated with the summoner.
@property (nonatomic, strong) NSNumber *summonerId; // Summoner ID.

@end
