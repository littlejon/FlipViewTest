//
//  FlipController.h
//  ViewFlipTest
//
//  Created by JON SMITH on 11/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlipMain.h"
#import "FlipSide.h"

@interface FlipController : UIViewController {
    FlipMain *_vcFlipMain;
    FlipSide *_vcFlipSide;
    UIView *containerView;
    BOOL frontView;
}

@property (readonly) FlipMain *vcFlipMain;
@property (readonly) FlipSide *vcFlipSide;

- (void)flipView;

@end
