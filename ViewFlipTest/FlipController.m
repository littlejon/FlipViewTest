//
//  FlipController.m
//  ViewFlipTest
//
//  Created by JON SMITH on 11/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipController.h"

@implementation FlipController

- (FlipMain *)vcFlipMain {
    if (!_vcFlipMain) {
        _vcFlipMain = [[FlipMain alloc] init];
    }
    return _vcFlipMain;
}

- (FlipSide *)vcFlipSide {
    if (!_vcFlipSide) {
        _vcFlipSide = [[FlipSide alloc] initWithStyle:UITableViewStyleGrouped];
    }
    return _vcFlipSide;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)flipView {
    [UIView transitionWithView:containerView duration:0.75 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        
        if (frontView) {
            [self.vcFlipMain.view removeFromSuperview];
            [containerView addSubview:self.vcFlipSide.view];
            frontView = NO;
        } else {
            [self.vcFlipSide.view removeFromSuperview];
            [containerView addSubview:self.vcFlipMain.view];
            frontView = YES;
        }
        
    } completion:nil];    
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Flip Control";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Flip" style:UIBarButtonItemStylePlain target:self action:@selector(flipView)];
}

- (void)loadView {
    NSLog(@"This Happened");
    
    containerView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
        
    [containerView addSubview:self.vcFlipMain.view];
    
    frontView = YES;
    
    self.view = containerView;
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
