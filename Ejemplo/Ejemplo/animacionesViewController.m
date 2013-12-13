//
//  animacionesViewController.m
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 11/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import "animacionesViewController.h"

@interface animacionesViewController ()

@end

@implementation animacionesViewController
@synthesize imagen;
@synthesize time;

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
	// Do any additional setup after loading the view.
}

-(void) proximaAnimacion:(NSTimer *)timer
{
    if (self.imagen.frame.size.height<=0)
    {
        self.imagen.frame = CGRectMake(0, 0, 300, 128);
    }
    self.imagen.frame = CGRectMake(0, 0, 300, self.imagen.frame.size.height-8);
}

- (IBAction)iniciarAnimacion:(id)sender
{
    if ([self.time isValid] == NO )
    {
        self.time=[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector: @selector(proximaAnimacion:) userInfo:Nil repeats:YES];
    }
}

- (IBAction)pararAnimacion:(id)sender
{
    [self.time invalidate];
}

- (IBAction)cambiarFondo:(id)sender
{
    [UIView animateWithDuration:3 animations:^{
        if (self.view.backgroundColor==[UIColor blackColor])
            self.view.backgroundColor= [UIColor whiteColor];
        else
            self.view.backgroundColor= [UIColor blackColor];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
