
//
//  CollectionViewController.m
//  CastRoller
//
//  Created by William Spaetzel on 11-02-08.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import "CollectionViewController.h"
#import "EpisodeViewController.h"
#import "WebViewWatcher.h"

@implementation CollectionViewController

@synthesize webView;

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	self.title = @"Collection";
	self.navigationController.navigationBar.tintColor = [UIColor blackColor];
	self.navigationController.toolbarHidden = YES;

	
	if( watcher == nil)
	{
		watcher = [[WebViewWatcher alloc] initWithNavController:self.navigationController];
	}
	
	webView.delegate= watcher;
	
			
	NSString *urlAddress = [[NSBundle mainBundle] pathForResource:@"collection" ofType:@"html"];
	
	NSURL *url = [NSURL fileURLWithPath:urlAddress];
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	[webView loadRequest:requestObj];
	
    [super viewDidLoad];
	
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (IBAction)viewEpisodePressed:(id)sender{
	EpisodeViewController *controller = [[EpisodeViewController alloc] initWithNibName:@"EpisodeView" bundle:nil];
	controller.episodeId = 1208797;
	
	[self.navigationController pushViewController:controller animated:YES];
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
