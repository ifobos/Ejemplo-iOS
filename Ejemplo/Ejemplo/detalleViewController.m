//
//  detalleViewController.m
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 12/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import "detalleViewController.h"

@interface detalleViewController ()

@end

@implementation detalleViewController
@synthesize item;

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
    self.texto.text= self.item.texto;
    self.estado.on= self.item.estado;
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated
{
    self.item.texto = self.texto.text;
    self.item.estado = self.estado.on;
    
}

- (IBAction)eliminar:(id)sender
{
    NSMutableArray* items = [repositorioItems sharedInstance].items;
    [items removeObjectAtIndex:self.posicion];
    [self.navigationController popViewControllerAnimated:YES];

}

@end
