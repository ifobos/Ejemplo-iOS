//
//  geolocalizacionViewController.h
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 11/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "marcadorPosicionMapa.h"

@interface geolocalizacionViewController : UIViewController <CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *latitud;
@property (weak, nonatomic) IBOutlet UITextField *longitud;
@property (weak, nonatomic) IBOutlet UITextField *heading;
@property (strong, nonatomic) CLLocationManager* manager;
@property (weak, nonatomic) IBOutlet MKMapView *mapa;


- (IBAction)ubicar:(id)sender;
@end
