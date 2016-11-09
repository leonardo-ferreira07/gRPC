// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: b2beauty/notification/notification.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class B2BNotificationSendNotificationRequest_Device;
GPB_ENUM_FWD_DECLARE(B2BTypeDevicePlatform);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum B2BNotificationSendNotificationRequest_App

/**
 * *
 * Application source
 **/
typedef GPB_ENUM(B2BNotificationSendNotificationRequest_App) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  B2BNotificationSendNotificationRequest_App_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** / Beauty Date */
  B2BNotificationSendNotificationRequest_App_Beautydate = 0,

  /** / AZ */
  B2BNotificationSendNotificationRequest_App_Az = 1,
};

GPBEnumDescriptor *B2BNotificationSendNotificationRequest_App_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL B2BNotificationSendNotificationRequest_App_IsValidValue(int32_t value);

#pragma mark - Enum B2BNotificationSendNotificationRequest_Type

/**
 * *
 * Type of notification
 **/
typedef GPB_ENUM(B2BNotificationSendNotificationRequest_Type) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  B2BNotificationSendNotificationRequest_Type_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** / Sign up via web */
  B2BNotificationSendNotificationRequest_Type_Welcome = 0,

  /** / Sign up via sync */
  B2BNotificationSendNotificationRequest_Type_WelcomeFromSync = 1,

  /** / Sign up via manager */
  B2BNotificationSendNotificationRequest_Type_WelcomeFromBusiness = 2,

  /** / Appointment confirmation */
  B2BNotificationSendNotificationRequest_Type_AppointmentConfirmation = 3,

  /** / Appointment rescheduled */
  B2BNotificationSendNotificationRequest_Type_AppointmentRescheduled = 4,

  /** / Appointment cancelled */
  B2BNotificationSendNotificationRequest_Type_AppointmentCancelled = 5,

  /** / Appointment reminder */
  B2BNotificationSendNotificationRequest_Type_AppointmentReminder = 6,

  /** / Client arrived */
  B2BNotificationSendNotificationRequest_Type_ClientArrived = 7,

  /** / Appointment post sales */
  B2BNotificationSendNotificationRequest_Type_AppointmentPostSales = 8,
};

GPBEnumDescriptor *B2BNotificationSendNotificationRequest_Type_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL B2BNotificationSendNotificationRequest_Type_IsValidValue(int32_t value);

#pragma mark - Enum B2BNotificationTrackNotificationRequest_Event

/**
 * *
 * Type of events for track
 **/
typedef GPB_ENUM(B2BNotificationTrackNotificationRequest_Event) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  B2BNotificationTrackNotificationRequest_Event_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** / Notification was received */
  B2BNotificationTrackNotificationRequest_Event_Received = 0,

  /** / Notification was opened */
  B2BNotificationTrackNotificationRequest_Event_Opened = 1,
};

GPBEnumDescriptor *B2BNotificationTrackNotificationRequest_Event_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL B2BNotificationTrackNotificationRequest_Event_IsValidValue(int32_t value);

#pragma mark - B2BNotificationNotificationRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface B2BNotificationNotificationRoot : GPBRootObject
@end

#pragma mark - B2BNotificationSendNotificationRequest

typedef GPB_ENUM(B2BNotificationSendNotificationRequest_FieldNumber) {
  B2BNotificationSendNotificationRequest_FieldNumber_Type = 1,
  B2BNotificationSendNotificationRequest_FieldNumber_App = 2,
  B2BNotificationSendNotificationRequest_FieldNumber_DevicesArray = 3,
  B2BNotificationSendNotificationRequest_FieldNumber_Phone = 4,
  B2BNotificationSendNotificationRequest_FieldNumber_Message = 5,
  B2BNotificationSendNotificationRequest_FieldNumber_DeepLink = 6,
  B2BNotificationSendNotificationRequest_FieldNumber_BusinessId = 7,
  B2BNotificationSendNotificationRequest_FieldNumber_ClientshipId = 8,
  B2BNotificationSendNotificationRequest_FieldNumber_UserId = 9,
};

/**
 * *
 * Request to send a notification
 **/
@interface B2BNotificationSendNotificationRequest : GPBMessage

/** / Type of notification */
@property(nonatomic, readwrite) B2BNotificationSendNotificationRequest_Type type;

/** / Application source */
@property(nonatomic, readwrite) B2BNotificationSendNotificationRequest_App app;

/** / Devices to notify */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<B2BNotificationSendNotificationRequest_Device*> *devicesArray;
/** The number of items in @c devicesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger devicesArray_Count;

/** / Phone to notify */
@property(nonatomic, readwrite, copy, null_resettable) NSString *phone;

/** / Message to send */
@property(nonatomic, readwrite, copy, null_resettable) NSString *message;

