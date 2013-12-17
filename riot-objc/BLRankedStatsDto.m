//
//  BLRankedStatsDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRankedStatsDto.h"

@implementation BLRankedStatsDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        NSMutableArray *champions = [NSMutableArray array];
        
        for (NSDictionary *champion in dict[@"champions"]) {
            [champions addObject:[BLChampionStatsDto newWithKVDictionary:champion]];
        }
        
        self.champions = [NSArray arrayWithArray:champions];
    }
    return self;
}

@end
