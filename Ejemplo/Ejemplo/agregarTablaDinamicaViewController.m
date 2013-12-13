//
//  agregarTablaDinamicaViewController.m
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 12/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import "agregarTablaDinamicaViewController.h"

@interface agregarTablaDinamicaViewController ()

@end

@implementation agregarTablaDinamicaViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guardar:(id)sender {
    if ([self.texto.text length]<3 ) {
        UIAlertView * alerta =[[UIAlertView alloc]initWithTitle:@"Error" message:@"El campo Item debe tener al menos 3 caracteres" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
        [alerta show];
    }
    else{
        item* nuevo=[[item alloc]init];
        nuevo.texto=self.texto.text;
        nuevo.estado=self.estado.on;
        
        NSMutableArray * coleccion = [repositorioItems sharedInstance].items;
        [coleccion addObject:nuevo];
        
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (IBAction)cancelar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
