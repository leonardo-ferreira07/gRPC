#import <B2Beauty-ProtoRPC/Notification.pbobjc.h>

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import <B2Beauty-ProtoRPC/DevicePlatform.pbobjc.h>


NS_ASSUME_NONNULL_BEGIN

@protocol B2BNotificationNotificationService <NSObject>

#pragma mark SendNotification(SendNotificationRequest) returns (SendNotificationResponse)

/**
 * / Used to send a notification
 */
- (void)sendNotificationWithRequest:(B2BNotificationSendNotificationRequest *)request handler:(void(^)(B2BNotificationSendNotificationResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * / Used to send a notification
 */
- (GRPCProtoCall *)RPCToSendNotificationWithRequest:(B2BNotificationSendNotificationRequest *)request handler:(void(^)(B2BNotificationSendNotificationResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark TrackNotification(TrackNotificationRequest) returns (TrackNotificationResponse)

/**
 * / Used to track a notification
 */
- (void)trackNotificationWithRequest:(B2BNotificationTrackNotificationRequest *)request handler:(void(^)(B2BNotificationTrackNotificationResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * / Used to track a notification
 */
- (GRPCProtoCall *)RPCToTrackNotificationWithRequest:(B2BNotificationTrackNotificationRequest *)request handler:(void(^)(B2BNotificationTrackNotificationResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface B2BNotificationNotificationService : GRPCProtoService<B2BNotificationNotificationService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
