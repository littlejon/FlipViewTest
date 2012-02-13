//
//  FlipMain.m
//  ViewFlipTest
//
//  Created by JON SMITH on 11/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipMain.h"

@implementation FlipMain

- (id)init
{
    self = [super init];
    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0,0,100,30)];
        label.text = @"FlipMain";
        [self addSubview:label];
    }
    return self;
}

@end
