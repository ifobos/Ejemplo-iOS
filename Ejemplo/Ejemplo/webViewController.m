//
//  webViewController.m
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 13/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import "webViewController.h"

@interface webViewController ()

@end

@implementation webViewController

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

- (IBAction)leerHTML:(id)sender {

    NSString * html = @"<h1>Hola</h1><p style='color: red'>Esto es un texto html <b>personalizado</b></p> <input type='button' value='Alerta' onClick='document.write(\"Este texto de inserta desde javascript\");'>";
    [self.navegador loadHTMLString:html baseURL:nil];
    

    
}

- (IBAction)leerWEB:(id)sender {
    
    NSURL* url =[[NSURL alloc] initWithString:@"http://google.com"];
    NSURLRequest * request = [[NSURLRequest alloc]initWithURL:url];
    self.navegador.delegate=self;
    [self.navegador loadRequest:request];
    
}

- (IBAction)leerPDF:(id)sender {
    
    NSString *ruta = [[NSBundle  mainBundle] pathForResource:@"pdf" ofType:@"pdf"];
    NSData *datosPDF = [[NSData alloc]initWithContentsOfFile: ruta];
    [self.navegador loadData:datosPDF MIMEType:@"application/pdf" textEncodingName:nil   baseURL:nil];

}
@end
