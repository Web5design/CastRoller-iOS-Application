    //
//  CollectionNavController.m
//  CastRoller
//
//  Created by William Spaetzel on 11-02-08.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import "CollectionNavController.h"
#import "EpisodeViewController.h"

@implementation CollectionNavController
@synthesize myLabel;


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
	myLabel.text = @"The label has changed";
	
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


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

- (IBAction)episodeButtonPressed:(id)sender{
	if (episodeController == nil)
	{
		episodeController = [[EpisodeViewController alloc]
							 initWithNibName:@"EpisodeView"
							 bundle:nil ];
	}
	
	[self.navigationController pushViewController:episodeController animated:YES];
}

@end
