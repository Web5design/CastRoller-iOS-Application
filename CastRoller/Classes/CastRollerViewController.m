//
//  CastRollerViewController.m
//  CastRoller
//
//  Created by William Spaetzel on 11-02-05.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import "CastRollerViewController.h"

@implementation CastRollerViewController

@synthesize myWebView;
@synthesize myLabel;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	NSString *urlString = [[NSString alloc] initWithFormat:@"http://dev.castroller.com",nil];
	
	 NSURL *url = [[NSURL alloc] initWithString: urlString];
	 
	NSURLRequest *request = [[NSURLRequest alloc] initWithURL: url];
	
	[webView loadRequest:request];
	

	[url release];
	[request release];

	myLabel.text = urlString;
	
		[urlString release];
	
    [super viewDidLoad];
}
 */


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[myWebView dealloc];
	[myLabel dealloc];
    [super dealloc];
}

@end
