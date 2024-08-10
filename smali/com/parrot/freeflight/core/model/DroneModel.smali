.class public abstract Lcom/parrot/freeflight/core/model/DroneModel;
.super Lcom/parrot/freeflight/core/model/Model;
.source "DroneModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;,
        Lcom/parrot/freeflight/core/model/DroneModel$AlertSoundState;,
        Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;,
        Lcom/parrot/freeflight/core/model/DroneModel$AppCommand;,
        Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;,
        Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;,
        Lcom/parrot/freeflight/core/model/DroneModel$MavlinkPlayingState;,
        Lcom/parrot/freeflight/core/model/DroneModel$AntiFlickeringMode;,
        Lcom/parrot/freeflight/core/model/DroneModel$VideoStreamMode;,
        Lcom/parrot/freeflight/core/model/DroneModel$VideoResolutions;,
        Lcom/parrot/freeflight/core/model/DroneModel$PictureFormat;,
        Lcom/parrot/freeflight/core/model/DroneModel$FrameRate;,
        Lcom/parrot/freeflight/core/model/DroneModel$RecordingMode;,
        Lcom/parrot/freeflight/core/model/DroneModel$WhiteBalanceState;,
        Lcom/parrot/freeflight/core/model/DroneModel$MagnetoCalibrationProcedureState;,
        Lcom/parrot/freeflight/core/model/DroneModel$Axis;,
        Lcom/parrot/freeflight/core/model/DroneModel$MagnetoCalibrationStatus;,
        Lcom/parrot/freeflight/core/model/DroneModel$MotorState;,
        Lcom/parrot/freeflight/core/model/DroneModel$WifiSecurity;,
        Lcom/parrot/freeflight/core/model/DroneModel$WifiType;,
        Lcom/parrot/freeflight/core/model/DroneModel$PhotoCaptureState;,
        Lcom/parrot/freeflight/core/model/DroneModel$MediaRecordingState;,
        Lcom/parrot/freeflight/core/model/DroneModel$FlightDistanceRestriction;,
        Lcom/parrot/freeflight/core/model/DroneModel$Position;,
        Lcom/parrot/freeflight/core/model/DroneModel$GpsFixStatus;,
        Lcom/parrot/freeflight/core/model/DroneModel$ReturnHomeDroneStatus;,
        Lcom/parrot/freeflight/core/model/DroneModel$ReturnHomeType;,
        Lcom/parrot/freeflight/core/model/DroneModel$ReturnHomeStatus;,
        Lcom/parrot/freeflight/core/model/DroneModel$FlyingState;,
        Lcom/parrot/freeflight/core/model/DroneModel$Type;
    }
.end annotation


# static fields
.field public static final ALERT_SOUND_PLAYING:I = 0x1

.field public static final ALERT_SOUND_STOPPED:I = 0x0

.field public static final ALERT_SOUND_UNAVAILABLE:I = 0x2

.field public static final ALERT_SOUND_UNKNOWN:I = -0x1

.field public static final ANAFI4K:I = 0x4

.field public static final ANTI_FLICKERING_50_HZ:I = 0x1

.field public static final ANTI_FLICKERING_60_HZ:I = 0x2

.field public static final ANTI_FLICKERING_AUTO:I = 0x0

.field public static final ANTI_FLICKERING_UNKNOWN:I = -0x1

.field public static final AXIS_NONE:I = 0x0

.field public static final BEBOP:I = 0x0

.field public static final BEBOP_2:I = 0x1

.field public static final CHIMERA:I = 0x2

.field public static final CMD_LANDING:I = 0x0

.field public static final CMD_UNKNOWN:I = -0x1

.field public static final DEFAULT_ALT_GPS_VALUE:D = 0.0

.field public static final DEFAULT_GPS_VALUE:D = 500.0

.field public static final EMERGENCY:I = 0x5

.field public static final EVINRUDE:I = 0x3

.field public static final FLIGHT_DISTANCE_RESTRICTION_DISABLED:I = 0x1

.field public static final FLIGHT_DISTANCE_RESTRICTION_ENABLED:I = 0x0

.field public static final FLIGHT_DISTANCE_RESTRICTION_UNAVAILABLE:I = -0x1

.field public static final FLYING:I = 0x3

.field public static final FRAME_RATE_24_FPS:I = 0x0

.field public static final FRAME_RATE_25_FPS:I = 0x1

.field public static final FRAME_RATE_30_FPS:I = 0x2

.field public static final FRAME_RATE_COUNT:I = 0x3

.field public static final FRAME_RATE_UNKNOWN:I = -0x1

.field public static final GPS_FIXED:I = 0x0

.field public static final GPS_NOT_FIXED:I = 0x1

.field public static final GPS_UNKNOWN:I = -0x1

.field public static final HOVERING:I = 0x2

.field private static final KEY_ALL_FLIGHTS_DURATION:Ljava/lang/String; = "all_flights_duration"

.field private static final KEY_ANTI_FLICKERING_MODE:Ljava/lang/String; = "anti_flickering_mode"

.field private static final KEY_AUTO_RECORD_ENABLED:Ljava/lang/String; = "auto_record_enabled"

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field protected static final KEY_CALIBRATION_STATE:Ljava/lang/String; = "calibration_state"

.field private static final KEY_DISTANCE_RESTRICTION_STATE:Ljava/lang/String; = "distance_restriction_state"

.field private static final KEY_DISTANCE_RESTRICTION_STATUS:Ljava/lang/String; = "distance_restriction_status"

.field private static final KEY_EMPTY:Ljava/lang/String; = "empty"

.field private static final KEY_EXPOSITION_STATE:Ljava/lang/String; = "exposition_state"

.field private static final KEY_FLIGHT_NUMBER:Ljava/lang/String; = "flight_number"

.field private static final KEY_FRAME_RATE:Ljava/lang/String; = "frame_rate"

.field private static final KEY_GPS_HARDWARE_VERSION:Ljava/lang/String; = "gps_hardware_version"

.field private static final KEY_GPS_SOFTWARE_VERSION:Ljava/lang/String; = "gps_software_verion"

.field private static final KEY_HIGH_PRODUCT_SERIAL:Ljava/lang/String; = "high_product_serial"

.field private static final KEY_LAST_FLIGHT_DURATION:Ljava/lang/String; = "last_flight_duration"

.field private static final KEY_LAST_KNOWN_LOCATION:Ljava/lang/String; = "last_known_location"

.field private static final KEY_LAST_MOTOR_ERROR:Ljava/lang/String; = "last_motor_error"

.field private static final KEY_LOW_PRODUCT_SERIAL:Ljava/lang/String; = "low_product_serial"

.field private static final KEY_MAX_ALTITUDE_STATE:Ljava/lang/String; = "max_altitude_state"

.field private static final KEY_MAX_DISTANCE_STATE:Ljava/lang/String; = "max_distance_state"

.field private static final KEY_MAX_PITCH_STATE:Ljava/lang/String; = "max_pitch_state"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture_format"

.field private static final KEY_RECORDING_MODE:Ljava/lang/String; = "recording_mode"

.field private static final KEY_RECORDING_START_TIME:Ljava/lang/String; = "recording_start_time"

.field private static final KEY_RETURN_HOME_DELAY:Ljava/lang/String; = "return_home_delay"

