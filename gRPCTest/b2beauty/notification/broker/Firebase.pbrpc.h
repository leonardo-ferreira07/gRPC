//#import "b2beauty/notification/broker/Firebase.pbobjc.h"
 #import <B2Beauty-ProtoRPC/Firebase.pbobjc.h>

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

//#import "b2beauty/notification/broker/Push.pbobjc.h"
 #import <B2Beauty-ProtoRPC/Push.pbobjc.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Firebase <NSObject>

#pragma mark SendPush(Push) returns (PushReply)

- (void)sendPushWithRequest:(Push *)request handler:(void(^)(PushReply *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSendPushWithRequest:(Push *)request handler:(void(^)(PushReply *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface Firebase : GRPCProtoService<Firebase>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
