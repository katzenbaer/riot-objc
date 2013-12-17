//
//  NSNumber+BoolString
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "NSNumber+BoolString.h"

@implementation NSNumber (BoolString)

- (NSString *)boolString {
    return (self.boolValue) ? @"YES" : @"NO";
}

@end
