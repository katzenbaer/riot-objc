//
//  BLLeagueItemDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLLeagueItemDto.h"

@implementation BLLeagueItemDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        if (dict[@"miniSeries"] != nil)
            self.miniSeries = [BLMiniSeriesDto newWithKVDictionary:dict[@"miniSeries"]];
        else
            self.miniSeries = nil;
    }
    return self;
}

@end
