//
//  AppDelegate.m
//  ViewFlipTest
//
//  Created by JON SMITH on 30/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "View1.h"
#import "FlipController.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    
    UITabBarController *tbc = [[UITabBarController alloc] init];

    UITabBarItem *v1tbi = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
    UINavigationController *v1nc = [[UINavigationController alloc] init];
    v1nc.tabBarItem = v1tbi;
    [v1tbi release];
    View1 *v1 = [[View1 alloc] init];
    [v1nc pushViewController:v1 animated:NO];
    [v1 release];
    
    UITabBarItem *fctbi = [[UITabBarItem alloc] initWithTitle:@"Flipper" image:nil tag:1];
    UINavigationController *fvnc = [[UINavigationController alloc] init];
    fvnc.tabBarItem = fctbi;
    [fctbi release];
    //FlipSide *fc = [[FlipSide alloc] initWithStyle:UITableViewStyleGrouped];
    FlipController *fc = [[FlipController alloc] init];
    [fvnc pushViewController:fc animated:NO];
    [fc release];
    
    tbc.viewControllers = [NSArray arrayWithObjects:v1nc, fvnc, nil];
    [v1nc release];
    [fvnc release];
    
    [self.window addSubview:tbc.view];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