.field private static final KEY_RETURN_HOME_TYPE:Ljava/lang/String; = "return_home_type"

.field private static final KEY_RETURN_HOME_TYPE_DRONE:Ljava/lang/String; = "return_home_type_drone"

.field private static final KEY_SATURATION_STATE:Ljava/lang/String; = "saturation_state"

.field private static final KEY_TIME_LAPSE_ENABLED:Ljava/lang/String; = "time_lapse_enabled"

.field private static final KEY_TIME_LAPSE_INTERVAL:Ljava/lang/String; = "time_lapse_interval"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_VIDEO_RESOLUTIONS:Ljava/lang/String; = "video_resolutions"

.field private static final KEY_WHITE_BALANCE_STATE:Ljava/lang/String; = "white_balance_state"

.field public static final LANDED:I = 0x0

.field public static final LANDING:I = 0x4

.field public static final MAGNETO_CALIBRATED:I = 0x0

.field public static final MAGNETO_CALIBRATION_FAILED:I = 0x2

.field public static final MAGNETO_CALIBRATION_STARTED:I = 0x0

.field public static final MAGNETO_CALIBRATION_STOPPED:I = 0x1

.field public static final MAGNETO_CALIBRATION_UNKNOWN:I = 0x2

.field public static final MAGNETO_NOT_CALIBRATED:I = 0x1

.field public static final MAGNETO_UNKNOWN_CALIBRATION_STATE:I = -0x1

.field public static final MAVLINK_STATE_PAUSED:I = 0x1

.field public static final MAVLINK_STATE_PLAYING:I = 0x0

.field public static final MAVLINK_STATE_STOPPED:I = 0x2

.field public static final MAVLINK_STATE_UNKNOWN:I = -0x1

.field public static final MEDIA_RECORDING_STARTED:I = 0x0

.field public static final MEDIA_RECORDING_STOPPED:I = 0x1

.field public static final MEDIA_RECORDING_UNAVAILABLE:I = 0x2

.field public static final MEDIA_RECORDING_UNKNOWN:I = -0x1

.field public static final MOTOR_ERROR_ASSERT:I = 0xd

.field public static final MOTOR_ERROR_BATTERY_VOLTAGE:I = 0x9

.field public static final MOTOR_ERROR_BOOTLOADER:I = 0xc

.field public static final MOTOR_ERROR_COMMUNICATION_LOST:I = 0x4

.field public static final MOTOR_ERROR_EEPROM:I = 0x1

.field public static final MOTOR_ERROR_LIPO_CELLS:I = 0xa

.field public static final MOTOR_ERROR_MOSFET:I = 0xb

.field public static final MOTOR_ERROR_MOTOR_SETTING:I = 0x7

.field public static final MOTOR_ERROR_MOTOR_STALLED:I = 0x2

.field public static final MOTOR_ERROR_NO_ERROR:I = 0x0

.field public static final MOTOR_ERROR_PROPELLER_SECURITY:I = 0x3

.field public static final MOTOR_ERROR_RC_EMERGENCY_STOP:I = 0x5

.field public static final MOTOR_ERROR_REALTIME:I = 0x6

.field public static final MOTOR_ERROR_TEMPERATURE:I = 0x8

.field public static final MOTOR_RAMPING:I = 0x7

.field public static final MOTOR_UNKNOWN_STATE:I = -0x1

.field public static final PHOTO_CAPTURE_BUSY:I = 0x1

.field public static final PHOTO_CAPTURE_READY:I = 0x0

.field public static final PHOTO_CAPTURE_UNAVAILABLE:I = 0x2

.field public static final PHOTO_CAPTURE_UNKNOWN:I = -0x1

.field public static final PICTURE_FORMAT_COUNT:I = 0x4

.field public static final PICTURE_FORMAT_JPEG:I = 0x1

.field public static final PICTURE_FORMAT_JPEG_FISHEYE:I = 0x3

.field public static final PICTURE_FORMAT_RAW:I = 0x0

.field public static final PICTURE_FORMAT_SNAPSHOT:I = 0x2

.field public static final PICTURE_FORMAT_UNKNOWN:I = -0x1

.field public static final RECORDING_MODE_COUNT:I = 0x2

.field public static final RECORDING_MODE_QUALITY:I = 0x0

.field public static final RECORDING_MODE_TIME:I = 0x1

.field public static final RECORDING_MODE_UNKNOWN:I = -0x1

.field public static final RETURN_HOME_AVAILABLE:I = 0x0

.field public static final RETURN_HOME_IN_PROGRESS:I = 0x1

.field public static final RETURN_HOME_MAX_DELAY:D = 120.0

.field public static final RETURN_HOME_MIN_DELAY:D = 0.0

.field public static final RETURN_HOME_TYPE_DRONE_FIRST_FIX:I = 0x2

.field public static final RETURN_HOME_TYPE_DRONE_PILOT_POSITION:I = 0x1

.field public static final RETURN_HOME_TYPE_DRONE_TAKE_OFF_POSITION:I = 0x0

.field public static final RETURN_HOME_TYPE_DRONE_UNKNOWN:I = -0x1

.field public static final RETURN_HOME_TYPE_FOLLOWEE:I = 0x2

.field public static final RETURN_HOME_TYPE_PILOT_POSITION:I = 0x1

.field public static final RETURN_HOME_TYPE_TAKE_OFF_POSITION:I = 0x0

.field public static final RETURN_HOME_TYPE_UNKNOWN:I = -0x1

.field public static final RETURN_HOME_UNAVAILABLE:I = 0x2

.field public static final RETURN_HOME_UNKNOWN:I = -0x1

.field public static final SIMULATOR_CPU_ID:Ljava/lang/String; = "P7000000000000000000"

.field public static final TAKING_OFF:I = 0x1

.field private static final TEMPORARY_ALERT_DELAY_MS:I = 0x1388

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final UNKNOWN:I = -0x1

.field public static final UNKNOWN_AXIS:I = -0x1

.field public static final UNKNOWN_WIFI_BAND_AUTH:I = -0x1

.field public static final UNKNOWN_WIFI_SECURITY:I = -0x1

.field public static final USER_TAKE_OFF:I = 0x6

.field public static final VIDEO_RESOLUTIONS_REC1080_STREAM480:I = 0x0

.field public static final VIDEO_RESOLUTIONS_REC720_STREAM720:I = 0x1

.field public static final VIDEO_RESOLUTIONS_UNKNOWN:I = -0x1

.field public static final VIDEO_STREAM_MODE_HIGH_RELIABILITY:I = 0x1

.field public static final VIDEO_STREAM_MODE_HIGH_RELIABILITY_LOW_FRAMERATE:I = 0x2

.field public static final VIDEO_STREAM_MODE_LOW_LATENCY:I = 0x0

.field public static final VIDEO_STREAM_MODE_UNKNOWN:I = -0x1

.field public static final WHITE_BALANCE_AUTO:I = 0x0

.field public static final WHITE_BALANCE_CLOUDY:I = 0x3

.field public static final WHITE_BALANCE_COOL_WHITE:I = 0x4

.field public static final WHITE_BALANCE_COUNT:I = 0x5

.field public static final WHITE_BALANCE_DAYLIGHT:I = 0x2

