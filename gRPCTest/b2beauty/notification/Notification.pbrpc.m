#import "b2beauty/notification/Notification.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation B2BNotificationNotificationService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"b2beauty.notification" serviceName:@"NotificationService"]);
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


#pragma mark SendNotification(SendNotificationRequest) returns (SendNotificationResponse)

/**
 * / Used to send a notification
 */
- (void)sendNotificationWithRequest:(B2BNotificationSendNotificationRequest *)request handler:(void(^)(B2BNotificationSendNotificationResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSendNotificationWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * / Used to send a notification
 */
- (GRPCProtoCall *)RPCToSendNotificationWithRequest:(B2BNotificationSendNotificationRequest *)request handler:(void(^)(B2BNotificationSendNotificationResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SendNotification"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[B2BNotificationSendNotificationResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark TrackNotification(TrackNotificationRequest) returns (TrackNotificationResponse)

/**
 * / Used to track a notification
 */
- (void)trackNotificationWithRequest:(B2BNotificationTrackNotificationRequest *)request handler:(void(^)(B2BNotificationTrackNotificationResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToTrackNotificationWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * / Used to track a notification
 */
- (GRPCProtoCall *)RPCToTrackNotificationWithRequest:(B2BNotificationTrackNotificationRequest *)request handler:(void(^)(B2BNotificationTrackNotificationResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"TrackNotification"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[B2BNotificationTrackNotificationResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
