//
//  BLChampionStatsDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLChampionStatsDto.h"

@implementation BLChampionStatsDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        NSMutableArray *stats = [NSMutableArray array];
        
        for (NSDictionary *stat in dict[@"stats"]) {
            [stats addObject:[BLChampionStatDto newWithKVDictionary:stat]];
        }
        
        self.stats = [NSArray arrayWithArray:stats];
    }
    return self;
}

@end
