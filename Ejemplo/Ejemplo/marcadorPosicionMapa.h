//
//  marcadorPosicionMapa.h
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 12/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface marcadorPosicionMapa : NSObject <MKAnnotation>
@property CLLocationCoordinate2D coordenada;
@end
