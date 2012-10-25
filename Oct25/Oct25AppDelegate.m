//
//  Oct25AppDelegate.m
//  Oct25
//
//  Created by Erica Lederman on 10/23/12.
//  Copyright (c) 2012 Erica Lederman. All rights reserved.
//

#import "Oct25AppDelegate.h"
#import "View.h"

@implementation Oct25AppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	// Override point for customization after application launch.
    UIScreen *screen = [UIScreen mainScreen];
    CGRect applicationFrame = screen.applicationFrame;
    CGRect bounds = screen.bounds;
	
	NSLog(@"application:didFinishLaunchingWithOptions: bounds.origin == (%g, %g), bounds.size == %g × %g",
		  bounds.origin.x,
		  bounds.origin.y,
		  bounds.size.width,
		  bounds.size.height);
	
	//Hides status bar
	//application.statusBarHidden = YES;
    
	view = [[View alloc] initWithFrame: applicationFrame];
	/*
	 view = [[View alloc]
			initWithFrame: applicationFrame
			string: @"HelloWorld!"
			backgroundColor: [UIColor whiteColor]
			point: CGPointZero
			font:  [UIFont systemFontOfSize: 32.0]
			];
	 */
    self.window = [[UIWindow alloc] initWithFrame: bounds];
	
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor blueColor];
	[self.window addSubview: view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
	NSLog(@"applicationWillResignActive:");
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
	NSLog(@"applicationDidEnterBackground:");
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
	
	//Trigger another call to drawRect:.
	[view setNeedsDisplay];
	NSLog(@"applicationWillEnterForeground:");
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
	NSLog(@"applicationDidBecomeActive:");
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
	NSLog(@"applicationWillTerminate:");
}

@end
