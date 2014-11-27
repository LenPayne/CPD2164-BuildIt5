//
//  Worker.h
//  CPD2164-BuildIt5
//
//  Created by Len Payne on 2014-11-17.
//  Copyright (c) 2014 Len Payne. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Workstation;

@interface Worker : NSObject
@property (nonatomic, copy) NSString* name;
@property (nonatomic, weak) Workstation* desktop;
@end
