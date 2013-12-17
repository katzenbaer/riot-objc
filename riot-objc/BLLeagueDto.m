//
//  BLLeagueDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLLeagueDto.h"

@implementation BLLeagueDto

+ (NSArray *)queues {
    static NSArray *_queues;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _queues = @[@"RANKED_SOLO_5x5", @"RANKED_TEAM_3x3", @"RANKED_TEAM_5x5"];
    });
    
    return _queues;
}

+ (NSArray *)tiers {
    static NSArray *_tiers;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tiers = @[@"CHALLENGER", @"DIAMOND", @"PLATINUM", @"GOLD", @"SILVER", @"BRONZE"];
    });
    
    return _tiers;
}

@end
