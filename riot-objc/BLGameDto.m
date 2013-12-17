//
//  BLGameDto.m
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLGameDto.h"

@implementation BLGameDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        NSMutableArray *fellowPlayers = [NSMutableArray array];
        for (NSDictionary *player in dict[@"fellowPlayers"]) {
            [fellowPlayers addObject:[BLPlayerDto newWithKVDictionary:player]];
        }
        
        self.fellowPlayers = [NSArray arrayWithArray:fellowPlayers];
        
        NSMutableArray *statistics = [NSMutableArray array];
        for (NSDictionary *stat in dict[@"statistics"]) {
            [statistics addObject:[BLRawStatDto newWithKVDictionary:stat]];
        }
        
        self.statistics = [NSArray arrayWithArray:statistics];
    }
    return self;
}

@end
