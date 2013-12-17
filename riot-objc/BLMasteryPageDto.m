//
//  BLMasteryPageDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLMasteryPageDto.h"

@implementation BLMasteryPageDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        NSMutableArray *talents = [NSMutableArray array];
        
        for (NSDictionary *talent in dict[@"talents"]) {
            [talents addObject:[BLTalentDto newWithKVDictionary:talent]];
        }
        
        self.talents = [NSArray arrayWithArray:talents];
    }
    return self;
}

@end
