//
//  Workstation.h
//  CPD2164-BuildIt5
//
//  Created by Len Payne on 2014-11-17.
//  Copyright (c) 2014 Len Payne. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Worker;

@interface Workstation : NSObject
@property (nonatomic, copy) NSString* location;
@property (nonatomic) Worker* user;
@end
