//#import "b2beauty/geofencing/Geofencing.pbobjc.h"
#import <B2Beauty-ProtoRPC/Geofencing.pbobjc.h>

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import <B2Beauty-ProtoRPC/Location.pbobjc.h>
#import <B2Beauty-ProtoRPC/DevicePlatform.pbobjc.h>


NS_ASSUME_NONNULL_BEGIN

@protocol B2BGeofencingGeofencing <NSObject>

#pragma mark CreateEvent(CreateEventRequest) returns (CreateEventResponse)

- (void)createEventWithRequest:(B2BGeofencingCreateEventRequest *)request handler:(void(^)(B2BGeofencingCreateEventResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateEventWithRequest:(B2BGeofencingCreateEventRequest *)request handler:(void(^)(B2BGeofencingCreateEventResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListGeofences(ListGeofencesRequest) returns (ListGeofencesResponse)

- (void)listGeofencesWithRequest:(B2BGeofencingListGeofencesRequest *)request handler:(void(^)(B2BGeofencingListGeofencesResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToListGeofencesWithRequest:(B2BGeofencingListGeofencesRequest *)request handler:(void(^)(B2BGeofencingListGeofencesResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface B2BGeofencingGeofencing : GRPCProtoService<B2BGeofencingGeofencing>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
