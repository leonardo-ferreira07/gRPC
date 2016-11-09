#import "b2beauty/tracking/Tracking.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation B2BTrackingTracking

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"b2beauty.tracking" serviceName:@"Tracking"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark UserLocation(UserLocationRequest) returns (UserLocationResponse)

- (void)userLocationWithRequest:(B2BTrackingUserLocationRequest *)request handler:(void(^)(B2BTrackingUserLocationResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUserLocationWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUserLocationWithRequest:(B2BTrackingUserLocationRequest *)request handler:(void(^)(B2BTrackingUserLocationResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UserLocation"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[B2BTrackingUserLocationResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
