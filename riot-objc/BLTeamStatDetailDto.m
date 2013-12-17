//
//  BLTeamStatDetailDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLTeamStatDetailDto.h"

@implementation BLTeamStatDetailDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        self.teamId = [BLTeamIdDto newWithKVDictionary:dict[@"teamId"]];
    }
    return self;
}

@end
