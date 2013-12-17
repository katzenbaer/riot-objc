//
//  BLMasteryPagesDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLMasteryPagesDto.h"

@implementation BLMasteryPagesDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        NSMutableArray *pages = [NSMutableArray array];
        
        for (NSDictionary *page in dict[@"pages"]) {
            [pages addObject:[BLMasteryPageDto newWithKVDictionary:page]];
        }
        
        self.pages = [NSArray arrayWithArray:pages];
    }
    return self;
}

@end
