 //
//  geolocalizacionViewController.m
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 11/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import "geolocalizacionViewController.h"

@interface geolocalizacionViewController ()

@end

@implementation geolocalizacionViewController
@synthesize manager;

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

- (IBAction)ubicar:(id)sender {
    self.manager = [[CLLocationManager alloc] init];
    self.manager.distanceFilter = 100;
    self.manager.desiredAccuracy = kCLLocationAccuracyKilometer;
    self.manager.delegate=self;
    [self.manager startUpdatingLocation];
    [self.manager startUpdatingHeading];
    
    
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    self.latitud.text=[[NSString alloc]initWithFormat:@"%f",self.manager.location.coordinate.latitude];
    self.longitud.text=[[NSString alloc]initWithFormat:@"%f",self.manager.location.coordinate.longitude];
   
    MKCoordinateRegion region;
    region.center.latitude = self.manager.location.coordinate.latitude;
    region.center.longitude = self.manager.location.coordinate.longitude;
    region.span.latitudeDelta=0.005;
    region.span.longitudeDelta=0.005;

    [self.mapa setRegion:region animated:YES];
    
    marcadorPosicionMapa* marcador =[[marcadorPosicionMapa alloc] init];
    marcador.coordenada= self.manager.location.coordinate;
    [self.mapa addAnnotation:marcador];
    
}

-(void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    self.heading.text=[[NSString alloc]initWithFormat:@"%f",self.manager.heading.magneticHeading];
}

-(BOOL)locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)manager
{
    return YES;
}

@end
