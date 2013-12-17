//
//  BLKeyValueObject.m
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@implementation BLKeyValueObject

- (id)init {
    return [self initWithKVDictionary:@{}];
}

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super init]) {
        NSMutableDictionary *_dict = [NSMutableDictionary dictionaryWithDictionary:dict];
        if ([_dict valueForKey:@"id"] != nil) {
            id val = _dict[@"id"];
            [_dict removeObjectForKey:@"id"];
            [_dict setObject:val forKey:@"_id"];
        }
        [self setValuesForKeysWithDictionary:_dict];
    }
    return self;
}

+ (instancetype)newWithKVDictionary:(NSDictionary *)dict {
    return [[[self class] alloc] initWithKVDictionary:dict];
}

@end
