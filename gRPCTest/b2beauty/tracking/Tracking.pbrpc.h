#import "b2beauty/tracking/Tracking.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "b2beauty/type/Location.pbobjc.h"
#import "b2beauty/type/DevicePlatform.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol B2BTrackingTracking <NSObject>

#pragma mark UserLocation(UserLocationRequest) returns (UserLocationResponse)

- (void)userLocationWithRequest:(B2BTrackingUserLocationRequest *)request handler:(void(^)(B2BTrackingUserLocationResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUserLocationWithRequest:(B2BTrackingUserLocationRequest *)request handler:(void(^)(B2BTrackingUserLocationResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface B2BTrackingTracking : GRPCProtoService<B2BTrackingTracking>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
