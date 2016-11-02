//
//  ViewController.m
//  gRPCTest
//
//  Created by Leonardo Vinicius Kaminski Ferreira on 02/11/16.
//  Copyright © 2016 Leonardo Vinicius Kaminski Ferreira. All rights reserved.
//

#import "ViewController.h"

// TESTING GRPC CALL
#import <GRPCClient/GRPCCall+ChannelArg.h>
#import <GRPCClient/GRPCCall+Tests.h>
#import "geofencing/Geofencing.pbrpc.h"
#import "geofencing/Location.pbobjc.h"
#import "geofencing/DevicePlatform.pbobjc.h"
// TESTING GRPC CALL

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self performCallToServer];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)performCallToServer {
    static NSString * const kHostAddress = @"lalalala";

    [GRPCCall useInsecureConnectionsForHost:kHostAddress];

    Geofencing *client = [[Geofencing alloc] initWithHost:kHostAddress];

    Location *location = [[Location alloc] init];
    location.latitude = -25.442221;
    location.longitude = -49.294378;

    CreateEventRequest *request = [CreateEventRequest new];

    request.name = @"lalala";
    request.location = location;
    request.userId = @"1234";
    request.businessId = @"4321";
    request.platform = DevicePlatform_Ios;
    request.transition = Transition_Enter;
    

    [client createEventWithRequest:request handler:^(CreateEventResponse *response, NSError *error) {
        if(response.success) {
            NSLog(@"success gRPC");
        }
    }];
}


@end
