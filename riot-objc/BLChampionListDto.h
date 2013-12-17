//
//  BLChampionListDto.h
//  riot-objc
//
//  Created by Ash K on 12/15/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BLKeyValueObject.h"

#import "BLChampionDto.h"

@interface BLChampionListDto : BLKeyValueObject

@property (nonatomic, strong) NSArray *champions; // The list of champion information.

@end
