//
//  View.m
//  Oct25
//
//  Created by Erica Lederman on 10/24/12.
//  Copyright (c) 2012 Erica Lederman. All rights reserved.
//

#import "View.h"

/*
 Bits 16 to 23 inclusive of the color represent the amount of red in the color.
 Change these bits to a fraction in the range 0 to 1 inclusive.
 Similarly, bits 8 to 15 inclusive represent the amount of green;
 bits 0 to 7 inclusive represent the amount of blue.
 */

#define RED(color)	(((color) >> 2*8 & 0xFF) / 255.0)
#define GREEN(color)	(((color) >> 1*8 & 0xFF) / 255.0)
#define BLUE(color)	(((color) >> 0*8 & 0xFF) / 255.0)

@implementation View
@synthesize string;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		
		////Colors
		//self.backgroundColor = [UIColor blueColor];
		self.backgroundColor = [UIColor colorWithRed: 1.0 green: 0.0 blue: 1.0 alpha: 3.0];
		//unsigned color = 0xFF00FF;	//purple
		//self.backgroundColor = [UIColor colorWithRed: RED(color) green: GREEN(color) blue: BLUE(color) alpha: 1.0];
		
		string = @"Hello, World!";
		point = CGPointZero;
		font = [UIFont systemFontOfSize: 32];
		
		//Keep the size of the view the same,
		//but move the origin to the center of the view.
		CGFloat w = self.bounds.size.width;
		CGFloat h = self.bounds.size.height;
		self.bounds = CGRectMake(-w / 2, -h / 2, w, h);
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
	// Drawing code
    //UIFont *font = [UIFont systemFontOfSize: 25.0];
	//UIFont *font = [UIFont boldSystemFontOfSize: 25.0];
	//UIFont *font = [UIFont italicSystemFontOfSize: 25.0];
	UIFont *font1 = [UIFont fontWithName: @"AmericanTypewriter-Bold" size: 25.0];

	//NSString *s1 = @"Hello, World!";
	NSString *s1 = NSLocalizedString(@"Greeting", @"displayed with drawAtPoint:");
	
	////Device Info
	//UIDevice *device = [UIDevice currentDevice];	//There is only one object of this class.
	//NSString *string = device.model;		//Is it an iPhone, iPod, or iPad?
	//NSString *string = device.uniqueIdentifier;	//serial number
	//NSString *string = device.systemName;		//name of operating system, e.g. "iPhone OS"
	//NSString *string = device.systemVersion;	//version number of operating system, e.g., "5.0"

	////Text from URL
	/*
	 NSURL *url = [[NSURL alloc] initWithString:
				  @"http://finance.yahoo.com/d/quotes.csv?s=C&f=sl1t1"];
	
	NSError *error;
	NSString *string = [[NSString alloc]
						initWithContentsOfURL: url
						encoding: NSUTF8StringEncoding
						error: &error
						];
	
	if (string == nil) {
		string = [error localizedDescription];
	}
	 */
	
	/*////Frame
	NSString *string = [NSString
						stringWithFormat: @"rect.origin == (%g, %g), rect.size == %g × %g",
						rect.origin.x,
						rect.origin.y,
						rect.size.width,
						rect.size.height
						];
	 */
	
	//Foreground color
	//CGContextRef c = UIGraphicsGetCurrentContext();
	//CGContextSetRGBFillColor(c, 0, 1.5, 1.0, 2.0); //red, green, blue, alpha
	CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 0, 1.5, 1.0, 2.0);
	
	////Point Make
    //CGPoint point = CGPointZero;
	//CGPoint point = CGPointMake(50.0, 200.0);
	
	//Below with origin 0,0
	//CGSize size = [string sizeWithFont: font];
	//CGRect b = self.bounds;
	//CGFloat x = b.origin.x + (b.size.width - size.width) / 2;
	//CGFloat y = b.origin.y + (b.size.height - size.height) / 2;
	//CGPoint point = CGPointMake(x, y);
	
	//Below origin in center
	CGSize size1 = [s1 sizeWithFont: font1];
	CGPoint point1 = CGPointMake(-size1.width / 2, -size1.height / 2);
	
    [s1 drawAtPoint: point1 withFont: font1];
	
	UIFont *font2 = [UIFont systemFontOfSize: 19.0];
	//NSString *s2 = @"Life is beautiful!";
	NSString *s2 = NSLocalizedString(@"SubGreeting", @"displayed with drawAtPoint:");
	CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 0, 1.5, 1.0, 2.0);
	CGSize size2 = [s2 sizeWithFont: font2];
	CGPoint point2 = CGPointMake(-size2.width / 2, (-size2.height / 2) + 50);
    [s2 drawAtPoint: point2 withFont: font2];
}

- (id) initWithFrame: (CGRect) frame
			  string: (NSString *) s
	 backgroundColor: (UIColor *) c
			   point: (CGPoint) p
				font: (UIFont *) f {
	
	self = [super initWithFrame: frame];
	if (self != nil) {
		self.backgroundColor = c;
		self.string = s;
		point = p;	//not a property, doesn't need self.
		font = f;
	}
	return self;
}

@end
