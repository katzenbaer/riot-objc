//
//  BLChampionDto.m
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLChampionDto.h"

@implementation BLChampionDto

- (id)init {
    return [self initWithName:@""];
}

- (id)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

@end
