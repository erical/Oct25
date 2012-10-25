//
//  View.h
//  Oct25
//
//  Created by Erica Lederman on 10/24/12.
//  Copyright (c) 2012 Erica Lederman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View : UIView {
	NSString *string;
	CGPoint point;
	UIFont *font;
}

@property (nonatomic, copy) NSString *string;

- (id) initWithFrame: (CGRect) frame
			  string: (NSString *) s
	 backgroundColor: (UIColor *) c
			   point: (CGPoint) p
				font: (UIFont *) f;
@end
