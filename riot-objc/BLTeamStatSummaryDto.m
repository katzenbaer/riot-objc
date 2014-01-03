//
//  BLTeamStatSummaryDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLTeamStatSummaryDto.h"

@implementation BLTeamStatSummaryDto

- (id) initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {        
        NSMutableSet *teamStatDetails = [NSMutableSet set];
        for (NSDictionary *teamStatDetail in dict[@"teamStatDetails"]) {
            [teamStatDetails addObject:[BLTeamStatDetailDto
                                        newWithKVDictionary:teamStatDetail]];
        }
        
        self.teamStatDetails = [NSSet setWithSet:teamStatDetails];
    }
    return self;
}

@end
