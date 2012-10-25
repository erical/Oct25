//
//  Oct25AppDelegate.h
//  Oct25
//
//  Created by Erica Lederman on 10/23/12.
//  Copyright (c) 2012 Erica Lederman. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Oct25AppDelegate : UIResponder <UIApplicationDelegate> {
	View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
