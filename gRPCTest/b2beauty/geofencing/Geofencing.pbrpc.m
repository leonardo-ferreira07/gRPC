//#import "b2beauty/geofencing/Geofencing.pbrpc.h"
#import <B2Beauty-ProtoRPC/Geofencing.pbrpc.h>

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation B2BGeofencingGeofencing

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"b2beauty.geofencing" serviceName:@"Geofencing"]);
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


#pragma mark CreateEvent(CreateEventRequest) returns (CreateEventResponse)

- (void)createEventWithRequest:(B2BGeofencingCreateEventRequest *)request handler:(void(^)(B2BGeofencingCreateEventResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateEventWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateEventWithRequest:(B2BGeofencingCreateEventRequest *)request handler:(void(^)(B2BGeofencingCreateEventResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateEvent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[B2BGeofencingCreateEventResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListGeofences(ListGeofencesRequest) returns (ListGeofencesResponse)

- (void)listGeofencesWithRequest:(B2BGeofencingListGeofencesRequest *)request handler:(void(^)(B2BGeofencingListGeofencesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListGeofencesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListGeofencesWithRequest:(B2BGeofencingListGeofencesRequest *)request handler:(void(^)(B2BGeofencingListGeofencesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListGeofences"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[B2BGeofencingListGeofencesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
