//
//  BLChampionListDto.m
//  riot-objc
//
//  Created by Ash K on 12/15/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLChampionListDto.h"

@implementation BLChampionListDto

- (id)init {
    return [self initWithChampions:[NSArray array]];
}

- (id)initWithChampions:(NSArray *)champions {
    if (self = [super init]) {
        self.champions = [NSArray arrayWithArray:champions];
    }
    return self;
}

@end
