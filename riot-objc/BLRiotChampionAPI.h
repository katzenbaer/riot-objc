//
//  BLRiotChampionAPI.h
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotAPI.h"
#import "BLChampionListDto.h"

@interface BLRiotChampionAPI : BLRiotAPI

- (BLChampionListDto *)requestChampionsWithError:(NSError **)error;

@end
