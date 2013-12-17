//
//  BLRunePageDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLRuneSlotDto.h"

@interface BLRunePageDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *_id; // Rune page ID.
@property (nonatomic, strong) NSString *name; // Rune page name.
@property (nonatomic, strong) NSNumber *current; // Indicates if the page is the current page.
@property (nonatomic, strong) NSArray *slots; // List of rune slots associated with the rune page.

@end
