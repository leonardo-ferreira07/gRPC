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

#import <GRPCClient/GRPCCall+ChannelArg.h>
#import <GRPCClient/GRPCCall+Tests.h>
#import <B2Beauty-ProtoRPC/Geofencing.pbrpc.h>
#import <B2Beauty-ProtoRPC/Location.pbobjc.h>
#import <B2Beauty-ProtoRPC/DevicePlatform.pbobjc.h>
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
    static NSString * const kHostAddress = @"lalala";

    [GRPCCall useInsecureConnectionsForHost:kHostAddress];

    B2BGeofencingGeofencing *client = [[B2BGeofencingGeofencing alloc] initWithHost:kHostAddress];

    B2BTypeLocation *location = [[B2BTypeLocation alloc] init];
    location.latitude = -25.442221;
    location.longitude = -49.294378;

    B2BGeofencingCreateEventRequest *request = [B2BGeofencingCreateEventRequest new];

    request.name = @"lalala";
    request.location = location;
    request.userId = @"1234";
    request.businessId = @"4321";
    request.platform = B2BTypeDevicePlatform_Ios;
    request.transition = B2BGeofencingTransition_Enter;
    

    [client createEventWithRequest:request handler:^(B2BGeofencingCreateEventResponse *response, NSError *error) {
        if(response.success) {
            NSLog(@"success gRPC");
        } else {
            NSLog(@"fail gRPC");
        }
    }];
}


@end