.field public static final WHITE_BALANCE_TUNGSTEN:I = 0x1

.field public static final WHITE_BALANCE_UNKNOWN:I = -0x1

.field public static final WIFI_BAND_AUTO_2_4GHZ:I = 0x0

.field public static final WIFI_BAND_AUTO_5GHZ:I = 0x1

.field public static final WIFI_BAND_AUTO_ALL:I = 0x2

.field public static final WIFI_BAND_MANUAL:I = 0x3

.field public static final WIFI_SECURITY_OPEN:I = 0x0

.field public static final WIFI_SECURITY_WPA2:I = 0x1

.field public static final X_AXIS:I = 0x1

.field public static final Y_AXIS:I = 0x2

.field public static final Z_AXIS:I = 0x3


# instance fields
.field protected final mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mAlertSoundState:I

.field protected mAntiFlickeringMode:I

.field private final mAppCommandListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mAuthChannelFinalList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mAuthorizedWifiChannels:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoRecordEnabled:Z

.field protected final mBarometer:Lcom/parrot/freeflight/location/Barometer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mBarometerListener:Lcom/parrot/freeflight/location/Barometer$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mBatteryLevel:I

.field protected final mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

.field protected final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mControllerLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mCrashLogCount:I

.field protected mDefaultCameraPan:I

.field protected mDefaultCameraTilt:I

.field protected mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mDistanceRestrictionState:Lcom/parrot/freeflight/util/ToggleState;

.field protected final mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

.field protected final mExpositionState:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field protected mFlatTrimAllowed:Z

.field protected mFlightDistanceRestrictionStatus:I

.field protected final mFlightPlanComponents:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/FlightPlanComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mFlightPlanLocked:Z

.field protected final mFlightPlanMavlinkPlayingState:Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;

.field protected mFlightPlanSupported:Z

.field protected mFlightsNumber:I

.field protected mFlyingState:I

.field protected mFrameRate:I

.field protected mGeofenceCenterPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mGpsFixStatus:I

.field protected mGpsFixed:Z

.field protected mGpsHardwareVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mGpsSatelliteCount:I

.field protected mGpsSoftwareVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mHardwareVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mHighProductSerial:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mHomePosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mIsAntiflickeringCmdSupported:Z

.field protected mLastFlightDuration:I

.field protected mLastGaz:F

.field protected mLastMotorError:I

.field protected mLastPitch:F

.field protected mLastRecordingDuration:J

.field protected mLastRoll:F

.field protected mLastYaw:F

.field protected final mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mLocationWithGpsFixed:Z

.field protected mLowProductSerial:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mMassStorageContentCmdSupported:Z

.field protected mMassStorageIdKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mMassStorageName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mMassStoragePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field protected final mMaxDistanceState:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field protected final mMaxPitchState:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field protected mMediaCountTakenDuringRun:I

.field protected mMediaRecordingState:I

.field protected mMemorySizeInMByte:I

.field protected mMotorSoftwareVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mPhotoCount:I

.field protected mPhotoRecordingState:I

.field protected mPictureFormat:I

.field protected final mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

.field private final mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mProductName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mPudCount:I

.field protected mRecordingMode:I

.field protected mRecordingStartTime:J

.field protected mRelativeAltitude:D

.field protected final mReturnHomeDelay:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mReturnHomeStatus:I

.field protected mReturnHomeType:I

.field protected mReturnHomeTypeDrone:I

.field protected mRssi:S

.field protected mRunId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mSaturationState:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field protected final mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mSoftwareVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mSpeed:D

.field protected mSpeedBridleListener:Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mSpeedX:F

.field protected mSpeedY:F

.field protected mSpeedZ:F

.field protected mStoreEmpty:Z

.field protected mTimeLapseEnabled:Z

.field protected final mTimeLapseInterval:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mTotalFlightsDuration:I

.field private final mType:I

.field protected mUsedMemorySizeInMByte:I

.field protected mVideoCount:I

.field protected mVideoRecording:Z

.field protected mVideoResolutions:I

.field protected mVideoStreamMode:I

.field protected mWhiteBalanceState:I

.field protected final mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

