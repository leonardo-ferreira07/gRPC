//#import "b2beauty/notification/broker/Aws.pbrpc.h"
 #import <B2Beauty-ProtoRPC/Aws.pbrpc.h>

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation Aws

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"b2beauty.notification.broker" serviceName:@"Aws"]);
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


#pragma mark SendSms(Sms) returns (SmsReply)

- (void)sendSmsWithRequest:(Sms *)request handler:(void(^)(SmsReply *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSendSmsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSendSmsWithRequest:(Sms *)request handler:(void(^)(SmsReply *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SendSms"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SmsReply class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
