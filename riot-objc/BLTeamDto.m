//
//  BLTeamDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLTeamDto.h"

@implementation BLTeamDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        // matchHistory
        {
            NSMutableArray *matchHistory = [NSMutableArray array];
            for (NSDictionary *m in dict[@"matchHistory"]) {
                [matchHistory addObject:[BLMatchHistorySummaryDto newWithKVDictionary:m]];
            }
            
            self.matchHistory = [NSArray arrayWithArray:matchHistory];
        }
            
        // messageOfDay
        self.messageOfDay = [BLMessageOfDayDto newWithKVDictionary:dict[@"messageOfDay"]];
            
        // roster
        self.roster = [BLRosterDto newWithKVDictionary:dict[@"roster"]];
        
        // teamStatSummary
        self.teamStatSummary = [BLTeamStatSummaryDto newWithKVDictionary:dict[@"teamStatSummary"]];
    }
    return self;
}

@end
