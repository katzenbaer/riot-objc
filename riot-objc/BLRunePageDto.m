//
//  BLRunePageDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRunePageDto.h"

@implementation BLRunePageDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        NSMutableArray *slots = [NSMutableArray array];
        
        for (NSDictionary *slot in dict[@"slots"]) {
            [slots addObject:[BLRuneSlotDto newWithKVDictionary:slot]];
        }
        
        self.slots = [NSArray arrayWithArray:slots];
    }
    return self;
}

@end
