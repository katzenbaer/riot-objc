//
//  BLPlayerStatsSummaryListDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLPlayerStatsSummaryListDto.h"

@implementation BLPlayerStatsSummaryListDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        NSMutableArray *statSummaries = [NSMutableArray array];
        
        for (NSDictionary *statSummary in dict[@"playerStatSummaries"]) {
            [statSummaries addObject:[BLPlayerStatsSummaryDto newWithKVDictionary:statSummary]];
        }
        
        self.playerStatSummaries = [NSArray arrayWithArray:statSummaries];
    }
    return self;
}

@end
