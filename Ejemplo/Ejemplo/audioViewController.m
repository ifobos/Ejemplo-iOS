//
//  audioViewController.m
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 10/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import "audioViewController.h"

@interface audioViewController ()

@end

@implementation audioViewController

@synthesize reproductor;

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
    NSError* error;
    NSString* ruta= [[NSBundle mainBundle] pathForResource:@"Luther Vandross - Never Too Much" ofType:@"mp3"];
    NSURL* url=[[NSURL alloc] initFileURLWithPath:ruta];
    
    self.reproductor=[[AVAudioPlayer alloc] initWithContentsOfURL:url error: &error];
    self.reproductor.volume=1;
    
    [self.reproductor prepareToPlay];
    

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)play:(id)sender {
    [self.reproductor play];
}

- (IBAction)pausa:(id)sender {
    self.etiqueta.text=[[NSString alloc]initWithFormat:@"Duracion: %i  Tiempo: %i", (NSInteger)self.reproductor.duration, (NSInteger)self.reproductor.currentTime];
    [self.reproductor pause];
}

- (IBAction)stop:(id)sender {
    [self.reproductor stop];
    self.reproductor.currentTime=0;
    self.etiqueta.text=[[NSString alloc]initWithFormat:@"Duracion: %i  Tiempo: %i", (NSInteger)self.reproductor.duration, (NSInteger)self.reproductor.currentTime];

}

- (IBAction)cambioVolumen:(id)sender {
    self.reproductor.volume= ((UISlider*)sender).value;
}
@end
