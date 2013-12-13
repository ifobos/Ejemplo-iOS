//
//  videoViewController.m
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 11/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import "videoViewController.h"

@interface videoViewController ()

@end

@implementation videoViewController
@synthesize reproductor;
@synthesize contenedor;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString* ruta=[[NSBundle mainBundle] pathForResource:@"scrum" ofType:@"mp4"];
    NSURL* url = [[NSURL alloc] initFileURLWithPath:ruta];
    self.reproductor = [[MPMoviePlayerController alloc] initWithContentURL:url];
    self.reproductor.view.frame =CGRectMake(5, 5, 300, 300);
    [self.contenedor addSubview:reproductor.view];
    
    [self.reproductor play];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
