//
//  BLSummonerNameListDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLSummonerNameListDto.h"

@implementation BLSummonerNameListDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        NSMutableArray *summoners = [NSMutableArray array];
        
        for (NSDictionary *summoner in dict[@"summoners"]) {
            [summoners addObject:[BLSummonerNameDto newWithKVDictionary:summoner]];
        }
        
        self.summoners = [NSArray arrayWithArray:summoners];
    }
    return self;
}

@end
