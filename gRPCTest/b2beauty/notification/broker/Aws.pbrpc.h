#import "b2beauty/notification/broker/Aws.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "b2beauty/notification/broker/Sms.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol Aws <NSObject>

#pragma mark SendSms(Sms) returns (SmsReply)

- (void)sendSmsWithRequest:(Sms *)request handler:(void(^)(SmsReply *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSendSmsWithRequest:(Sms *)request handler:(void(^)(SmsReply *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface Aws : GRPCProtoService<Aws>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
