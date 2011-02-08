//
//  FirstViewController.m
//  CastRoller
//
//  Created by William Spaetzel on 11-02-04.
//  Copyright 2011 CastRoller. All rights reserved.
//

#define BASEURL [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]]

#import "FirstViewController.h"


@implementation FirstViewController


@synthesize myWebView;
@synthesize channelsWebView;


- (void)openBottomPage:(NSString*)url{
	NSURL *channelsUrl = [NSURL fileURLWithPath:url];
	NSURLRequest *channelsRequestObj = [NSURLRequest requestWithURL:channelsUrl];
	
	[channelsWebView loadRequest:channelsRequestObj];
	
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {

	// Hide the navigation bar
	self.navigationController.navigationBarHidden = YES;
	

	NSString *urlAddress = [[NSBundle mainBundle] pathForResource:@"index_podcasts" ofType:@"html"];
	
	NSURL *url = [NSURL fileURLWithPath:urlAddress];
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	[myWebView loadRequest:requestObj];

	NSString *channelsUrlAddress = [[NSBundle mainBundle] pathForResource:@"index_channels" ofType:@"html"];

	[self openBottomPage: channelsUrlAddress];
	
	
    [super viewDidLoad];
}


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
	[channelsWebView dealloc];
    [super dealloc];
}



- (IBAction)featuredButtonPressed:(id)sender {
	UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
	switch ([segmentedControl selectedSegmentIndex]) {
		case 0:
			[self openBottomPage:[[NSBundle mainBundle] pathForResource:@"index_channels" ofType:@"html"] ];
			break;
		case 1:
			[self openBottomPage:[[NSBundle mainBundle] pathForResource:@"index_new" ofType:@"html"] ];
			break;
		case 2:
			[self openBottomPage:[[NSBundle mainBundle] pathForResource:@"index_popular" ofType:@"html"] ];
			break;
		default:
			break;
	}
	
}




@end
