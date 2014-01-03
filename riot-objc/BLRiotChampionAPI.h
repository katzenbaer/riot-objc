//
//  BLRiotChampionAPI.h
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotAPI.h"

#import "BLChampionListDto.h"

#define API_CHAMPION    API_ENDPOINT @"/api/lol/%@/v1.1/champion"

@interface BLRiotChampionAPI : BLRiotAPI

- (BLChampionListDto *)requestChampionsWithError:(NSError **)error;
- (BLChampionListDto *)requestChampionsFreeToPlay:(Boolean)freeToPlay Error:(NSError **)error;

@end