/** / Push deep link */
@property(nonatomic, readwrite, copy, null_resettable) NSString *deepLink;

/** / Business's UUID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *businessId;

/** / Clientship's UUID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *clientshipId;

/** / User's UUID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *userId;

@end

/**
 * Fetches the raw value of a @c B2BNotificationSendNotificationRequest's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t B2BNotificationSendNotificationRequest_Type_RawValue(B2BNotificationSendNotificationRequest *message);
/**
 * Sets the raw value of an @c B2BNotificationSendNotificationRequest's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetB2BNotificationSendNotificationRequest_Type_RawValue(B2BNotificationSendNotificationRequest *message, int32_t value);

/**
 * Fetches the raw value of a @c B2BNotificationSendNotificationRequest's @c app property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t B2BNotificationSendNotificationRequest_App_RawValue(B2BNotificationSendNotificationRequest *message);
/**
 * Sets the raw value of an @c B2BNotificationSendNotificationRequest's @c app property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetB2BNotificationSendNotificationRequest_App_RawValue(B2BNotificationSendNotificationRequest *message, int32_t value);

#pragma mark - B2BNotificationSendNotificationRequest_Device

typedef GPB_ENUM(B2BNotificationSendNotificationRequest_Device_FieldNumber) {
  B2BNotificationSendNotificationRequest_Device_FieldNumber_Platform = 1,
  B2BNotificationSendNotificationRequest_Device_FieldNumber_Token = 2,
  B2BNotificationSendNotificationRequest_Device_FieldNumber_LastSignIn = 3,
};

/**
 * *
 * Devices to receive notification
 **/
@interface B2BNotificationSendNotificationRequest_Device : GPBMessage

/** / Device platform */
@property(nonatomic, readwrite) enum B2BTypeDevicePlatform platform;

/** / Device Token */
@property(nonatomic, readwrite, copy, null_resettable) NSString *token;

/** / Last sign in using device */
@property(nonatomic, readwrite) int32_t lastSignIn;

@end

/**
 * Fetches the raw value of a @c B2BNotificationSendNotificationRequest_Device's @c platform property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t B2BNotificationSendNotificationRequest_Device_Platform_RawValue(B2BNotificationSendNotificationRequest_Device *message);
/**
 * Sets the raw value of an @c B2BNotificationSendNotificationRequest_Device's @c platform property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetB2BNotificationSendNotificationRequest_Device_Platform_RawValue(B2BNotificationSendNotificationRequest_Device *message, int32_t value);

#pragma mark - B2BNotificationSendNotificationResponse

typedef GPB_ENUM(B2BNotificationSendNotificationResponse_FieldNumber) {
  B2BNotificationSendNotificationResponse_FieldNumber_Success = 1,
  B2BNotificationSendNotificationResponse_FieldNumber_Id_p = 2,
};

/**
 * *
 * Received when send a notification
 **/
@interface B2BNotificationSendNotificationResponse : GPBMessage

/** / Request successfully (or not) */
@property(nonatomic, readwrite) BOOL success;

/** / Transaction's UUID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@end

#pragma mark - B2BNotificationTrackNotificationRequest

typedef GPB_ENUM(B2BNotificationTrackNotificationRequest_FieldNumber) {
  B2BNotificationTrackNotificationRequest_FieldNumber_Event = 1,
  B2BNotificationTrackNotificationRequest_FieldNumber_Id_p = 2,
};

/**
 * *
 * Request to track a notification
 **/
@interface B2BNotificationTrackNotificationRequest : GPBMessage

/** / Event for request */
@property(nonatomic, readwrite) B2BNotificationTrackNotificationRequest_Event event;

/** / Notification's UUID send in push */
@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@end

/**
 * Fetches the raw value of a @c B2BNotificationTrackNotificationRequest's @c event property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t B2BNotificationTrackNotificationRequest_Event_RawValue(B2BNotificationTrackNotificationRequest *message);
/**
 * Sets the raw value of an @c B2BNotificationTrackNotificationRequest's @c event property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetB2BNotificationTrackNotificationRequest_Event_RawValue(B2BNotificationTrackNotificationRequest *message, int32_t value);

#pragma mark - B2BNotificationTrackNotificationResponse

typedef GPB_ENUM(B2BNotificationTrackNotificationResponse_FieldNumber) {
  B2BNotificationTrackNotificationResponse_FieldNumber_Success = 1,
  B2BNotificationTrackNotificationResponse_FieldNumber_Id_p = 2,
};

/**
 * *
 * Received when track a notification
 **/
@interface B2BNotificationTrackNotificationResponse : GPBMessage

/** / Request successfully (or not) */
@property(nonatomic, readwrite) BOOL success;

/** / Transaction's UUID */
@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
