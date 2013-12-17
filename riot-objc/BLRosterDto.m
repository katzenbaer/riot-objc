//
//  BLRosterDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRosterDto.h"

@implementation BLRosterDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        NSMutableArray *members = [NSMutableArray array];
        for (NSDictionary *member in self.memberList) {
            [members addObject:[BLTeamMemberInfoDto newWithKVDictionary:member]];
        }
        
        self.memberList = [NSArray arrayWithArray:members];
    }
    return self;
}

@end