.field protected final mWifiList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mWifiNameState:Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)V
    .locals 5
    .param p1, "localStorage"    # Lcom/parrot/freeflight/core/model/LocalStorage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "smartLocationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "barometer"    # Lcom/parrot/freeflight/location/Barometer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/Model;-><init>()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHandler:Landroid/os/Handler;

    .line 105
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mStoreEmpty:Z

    .line 144
    new-instance v0, Lcom/parrot/freeflight/core/model/DroneModel$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/model/DroneModel$1;-><init>(Lcom/parrot/freeflight/core/model/DroneModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    .line 170
    new-instance v0, Lcom/parrot/freeflight/core/model/DroneModel$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/model/DroneModel$2;-><init>(Lcom/parrot/freeflight/core/model/DroneModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mBarometerListener:Lcom/parrot/freeflight/location/Barometer$Listener;

    .line 353
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 376
    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlyingState:I

    .line 402
    iput v4, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeStatus:I

    .line 421
    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeType:I

    .line 439
    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeTypeDrone:I

    .line 457
    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMemorySizeInMByte:I

    .line 459
    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mUsedMemorySizeInMByte:I

    .line 461
    iput-short v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRssi:S

    .line 496
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMassStorageContentCmdSupported:Z

    .line 497
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoCount:I

    .line 498
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoCount:I

    .line 499
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPudCount:I

    .line 500
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mCrashLogCount:I

    .line 553
    iput v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGpsFixStatus:I

    .line 715
    new-instance v0, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 743
    new-instance v0, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHomePosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 760
    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightDistanceRestrictionStatus:I

    .line 768
    sget-object v0, Lcom/parrot/freeflight/core/model/DronePreset;->DISTANCE_RESTRICTION_STATE:Lcom/parrot/freeflight/util/ToggleState;

    invoke-static {v0}, Lcom/parrot/freeflight/util/ToggleState;->copyOf(Lcom/parrot/freeflight/util/ToggleState;)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mDistanceRestrictionState:Lcom/parrot/freeflight/util/ToggleState;

    .line 841
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaRecordingState:I

    .line 859
    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoRecordingState:I

    .line 867
    new-instance v0, Lcom/parrot/freeflight/piloting/model/DroneCamera;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/DroneCamera;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    .line 897
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    .line 914
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWifiNameState:Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWifiList:Ljava/util/List;

    .line 920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAuthorizedWifiChannels:Ljava/util/List;

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAuthChannelFinalList:Ljava/util/List;

    .line 930
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    .line 938
    const-string v0, "0.0.0"

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSoftwareVersion:Ljava/lang/String;

    .line 947
    const-string v0, "HW_00"

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHardwareVersion:Ljava/lang/String;

    .line 955
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGpsSoftwareVersion:Ljava/lang/String;

    .line 971
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHighProductSerial:Ljava/lang/String;

    .line 974
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLowProductSerial:Ljava/lang/String;

    .line 1006
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMotorSoftwareVersion:Ljava/lang/String;

    .line 1049
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastMotorError:I

    .line 1142
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    .line 1149
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlatTrimAllowed:Z

    .line 1155
    sget-object v0, Lcom/parrot/freeflight/core/model/DronePreset;->EXPOSITION_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mExpositionState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 1162
    sget-object v0, Lcom/parrot/freeflight/core/model/DronePreset;->SATURATION_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSaturationState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 1182
    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWhiteBalanceState:I

    .line 1200
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingMode:I

    .line 1219
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFrameRate:I

    .line 1239
    iput v4, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPictureFormat:I

    .line 1272
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoResolutions:I

    .line 1298
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoStreamMode:I

    .line 1316
    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAntiFlickeringMode:I

    .line 1324
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mIsAntiflickeringCmdSupported:Z

    .line 1330
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAutoRecordEnabled:Z

    .line 1336
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTimeLapseEnabled:Z

    .line 1342
    sget-object v0, Lcom/parrot/freeflight/core/model/DronePreset;->TIME_LAPSE_INTERVAL:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 1343
    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTimeLapseInterval:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 1413
    new-instance v0, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanMavlinkPlayingState:Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;

    .line 1429
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanSupported:Z

    .line 1435
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRunId:Ljava/lang/String;

    .line 1487
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAppCommandListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1511
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    .line 1531
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAlertSoundState:I

    .line 1623
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanLocked:Z

    .line 181
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getReturnHomeDelayPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeDelay:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 182
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxAltitudePreset()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 183
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxDistancePreset()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMaxDistanceState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 184
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxPitchPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMaxPitchState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 185
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    .line 186
    iput-object p2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 187
    iput-object p3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 189
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p2, v0, :cond_2

    .line 190
    const/4 v0, 0x3

    iput v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mType:I

    .line 201
    :goto_0
    invoke-static {}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->createComponentsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanComponents:Ljava/util/Map;

    .line 202
    iput-object p5, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    .line 203
    iput-object p4, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->requestLocationUpdates(Lcom/parrot/freeflight/location/SmartLocationManager$Listener;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mBarometerListener:Lcom/parrot/freeflight/location/Barometer$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/Barometer;->setListener(Lcom/parrot/freeflight/location/Barometer$Listener;)V

    .line 211
    :cond_1
    return-void

    .line 191
    :cond_2
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p2, v0, :cond_3

    .line 192
    iput v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mType:I

    goto :goto_0

    .line 193
    :cond_3
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_CHIMERA:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p2, v0, :cond_4

    .line 194
    iput v4, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mType:I

    goto :goto_0

    .line 195
    :cond_4
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ANAFI4K:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p2, v0, :cond_5

    .line 196
    const/4 v0, 0x4

    iput v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mType:I

    goto :goto_0

    .line 198
    :cond_5
    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mType:I

    goto :goto_0
.end method

.method private checkCommandsActivation()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1584
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastPitch:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastRoll:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastYaw:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastGaz:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/model/DroneModel;->requestCommandsActivationChanged(Z)V

    .line 1585
    return-void

    .line 1584
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onNewTemporaryAlert(III)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "criticalityLevel"    # I

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->getTemporaryAlert()Lcom/parrot/freeflight/piloting/alert/Alert;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/alert/Alert;->setInfo(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1802
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->getTemporaryAlert()Lcom/parrot/freeflight/piloting/alert/Alert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/alert/Alert;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1804
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/core/model/DroneModel$3;

    invoke-direct {v1, p0, p3}, Lcom/parrot/freeflight/core/model/DroneModel$3;-><init>(Lcom/parrot/freeflight/core/model/DroneModel;I)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1813
    :cond_0
    const/4 v0, 0x1

    .line 1815
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addAppCommandListener(Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAppCommandListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 1492
    return-void
.end method

.method public abstract cancelLanding()V
.end method

.method public close()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/Model;->close()V

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->removeUpdates(Lcom/parrot/freeflight/location/SmartLocationManager$Listener;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mBarometerListener:Lcom/parrot/freeflight/location/Barometer$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/Barometer;->removeListener(Lcom/parrot/freeflight/location/Barometer$Listener;)V

    .line 222
    :cond_1
    return-void
.end method

.method public abstract connectionProtocolEnded()Z
.end method

.method public abstract emergencyStop()V
.end method

.method protected filterAuthorizedChannels()V
    .locals 3

    .prologue
    .line 1351
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAuthChannelFinalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1352
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAuthorizedWifiChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 1353
    .local v0, "channel":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    iget-boolean v2, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->indoorAllowed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->outdoorAllowed:Z

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->isInOutdoorMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->outdoorAllowed:Z

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->isInOutdoorMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->indoorAllowed:Z

    if-eqz v2, :cond_0

    .line 1354
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAuthChannelFinalList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1357
    .end local v0    # "channel":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAuthChannelFinalList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1358
    return-void
.end method

.method public getAlertContainer()Lcom/parrot/freeflight/piloting/alert/AlertContainer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    return-object v0
.end method

.method public getAlertSoundState()I
    .locals 1

    .prologue
    .line 1536
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAlertSoundState:I

    return v0
.end method

.method public getAntiFlickeringMode()I
    .locals 1

    .prologue
    .line 1321
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAntiFlickeringMode:I

    return v0
.end method

.method public getAperture()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1249
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 1259
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1251
    :pswitch_0
    const-string v0, "2.2"

    goto :goto_0

    .line 1256
    :pswitch_1
    const-string v0, "2.3"

    goto :goto_0

    .line 1249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mBatteryLevel:I

    return v0
.end method

.method public getBehaviorMode()I
    .locals 1

    .prologue
    .line 1963
    const/4 v0, 0x0

    return v0
.end method

.method public getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    return-object v0
.end method

.method public getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method

.method public abstract getCpuId()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public getDefaultCameraPan()I
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mDefaultCameraPan:I

    return v0
.end method

.method public getDefaultCameraTilt()I
    .locals 1

    .prologue
    .line 883
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mDefaultCameraTilt:I

    return v0
.end method

.method protected abstract getDefaultVideoResolutions()I
.end method

.method public getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method public getDistanceRestrictionState()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mDistanceRestrictionState:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 871
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    return-object v0
.end method

.method public getExpositionState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mExpositionState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getFlightDistanceRestrictionStatus()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightDistanceRestrictionStatus:I

    return v0
.end method

.method public getFlightNumber()I
    .locals 1

    .prologue
    .line 991
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightsNumber:I

    return v0
.end method

.method public getFlightPlanComponents()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/FlightPlanComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanComponents:Ljava/util/Map;

    return-object v0
.end method

.method public getFlightPlanMavlinkPlayingRawState()I
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanMavlinkPlayingState:Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->getRawValue()I

    move-result v0

    return v0
.end method

.method public getFlightPlanMavlinkPlayingState()I
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanMavlinkPlayingState:Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;

    invoke-static {v0}, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->access$000(Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;)I

    move-result v0

    return v0
.end method

.method public getFlyingState()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlyingState:I

    return v0
.end method

.method public getFollowMeImprovementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1973
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFollowMeRequirementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1968
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFollowMeState()I
    .locals 1

    .prologue
    .line 1958
    const/4 v0, 0x0

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFrameRate:I

    return v0
.end method

.method public getGeofenceCenterPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGeofenceCenterPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method public getGpsFixStatus()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGpsFixStatus:I

    return v0
.end method

.method public getGpsHardwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 968
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGpsHardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsSatelliteCount()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGpsSatelliteCount:I

    return v0
.end method

.method public getGpsSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 960
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGpsSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 952
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHomePosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 748
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHomePosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method public getLastFlightDuration()I
    .locals 1

    .prologue
    .line 997
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastFlightDuration:I

    return v0
.end method

.method public getLastGaz()F
    .locals 1

    .prologue
    .line 1560
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastGaz:F

    return v0
.end method

.method public getLastMotorError()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastMotorError:I

    return v0
.end method

.method public getLastPitch()F
    .locals 1

    .prologue
    .line 1542
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastPitch:F

    return v0
.end method

.method public getLastRecordingDuration()J
    .locals 2

    .prologue
    .line 828
    iget-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastRecordingDuration:J

    return-wide v0
.end method

.method public getLastRoll()F
    .locals 1

    .prologue
    .line 1548
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastRoll:F

    return v0
.end method

.method public getLastYaw()F
    .locals 1

    .prologue
    .line 1554
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastYaw:F

    return v0
.end method

.method public getMassStorageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMassStorageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMassStoragePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMassStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMaxAltitudePreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public abstract getMaxDistancePreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getMaxDistanceState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMaxDistanceState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public abstract getMaxPitchPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getMaxPitchState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 786
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMaxPitchState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMediaCount()I
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoCount:I

    iget v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMediaCountTakenDuringRun()I
    .locals 1

    .prologue
    .line 1446
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaCountTakenDuringRun:I

    return v0
.end method

.method public getMediaRecordingState()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaRecordingState:I

    return v0
.end method

.method public getMemorySizeInMByte()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMemorySizeInMByte:I

    return v0
.end method

.method public getMotorErrorStringId(I)I
    .locals 1
    .param p1, "motorError"    # I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1061
    packed-switch p1, :pswitch_data_0

    .line 1106
    const v0, 0x7f11075b

    .line 1109
    .local v0, "errorMessage":I
    :goto_0
    return v0

    .line 1063
    .end local v0    # "errorMessage":I
    :pswitch_0
    const v0, 0x7f1100c5

    .line 1064
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1066
    .end local v0    # "errorMessage":I
    :pswitch_1
    const v0, 0x7f1100d9

    .line 1067
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1069
    .end local v0    # "errorMessage":I
    :pswitch_2
    const v0, 0x7f1100e4

    .line 1070
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1072
    .end local v0    # "errorMessage":I
    :pswitch_3
    const v0, 0x7f1101f1

    .line 1073
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1075
    .end local v0    # "errorMessage":I
    :pswitch_4
    const v0, 0x7f1101f0

    .line 1076
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1078
    .end local v0    # "errorMessage":I
    :pswitch_5
    const v0, 0x7f1107f3

    .line 1079
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1081
    .end local v0    # "errorMessage":I
    :pswitch_6
    const v0, 0x7f11043a

    .line 1082
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1084
    .end local v0    # "errorMessage":I
    :pswitch_7
    const v0, 0x7f110355

    .line 1085
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1087
    .end local v0    # "errorMessage":I
    :pswitch_8
    const v0, 0x7f11043b

    .line 1088
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1090
    .end local v0    # "errorMessage":I
    :pswitch_9
    const v0, 0x7f110603

    .line 1091
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1093
    .end local v0    # "errorMessage":I
    :pswitch_a
    const v0, 0x7f1101de

    .line 1094
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1096
    .end local v0    # "errorMessage":I
    :pswitch_b
    const v0, 0x7f110433

    .line 1097
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1099
    .end local v0    # "errorMessage":I
    :pswitch_c
    const v0, 0x7f110708

    .line 1100
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1102
    .end local v0    # "errorMessage":I
    :pswitch_d
    const v0, 0x7f11034b

    .line 1103
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 1061
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_c
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getMotorSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMotorSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected getMotorState(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;)I
    .locals 2
    .param p1, "errorStateEnum"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;

    .prologue
    .line 1589
    sget-object v0, Lcom/parrot/freeflight/core/model/DroneModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1619
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1591
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1593
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1595
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1597
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1599
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1601
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1603
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 1605
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 1607
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 1609
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 1611
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 1613
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 1615
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 1617
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 1589
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mProductName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v0

    .line 344
    :goto_0
    return-object v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mProductName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhotoCaptureState()I
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoRecordingState:I

    return v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoCount:I

    return v0
.end method

.method public getPictureFormat()I
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPictureFormat:I

    return v0
.end method

.method public getPilotingMode()I
    .locals 1

    .prologue
    .line 1953
    const/4 v0, 0x0

    return v0
.end method

.method public getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method public getProductSerial()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHighProductSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLowProductSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRcControllerModel()Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2076
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadMediaCount()I
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadReadMediaCount()I

    move-result v0

    return v0
.end method

.method public getRecordingMode()I
    .locals 1

    .prologue
    .line 1205
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingMode:I

    return v0
.end method

.method public getRecordingStartTime()J
    .locals 2

    .prologue
    .line 822
    iget-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingStartTime:J

    return-wide v0
.end method

.method public getRelativeAltitude()D
    .locals 2

    .prologue
    .line 733
    iget-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRelativeAltitude:D

    return-wide v0
.end method

.method public getReturnHomeDelay()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeDelay:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public abstract getReturnHomeDelayPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getReturnHomeStatus()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeStatus:I

    return v0
.end method

.method public getReturnHomeType()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeType:I

    return v0
.end method

.method public getReturnHomeTypeDrone()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeTypeDrone:I

    return v0
.end method

.method public getRssi()S
    .locals 1

    .prologue
    .line 541
    iget-short v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRssi:S

    return v0
.end method

.method public getRunId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRunId:Ljava/lang/String;

    return-object v0
.end method

.method public getSaturationState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSaturationState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 944
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 792
    iget-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSpeed:D

    return-wide v0
.end method

.method public getSpeedX()F
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSpeedX:F

    return v0
.end method

.method public getSpeedY()F
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSpeedY:F

    return v0
.end method

.method public getSpeedZ()F
    .locals 1

    .prologue
    .line 810
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSpeedZ:F

    return v0
.end method

.method public getTargetTrajectory()Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1981
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeLapseInterval()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTimeLapseInterval:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getTotalFlightsDuration()I
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTotalFlightsDuration:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mType:I

    return v0
.end method

.method public getUsedMemorySizeInMByte()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mUsedMemorySizeInMByte:I

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoCount:I

    return v0
.end method

.method public getVideoResolutions()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoResolutions:I

    return v0
.end method

.method public getVideoResolutionsWithDefault()I
    .locals 2

    .prologue
    .line 1282
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoResolutions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1283
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getDefaultVideoResolutions()I

    move-result v0

    .line 1285
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoResolutions:I

    goto :goto_0
.end method

.method public getVideoStreamMode()I
    .locals 1

    .prologue
    .line 1303
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoStreamMode:I

    return v0
.end method

.method public getWhiteBalanceState()I
    .locals 1

    .prologue
    .line 1187
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWhiteBalanceState:I

    return v0
.end method

.method public getWifiBandState()Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 901
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    return-object v0
.end method

.method public getWifiLocalisationState()Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 935
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    return-object v0
.end method

.method public getWifiNameState()Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 927
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWifiNameState:Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    return-object v0
.end method

.method public isAntiflickeringCmdSupported()Z
    .locals 1

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mIsAntiflickeringCmdSupported:Z

    return v0
.end method

.method public isAutoRecordEnabled()Z
    .locals 1

    .prologue
    .line 1333
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAutoRecordEnabled:Z

    return v0
.end method

.method public isFlatTrimAllowed()Z
    .locals 1

    .prologue
    .line 1152
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlatTrimAllowed:Z

    return v0
.end method

.method public isFlightPlanActive()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1421
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanMavlinkPlayingState:Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;

    invoke-static {v2}, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->access$000(Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;)I

    move-result v0

    .line 1422
    .local v0, "flightPlanPlayingState":I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFlightPlanLocked()Z
    .locals 1

    .prologue
    .line 1626
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanLocked:Z

    return v0
.end method

.method public isFlightPlanSupported()Z
    .locals 1

    .prologue
    .line 1432
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanSupported:Z

    return v0
.end method

.method public isFlying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 385
    iget v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlyingState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlyingState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlyingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isFollowMeSupported()Z
.end method

.method public isGpsFixed()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGpsFixed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationWithGpsFixed()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocationWithGpsFixed:Z

    return v0
.end method

.method public isMassStorageContentCmdSupported()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMassStorageContentCmdSupported:Z

    return v0
.end method

.method public isOnTheGround()Z
    .locals 2

    .prologue
    .line 389
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlyingState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlyingState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProductSerialFull()Z
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHighProductSerial:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLowProductSerial:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isRollStabilizationSupported()Z
.end method

.method public isTimeLapseEnabled()Z
    .locals 1

    .prologue
    .line 1339
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTimeLapseEnabled:Z

    return v0
.end method

.method public isVideoRecording()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoRecording:Z

    return v0
.end method

.method public abstract land()V
.end method

.method public loadFromStore()V
    .locals 6

    .prologue
    .line 226
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/Model;->loadFromStore()V

    .line 227
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/LocalStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 228
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mStoreEmpty:Z

    .line 229
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mProductName:Ljava/lang/String;

    .line 230
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSoftwareVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSoftwareVersion:Ljava/lang/String;

    .line 231
    const-string v1, "gps_software_verion"

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGpsSoftwareVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGpsSoftwareVersion:Ljava/lang/String;

    .line 232
    const-string v1, "gps_hardware_version"

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGpsHardwareVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mGpsHardwareVersion:Ljava/lang/String;

    .line 233
    const-string v1, "high_product_serial"

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHighProductSerial:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHighProductSerial:Ljava/lang/String;

    .line 234
    const-string v1, "low_product_serial"

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLowProductSerial:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLowProductSerial:Ljava/lang/String;

    .line 235
    const-string v1, "battery_level"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mBatteryLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mBatteryLevel:I

    .line 237
    const-string/jumbo v1, "return_home_type"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeType:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeType:I

    .line 239
    const-string/jumbo v1, "return_home_type_drone"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeTypeDrone:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeTypeDrone:I

    .line 240
    const-string v1, "flight_number"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightsNumber:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightsNumber:I

    .line 241
    const-string v1, "last_flight_duration"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastFlightDuration:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastFlightDuration:I

    .line 242
    const-string v1, "all_flights_duration"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTotalFlightsDuration:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTotalFlightsDuration:I

    .line 244
    const-string v1, "last_motor_error"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastMotorError:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastMotorError:I

    .line 245
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v2, "return_home_delay"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mReturnHomeDelay:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 246
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "max_altitude_state"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 247
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "max_distance_state"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMaxDistanceState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 248
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "max_pitch_state"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMaxPitchState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 250
    const-string v1, "distance_restriction_status"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightDistanceRestrictionStatus:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightDistanceRestrictionStatus:I

    .line 251
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "distance_restriction_state"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mDistanceRestrictionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadToggleState(Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 252
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "calibration_state"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadCalibrationState(Ljava/lang/String;Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;)V

    .line 253
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "last_known_location"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadLastKnowLocation(Ljava/lang/String;Lcom/parrot/freeflight/core/model/DroneModel$Position;)V

    .line 254
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "exposition_state"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mExpositionState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 255
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v2, "saturation_state"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSaturationState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 257
    const-string/jumbo v1, "white_balance_state"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWhiteBalanceState:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mWhiteBalanceState:I

    .line 259
    const-string/jumbo v1, "video_resolutions"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoResolutions:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoResolutions:I

    .line 261
    const-string/jumbo v1, "recording_mode"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingMode:I

    .line 263
    const-string v1, "frame_rate"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFrameRate:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFrameRate:I

    .line 265
    const-string/jumbo v1, "picture_format"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPictureFormat:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPictureFormat:I

    .line 267
    const-string v1, "anti_flickering_mode"

    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAntiFlickeringMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAntiFlickeringMode:I

    .line 269
    const-string v1, "auto_record_enabled"

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAutoRecordEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAutoRecordEnabled:Z

    .line 271
    const-string/jumbo v1, "time_lapse_enabled"

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTimeLapseEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTimeLapseEnabled:Z

    .line 272
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v2, "time_lapse_interval"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTimeLapseInterval:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 273
    const-string/jumbo v1, "recording_start_time"

    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingStartTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingStartTime:J

    .line 274
    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingStartTime:J

    .line 275
    return-void

    .line 228
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public notifyAppCommandListener(I)V
    .locals 3
    .param p1, "command"    # I

    .prologue
    .line 1499
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAppCommandListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;

    .line 1500
    .local v0, "listener":Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;
    invoke-interface {v0, p1}, Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;->onAppCommand(I)V

    goto :goto_0

    .line 1502
    .end local v0    # "listener":Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;
    :cond_0
    return-void
.end method

.method protected onPhotoEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;)V
    .locals 3
    .param p1, "event"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "error"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 1762
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_FAILED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    if-ne p1, v0, :cond_0

    .line 1763
    sget-object v0, Lcom/parrot/freeflight/core/model/DroneModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM:[I

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1777
    :cond_0
    :goto_0
    return-void

    .line 1765
    :pswitch_0
    const/16 v0, 0xf

    const v1, 0x7f11041e

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/core/model/DroneModel;->onNewTemporaryAlert(III)Z

    goto :goto_0

    .line 1770
    :pswitch_1
    const/16 v0, 0x10

    const v1, 0x7f11012e

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/core/model/DroneModel;->onNewTemporaryAlert(III)Z

    goto :goto_0

    .line 1773
    :pswitch_2
    const/4 v0, 0x0

    const v1, 0x104000e

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/core/model/DroneModel;->onNewTemporaryAlert(III)Z

    goto :goto_0

    .line 1763
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPhotoStateChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;)Z
    .locals 6
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "error"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 1731
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoRecordingState:I

    .line 1732
    .local v0, "previousState":I
    sget-object v3, Lcom/parrot/freeflight/core/model/DroneModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1753
    iput v5, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoRecordingState:I

    .line 1757
    :cond_0
    :goto_0
    iget v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoRecordingState:I

    if-eq v3, v0, :cond_1

    :goto_1
    return v1

    .line 1734
    :pswitch_0
    iput v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoRecordingState:I

    .line 1735
    if-ne v0, v5, :cond_0

    .line 1737
    invoke-static {p0}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementPhotoCount(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 1738
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->isOnTheGround()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1739
    invoke-static {p0}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementMediaCountTakenDuringRun(Lcom/parrot/freeflight/core/model/Model;)V

    goto :goto_0

    .line 1745
    :pswitch_1
    iput v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoRecordingState:I

    goto :goto_0

    .line 1749
    :pswitch_2
    iput v5, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoRecordingState:I

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1757
    goto :goto_1

    .line 1732
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onVideoEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;)V
    .locals 3
    .param p1, "event"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "error"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;

    .prologue
    const/4 v2, 0x1

    .line 1781
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_FAILED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;

    if-ne p1, v0, :cond_0

    .line 1782
    sget-object v0, Lcom/parrot/freeflight/core/model/DroneModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM:[I

    invoke-virtual {p2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1797
    :cond_0
    :goto_0
    return-void

    .line 1784
    :pswitch_0
    const/16 v0, 0xf

    const v1, 0x7f11041e

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/core/model/DroneModel;->onNewTemporaryAlert(III)Z

    goto :goto_0

    .line 1787
    :pswitch_1
    const/16 v0, 0x12

    const v1, 0x7f1100d8

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/core/model/DroneModel;->onNewTemporaryAlert(III)Z

    goto :goto_0

    .line 1790
    :pswitch_2
    const/16 v0, 0x14

    const v1, 0x7f110107

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/core/model/DroneModel;->onNewTemporaryAlert(III)Z

    goto :goto_0

    .line 1793
    :pswitch_3
    const/4 v0, 0x0

    const v1, 0x104000e

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/core/model/DroneModel;->onNewTemporaryAlert(III)Z

    goto :goto_0

    .line 1782
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onVideoStateChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;)Z
    .locals 12
    .param p1, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "error"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v8, -0x1

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1671
    iget v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaRecordingState:I

    .line 1672
    .local v0, "previousState":I
    sget-object v2, Lcom/parrot/freeflight/core/model/DroneModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 1707
    iput-wide v10, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingStartTime:J

    .line 1708
    iput v6, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaRecordingState:I

    .line 1711
    :cond_0
    :goto_0
    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaRecordingState:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTimeLapseEnabled:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoRecording:Z

    .line 1713
    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaRecordingState:I

    if-eq v2, v0, :cond_4

    move v1, v3

    .line 1714
    .local v1, "update":Z
    :goto_2
    if-eqz v1, :cond_1

    .line 1715
    iget v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaRecordingState:I

    if-eqz v2, :cond_5

    .line 1716
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addFpvAlert(I)Z

    .line 1721
    :cond_1
    :goto_3
    return v1

    .line 1674
    .end local v1    # "update":Z
    :pswitch_0
    iput v4, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaRecordingState:I

    .line 1675
    if-ne v0, v3, :cond_0

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mTimeLapseEnabled:Z

    if-nez v2, :cond_0

    .line 1676
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingStartTime:J

    .line 1682
    invoke-static {p0, v8}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementPhotoCount(Lcom/parrot/freeflight/core/model/DroneModel;I)V

    .line 1683
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->isOnTheGround()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1684
    invoke-static {p0, v8}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementMediaCountTakenDuringRun(Lcom/parrot/freeflight/core/model/Model;I)V

    goto :goto_0

    .line 1690
    :pswitch_1
    iput v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaRecordingState:I

    .line 1691
    iget-boolean v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoRecording:Z

    if-eqz v2, :cond_2

    .line 1692
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingStartTime:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastRecordingDuration:J

    .line 1693
    invoke-static {p0}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementVideoCount(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 1694
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->isOnTheGround()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1695
    invoke-static {p0}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementMediaCountTakenDuringRun(Lcom/parrot/freeflight/core/model/Model;)V

    .line 1698
    :cond_2
    iput-wide v10, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingStartTime:J

    goto :goto_0

    .line 1702
    :pswitch_2
    iput-wide v10, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingStartTime:J

    .line 1703
    iput v6, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaRecordingState:I

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1711
    goto :goto_1

    :cond_4
    move v1, v4

    .line 1713
    goto :goto_2

    .line 1718
    .restart local v1    # "update":Z
    :cond_5
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeFpvAlert(I)Z

    goto :goto_3

    .line 1672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract panCameraAt(F)V
.end method

.method public abstract pauseMavlink()V
.end method

.method public abstract pitchAt(F)V
.end method

.method public pitchAtWithCommandsActivation(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 1564
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/model/DroneModel;->pitchAt(F)V

    .line 1565
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->checkCommandsActivation()V

    .line 1566
    return-void
.end method

.method public abstract playMavlink(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract reboot()V
.end method

.method public final removeAppCommandListener(Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/DroneModel$AppCommandListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mAppCommandListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1496
    return-void
.end method

.method public abstract requestCommandsActivationChanged(Z)V
.end method

.method public abstract requestFollowMeReframing(II)V
.end method

.method public abstract resetCamera()V
.end method

.method public resetComponentsState()V
    .locals 3

    .prologue
    .line 1466
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanComponents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    .line 1467
    .local v0, "component":Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->setState(Z)V

    goto :goto_0

    .line 1469
    .end local v0    # "component":Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    :cond_0
    return-void
.end method

.method public resetRunMediasInfo()V
    .locals 1

    .prologue
    .line 1454
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaCountTakenDuringRun:I

    .line 1455
    return-void
.end method

.method public abstract restartNetworkAuthorizedCountryScan()V
.end method

.method public abstract restartNetworkScan()V
.end method

.method public abstract rollAt(F)V
.end method

.method public rollAtWithCommandsActivation(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 1569
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/model/DroneModel;->rollAt(F)V

    .line 1570
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->checkCommandsActivation()V

    .line 1571
    return-void
.end method

.method public saveToStore()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/Model;->saveToStore()V

    .line 280
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mStoreEmpty:Z

    .line 281
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/LocalStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 282
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "empty"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 284
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    const-string/jumbo v2, "version"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    const-string v2, "gps_software_verion"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getGpsSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v2, "gps_hardware_version"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getGpsHardwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v2, "high_product_serial"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHighProductSerial:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    const-string v2, "low_product_serial"

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLowProductSerial:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v2, "battery_level"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getBatteryLevel()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 291
    const-string/jumbo v2, "return_home_type"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getReturnHomeType()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 292
    const-string/jumbo v2, "return_home_type_drone"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getReturnHomeTypeDrone()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 293
    const-string v2, "flight_number"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlightNumber()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 294
    const-string v2, "last_flight_duration"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getLastFlightDuration()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 295
    const-string v2, "all_flights_duration"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getTotalFlightsDuration()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 296
    const-string v2, "last_motor_error"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getLastMotorError()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 297
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v3, "return_home_delay"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getReturnHomeDelay()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 298
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_altitude_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 299
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_distance_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxDistanceState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 300
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_pitch_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxPitchState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 301
    const-string v2, "distance_restriction_status"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlightDistanceRestrictionStatus()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 302
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "distance_restriction_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getDistanceRestrictionState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveToggleState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 303
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "calibration_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveCalibrationState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;)V

    .line 304
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "last_known_location"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveLastKnownLocation(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/core/model/DroneModel$Position;)V

    .line 306
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "exposition_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getExpositionState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 307
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v3, "saturation_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getSaturationState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 308
    const-string/jumbo v2, "white_balance_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getWhiteBalanceState()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 309
    const-string/jumbo v2, "video_resolutions"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getVideoResolutions()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 310
    const-string/jumbo v2, "recording_mode"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getRecordingMode()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 311
    const-string v2, "frame_rate"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getFrameRate()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 312
    const-string/jumbo v2, "picture_format"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getPictureFormat()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 313
    const-string v2, "anti_flickering_mode"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getAntiFlickeringMode()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 314
    const-string v2, "auto_record_enabled"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->isAutoRecordEnabled()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    const-string/jumbo v2, "time_lapse_enabled"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->isTimeLapseEnabled()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 316
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v3, "time_lapse_interval"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getTimeLapseInterval()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 317
    const-string/jumbo v2, "recording_start_time"

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->getRecordingStartTime()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    return-void
.end method

.method public abstract setAntiFlickeringMode(I)V
.end method

.method public abstract setAutoRecord(Z)V
.end method

.method public abstract setFrameRate(I)V
.end method

.method public abstract setImageExposition(F)V
.end method

.method public abstract setImageSaturation(F)V
.end method

.method public abstract setMaxAltitude(D)V
.end method

.method public abstract setMaxDistance(D)V
.end method

.method public abstract setMaxPitch(D)V
.end method

.method public setMediaCountTakenDuringRun(I)V
    .locals 0
    .param p1, "mediaCountTakenDuringRun"    # I

    .prologue
    .line 1450
    iput p1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMediaCountTakenDuringRun:I

    .line 1451
    return-void
.end method

.method public abstract setName(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public setOnSpeedBridleListener(Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;)V
    .locals 0
    .param p1, "speedBridleListener"    # Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1508
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mSpeedBridleListener:Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    .line 1509
    return-void
.end method

.method public abstract setOutdoorMode(Z)V
.end method

.method public setPhotoCount(I)V
    .locals 0
    .param p1, "photoCount"    # I

    .prologue
    .line 511
    iput p1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoCount:I

    .line 512
    return-void
.end method

.method public abstract setPictureFormat(I)V
.end method

.method public setReadMediaCount(II)V
    .locals 2
    .param p1, "photoCount"    # I
    .param p2, "videoCount"    # I

    .prologue
    .line 527
    add-int v0, p1, p2

    if-ltz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveReadMediaCount(I)V

    .line 529
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mMassStorageContentCmdSupported:Z

    if-nez v0, :cond_0

    .line 530
    iput p1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mPhotoCount:I

    .line 531
    iput p2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoCount:I

    .line 534
    :cond_0
    return-void
.end method

.method public abstract setRecordingMode(I)V
.end method

.method public abstract setReturnHomeDelay(S)V
.end method

.method public abstract setReturnHomeType(I)V
.end method

.method public abstract setTimeLapse(Z)V
.end method

.method public abstract setTimeLapseInterval(F)V
.end method

.method public setVideoCount(I)V
    .locals 0
    .param p1, "videoCount"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoCount:I

    .line 520
    return-void
.end method

.method public abstract setVideoResolutions(I)V
.end method

.method public abstract setVideoStreamMode(I)V
.end method

.method public abstract setWhiteBalanceState(I)V
.end method

.method public abstract setWifiBandType(I)V
.end method

.method public abstract setWifiChannel(II)V
.end method

.method public abstract setWifiCountry(Lcom/parrot/freeflight/piloting/model/WifiCountry;)V
    .param p1    # Lcom/parrot/freeflight/piloting/model/WifiCountry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setWifiSecurity(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract shouldBlockBeyondMaxDistance(Z)V
.end method

.method public abstract startAlertSound()V
.end method

.method public abstract startMagnetoCalibration()V
.end method

.method public abstract startMediaRecording()V
.end method

.method public abstract startReturnHome()V
.end method

.method public abstract startVideoStreaming()Z
.end method

.method public abstract stopAlertSound()V
.end method

.method public abstract stopMagnetoCalibration()V
.end method

.method public abstract stopMavlink()V
.end method

.method public abstract stopMediaRecording()V
.end method

.method public abstract stopReturnHome()V
.end method

.method public abstract stopVideoStreaming()V
.end method

.method protected suspendRecordingDuration()V
    .locals 4

    .prologue
    .line 1725
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mVideoRecording:Z

    if-eqz v0, :cond_0

    .line 1726
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLastRecordingDuration:J

    .line 1728
    :cond_0
    return-void
.end method

.method public abstract takeOff()V
.end method

.method public abstract takePicture()V
.end method

.method public abstract throttleAt(F)V
.end method

.method public throttleAtWithCommandsActivation(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 1579
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/model/DroneModel;->throttleAt(F)V

    .line 1580
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->checkCommandsActivation()V

    .line 1581
    return-void
.end method

.method public abstract tiltCameraAt(F)V
.end method

.method protected updateFlightPlanLockState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "flightPlanStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1630
    if-eqz p1, :cond_1

    .line 1631
    const-string v3, "DeviceControllerFlightPlanStateLockStateChangedNotificationLockStateKey"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 1632
    .local v0, "locked":Z
    :goto_0
    iget-boolean v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanLocked:Z

    if-eq v0, v3, :cond_1

    .line 1633
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mFlightPlanLocked:Z

    .line 1637
    .end local v0    # "locked":Z
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 1631
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1637
    goto :goto_1
.end method

.method protected updateProductSerialHigh(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "productSerialHighBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1641
    const/4 v1, 0x0

    .line 1642
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1643
    const-string v2, "DeviceControllerSettingsStateProductSerialHighChangedNotificationHighKey"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1644
    .local v0, "newSerial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHighProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1645
    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHighProductSerial:Ljava/lang/String;

    .line 1646
    const/4 v1, 0x1

    .line 1647
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLowProductSerial:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHighProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLowProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/util/dataCollect/DataCollection;->registerSerial(Ljava/lang/String;)Z

    .line 1652
    .end local v0    # "newSerial":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method protected updateProductSerialLow(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "productSerialLowBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1656
    const/4 v1, 0x0

    .line 1657
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1658
    const-string v2, "DeviceControllerSettingsStateProductSerialLowChangedNotificationLowKey"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1659
    .local v0, "newSerial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLowProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1660
    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLowProductSerial:Ljava/lang/String;

    .line 1661
    const/4 v1, 0x1

    .line 1662
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHighProductSerial:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mHighProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/model/DroneModel;->mLowProductSerial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/util/dataCollect/DataCollection;->registerSerial(Ljava/lang/String;)Z

    .line 1667
    .end local v0    # "newSerial":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public abstract userChangedUserBaroData(FJ)V
.end method

.method public abstract userChangedUserGPSData()V
.end method

.method public abstract validateFlatTrim()V
.end method

.method public abstract yawTo(F)V
.end method

.method public yawToWithCommandsActivation(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 1574
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/model/DroneModel;->yawTo(F)V

    .line 1575
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->checkCommandsActivation()V

    .line 1576
    return-void
.end method
