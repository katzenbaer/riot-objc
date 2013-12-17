//
//  BLRunePagesDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRunePagesDto.h"

@implementation BLRunePagesDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        NSMutableArray *pages = [NSMutableArray array];
        
        for (NSDictionary *page in dict[@"pages"]) {
            [pages addObject:[BLRunePageDto newWithKVDictionary:page]];
        }
        
        self.pages = [NSArray arrayWithArray:pages];
    }
    return self;
}

@end
