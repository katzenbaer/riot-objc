//
//  BLRuneSlotDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRuneSlotDto.h"

@implementation BLRuneSlotDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        self.rune = [BLRuneDto newWithKVDictionary:dict[@"rune"]];
    }
    return self;
}

@end
