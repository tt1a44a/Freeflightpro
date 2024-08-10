.class public Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
.super Lcom/parrot/freeflight/core/model/DroneModel;
.source "FixedWingModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$PitotCalibrationState;,
        Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$LandingMode;,
        Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$CirclingDirection;,
        Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$PitchMode;
    }
.end annotation


# static fields
.field public static final CLOCKWISE_CIRCLING:I = 0x0

.field public static final COUNTER_CLOCKWISE_CIRCLING:I = 0x1

.field private static final DEBUG_SDK:Z = true

.field private static final KEY_CIRCLING_ALTITUDE_STATE:Ljava/lang/String; = "circling_altitude_state"

.field private static final KEY_CIRCLING_DIRECTION_STATE:Ljava/lang/String; = "circling_direction_state"

.field private static final KEY_CIRCLING_RADIUS_AVAILABLE:Ljava/lang/String; = "circling_radius_state_available"

.field private static final KEY_CIRCLING_RADIUS_STATE:Ljava/lang/String; = "circling_radius_state"

.field private static final KEY_CPU_ID:Ljava/lang/String; = "cpu_id"

.field private static final KEY_FLIGHTPLAN_RETURN_HOME_STATE:Ljava/lang/String; = "flighplan_return_home_state"

.field private static final KEY_LANDING_STATE:Ljava/lang/String; = "landing_state"

.field private static final KEY_MIN_ALTITUDE_STATE:Ljava/lang/String; = "min_altitude_state"

.field private static final KEY_MOTOR_STATE:Ljava/lang/String; = "motor_state"

.field private static final KEY_PITCH_MODE_STATE:Ljava/lang/String; = "pitch_mode_state"

.field public static final LANDING_MODE_LINEAR:I = 0x0

.field public static final LANDING_MODE_SPIRAL:I = 0x1

.field public static final PITCH_MODE_INVERTED:I = 0x1

.field public static final PITCH_MODE_NORMAL:I = 0x0

.field public static final PITOT_CALIBRATION_DONE:I = 0x0

.field public static final PITOT_CALIBRATION_FAILED:I = 0x4

.field public static final PITOT_CALIBRATION_IN_PROGRESS:I = 0x2

.field public static final PITOT_CALIBRATION_READY:I = 0x1

.field public static final PITOT_CALIBRATION_REQUIRED:I = 0x3

.field public static final PITOT_CALIBRATION_UNKNOWN_STATE:I = -0x1

.field private static final SDK_TAG:Ljava/lang/String; = "SDKFixedWingModel"

.field public static final UNKNOWN_CIRCLING_DIRECTION:I = -0x1

.field public static final UNKNOWN_LANDING_MODE:I = -0x1

.field public static final UNKNOWN_PITCH_MODE:I = -0x1


# instance fields
.field private final gazLock:Ljava/lang/Object;

.field private final mCirclingAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field private final mCirclingDirectionState:Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

.field private final mCirclingRadiusState:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field private final mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

.field private mCpuId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasBeenLoadedFromStore:Z

.field private mIsCirclingRadiusCmdSupported:Z

.field private mLandingState:I

.field private final mMediaRecordEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mMinAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field private mMotorsState:I

.field private final mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mOfflineEngine:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

.field private final mPitchModeState:Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

.field private final mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSpeedBridleBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateInternal:Z

.field private mWantedCameraTilt:F

.field private final pitchLock:Ljava/lang/Object;

.field private final rollLock:Ljava/lang/Object;

.field private final yawLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)V
    .locals 3
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
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 126
    invoke-direct/range {p0 .. p5}, Lcom/parrot/freeflight/core/model/DroneModel;-><init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)V

    .line 109
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLandingState:I

    .line 222
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mIsCirclingRadiusCmdSupported:Z

    .line 237
    sget-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->PITCH_MODE_STATE:Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->copyOf(Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;)Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPitchModeState:Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    .line 253
    sget-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->CIRCLING_DIRECTION_STATE:Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->copyOf(Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;)Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingDirectionState:Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    .line 260
    sget-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->CIRCLING_RADIUS_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingRadiusState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 267
    sget-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->CIRCLING_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 274
    sget-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->MIN_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMinAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 281
    sget-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->FLIGHTPLAN_RETURN_HOME_STATE:Lcom/parrot/freeflight/util/ToggleState;

    .line 282
    invoke-static {v0}, Lcom/parrot/freeflight/util/ToggleState;->copyOf(Lcom/parrot/freeflight/util/ToggleState;)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    .line 289
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorsState:I

    .line 317
    new-instance v0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    .line 473
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->rollLock:Ljava/lang/Object;

    .line 474
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->yawLock:Ljava/lang/Object;

    .line 475
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->pitchLock:Ljava/lang/Object;

    .line 476
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->gazLock:Ljava/lang/Object;

    .line 1125
    new-instance v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    .line 1185
    new-instance v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$2;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1197
    new-instance v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$3;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeedBridleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1206
    new-instance v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$4;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMediaRecordEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRecordingMode:I

    .line 130
    new-instance v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mOfflineEngine:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    .line 131
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->loadFromStore()V

    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 133
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mOfflineEngine:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->update()V

    return-void
.end method

.method static synthetic access$1202(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mStoreEmpty:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->sendControllerGpsPosition()V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->onNotificationDictionaryChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeedBridleListener:Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeedBridleListener:Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePhotoRecordEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateVideoRecordEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateConnectionState()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mStoreEmpty:Z

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mUpdateInternal:Z

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    .param p1, "x1"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    return-object p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/piloting/alert/AlertContainer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/piloting/alert/AlertContainer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    return-object v0
.end method

.method private onNotificationDictionaryChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "dictionary"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 1319
    const-string v1, "ARDrone3DeviceControllerPilotingStateFlyingStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlyingState(Landroid/os/Bundle;)Z

    move-result v0

    .line 1320
    .local v0, "updated":Z
    const-string v1, "DeviceControllerSettingsStateProductNameChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateProductName(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1321
    const-string v1, "ARDrone3DeviceControllerPilotingStateNavigateHomeStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateReturnHomeStatus(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1322
    const-string v1, "ARDrone3DeviceControllerGPSStateHomeTypeChosenChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateReturnHomeTypeDroneState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1323
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mUpdateInternal:Z

    if-eqz v1, :cond_0

    .line 1324
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeTypeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateReturnHomeTypeStatus(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1325
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateReturnHomeDelayChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateReturnHomeDelay(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1327
    :cond_0
    const-string v1, "DeviceControllerCommonStateBatteryStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateBatteryLevel(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1328
    const-string v1, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMemoryInfo(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1329
    const-string v1, "DeviceControllerCommonStateMassStorageStateListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMassStorageState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1330
    const-string v1, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMassStorageStateInfo(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1331
    const-string v1, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMassStorageContent(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1332
    const-string v1, "DeviceControllerCommonStateWifiSignalChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateRssiLevel(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1333
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateGPSFixStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateGpsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1334
    const-string v1, "ARDrone3DeviceControllerGPSStateNumberOfSatelliteChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateGpsSatelliteCount(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1335
    const-string v1, "ARDrone3DeviceControllerPilotingStateAltitudeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAltitude(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1336
    const-string v1, "ARDrone3DeviceControllerPilotingStatePositionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePositionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1337
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mUpdateInternal:Z

    if-eqz v1, :cond_1

    .line 1338
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMaxAltitudeState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1339
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMinAltitudeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMinAltitudeState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1340
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateNoFlyOverMaxDistanceChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateDistanceRestrictionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1341
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxDistanceChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMaxDistanceState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1342
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMaxPitchState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1343
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStatePitchModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePitchModeState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1344
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingRadiusChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCirclingRadiusState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1345
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingAltitudeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCirclingAltitudeState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1346
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingDirectionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCirclingDirectionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1348
    :cond_1
    const-string v1, "DeviceControllerFlightPlanSettingsStateReturnHomeOnDisconnectChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlightPlanReturnHomeState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1349
    const-string v1, "ARDrone3DeviceControllerPilotingStateSpeedChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateSpeed(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1350
    const-string v1, "ARDrone3DeviceControllerPilotingStateAttitudeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAttitude(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1351
    const-string v1, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedV2Notification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateVideoRecordState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1352
    const-string v1, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePhotoRecordState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1353
    const-string v1, "ARDrone3DeviceControllerCameraStateDefaultCameraOrientationNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCameraDefaultOrientation(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1354
    const-string v1, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCameraSettingState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1355
    const-string v1, "ARDrone3DeviceControllerCameraStateOrientationNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCameraOrientation(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1356
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoStabilizationModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCameraStabilizationMode(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1357
    const-string v1, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiSettingsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1358
    const-string v1, "ARDrone3DeviceControllerNetworkSettingsStateWifiSecurityNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiSecurityState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1359
    const-string v1, "DeviceControllerSettingsStateCountryChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiCountryState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1360
    const-string v1, "DeviceControllerSettingsStateAutoCountryChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiAutoCountryState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1361
    const-string v1, "DeviceControllerWifiSettingsStateOutdoorSettingsChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiOutdoorState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1362
    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAuthorizedChannelsListState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1363
    const-string v1, "ARDrone3DeviceControllerNetworkStateAllWifiAuthChannelChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAllAuthorizedChannelsListState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1364
    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiScanListState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1365
    const-string v1, "ARDrone3DeviceControllerNetworkStateAllWifiScanChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAllWifiScanListState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1366
    const-string v1, "DeviceControllerSettingsStateProductVersionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateProductVersions(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1367
    const-string v1, "ARDrone3DeviceControllerSettingsStateProductGPSVersionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateGpsVersions(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1368
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationRequiredStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMagnetoCalibrationStatus(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1369
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationAxisToCalibrateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAxisToCalibrate(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1370
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationStartedChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMagnetoCalibrationProcedureState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1371
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCalibrationAxisState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1372
    const-string v1, "DeviceControllerCalibrationStatePitotCalibrationStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePitotCalibrationState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1373
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mUpdateInternal:Z

    if-eqz v1, :cond_2

    .line 1374
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateExpositionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateExpositionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1375
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateSaturationChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateSaturationState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1376
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateAutoWhiteBalanceChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWhiteBalanceState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1377
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoResolutionsChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateVideoResolutions(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1378
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoRecordingModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateRecordingMode(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1379
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoFramerateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFrameRate(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1380
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStatePictureFormatChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePictureFormat(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1381
    const-string v1, "ARDrone3DeviceControllerAntiflickeringStateModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAntiFlickeringMode(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1382
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoAutorecordChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAutoRecordState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1383
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateTimeLapseState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1385
    :cond_2
    const-string v1, "ARDrone3DeviceControllerMediaStreamingStateVideoStreamModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateVideoStreamMode(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1386
    const-string v1, "ARDrone3DeviceControllerPilotingStateFlatTrimChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlatTrimAllowed(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1387
    const-string v1, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePilotingAlertState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1388
    const-string v1, "DeviceControllerCommonStateSensorsStatesListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateSensorAlertState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1389
    const-string v1, "DeviceControllerMavlinkStateMavlinkFilePlayingStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlightPlanMavlinkPlayingState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1390
    const-string v1, "DeviceControllerFlightPlanStateComponentStateListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlightPlanComponents(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1391
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorErrorStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMotorsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1392
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorErrorLastErrorChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateLastMotorsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1393
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorFlightsStatusChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlightsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1394
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorSoftwareVersionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMotorsSoftwareVersion(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1395
    const-string v1, "ARDrone3DeviceControllerSettingsStateCPUIDNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCpuId(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1396
    const-string v1, "DeviceControllerSettingsStateProductSerialHighChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateProductSerialHigh(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1397
    const-string v1, "DeviceControllerSettingsStateProductSerialLowChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateProductSerialLow(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1398
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateHomePositionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1399
    const-string v1, "DeviceControllerRunStateRunIdChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateRunId(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1400
    const-string v1, "DeviceControllerFlightPlanStateLockStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlightPlanLockState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1401
    const-string v1, "ARDrone3DeviceControllerPilotingStateLandingStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateLandingState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1402
    const-string v1, "ARDrone3DeviceControllerSoundStateAlertSoundNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAlertSoundState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1403
    if-eqz v0, :cond_3

    .line 1404
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 1407
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->onNotificationDictionaryChanged(Landroid/os/Bundle;)V

    .line 1408
    return-void
.end method

.method private resetSaturation()V
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 1076
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->setImageSaturation(F)V

    .line 1078
    :cond_0
    return-void
.end method

.method private sendControllerGpsPosition()V
    .locals 12

    .prologue
    .line 397
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mControllerLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mControllerLocation:Landroid/location/Location;

    .line 398
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mControllerLocation:Landroid/location/Location;

    .line 400
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v8, v0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 399
    invoke-virtual/range {v1 .. v11}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->gpsSettingsSendControllerGPS(DDDDD)V

    .line 402
    :cond_0
    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 1231
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 1232
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 1233
    .local v0, "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v1, "DeviceControllerSettingsStateProductNameChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateProductName(Landroid/os/Bundle;)Z

    .line 1234
    const-string v1, "ARDrone3DeviceControllerPilotingStateFlyingStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlyingState(Landroid/os/Bundle;)Z

    .line 1235
    const-string v1, "ARDrone3DeviceControllerPilotingStateNavigateHomeStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateReturnHomeStatus(Landroid/os/Bundle;)Z

    .line 1236
    const-string v1, "ARDrone3DeviceControllerGPSStateHomeTypeChosenChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateReturnHomeTypeDroneState(Landroid/os/Bundle;)Z

    .line 1237
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeTypeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateReturnHomeTypeStatus(Landroid/os/Bundle;)Z

    .line 1238
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateReturnHomeDelayChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateReturnHomeDelay(Landroid/os/Bundle;)Z

    .line 1239
    const-string v1, "DeviceControllerCommonStateBatteryStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateBatteryLevel(Landroid/os/Bundle;)Z

    .line 1240
    const-string v1, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMemoryInfo(Landroid/os/Bundle;)Z

    .line 1241
    const-string v1, "DeviceControllerCommonStateMassStorageStateListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMassStorageState(Landroid/os/Bundle;)Z

    .line 1242
    const-string v1, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMassStorageStateInfo(Landroid/os/Bundle;)Z

    .line 1243
    const-string v1, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMassStorageContent(Landroid/os/Bundle;)Z

    .line 1244
    const-string v1, "DeviceControllerCommonStateWifiSignalChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateRssiLevel(Landroid/os/Bundle;)Z

    .line 1245
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateGPSFixStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateGpsState(Landroid/os/Bundle;)Z

    .line 1246
    const-string v1, "ARDrone3DeviceControllerGPSStateNumberOfSatelliteChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateGpsSatelliteCount(Landroid/os/Bundle;)Z

    .line 1247
    const-string v1, "ARDrone3DeviceControllerPilotingStateAltitudeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAltitude(Landroid/os/Bundle;)Z

    .line 1248
    const-string v1, "ARDrone3DeviceControllerPilotingStatePositionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePositionState(Landroid/os/Bundle;)Z

    .line 1249
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateGeofenceCenterChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateGpsLocationGeofenceCenter(Landroid/os/Bundle;)Z

    .line 1250
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMaxAltitudeState(Landroid/os/Bundle;)Z

    .line 1251
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMinAltitudeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMinAltitudeState(Landroid/os/Bundle;)Z

    .line 1252
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateNoFlyOverMaxDistanceChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateDistanceRestrictionState(Landroid/os/Bundle;)Z

    .line 1253
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxDistanceChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMaxDistanceState(Landroid/os/Bundle;)Z

    .line 1254
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMaxPitchState(Landroid/os/Bundle;)Z

    .line 1255
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStatePitchModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePitchModeState(Landroid/os/Bundle;)Z

    .line 1256
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingRadiusChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCirclingRadiusState(Landroid/os/Bundle;)Z

    .line 1257
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingAltitudeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCirclingAltitudeState(Landroid/os/Bundle;)Z

    .line 1258
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingDirectionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCirclingDirectionState(Landroid/os/Bundle;)Z

    .line 1259
    const-string v1, "DeviceControllerFlightPlanSettingsStateReturnHomeOnDisconnectChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlightPlanReturnHomeState(Landroid/os/Bundle;)Z

    .line 1260
    const-string v1, "ARDrone3DeviceControllerPilotingStateSpeedChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateSpeed(Landroid/os/Bundle;)Z

    .line 1261
    const-string v1, "ARDrone3DeviceControllerPilotingStateAttitudeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAttitude(Landroid/os/Bundle;)Z

    .line 1262
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateTimeLapseState(Landroid/os/Bundle;)Z

    .line 1263
    const-string v1, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedV2Notification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateVideoRecordState(Landroid/os/Bundle;)Z

    .line 1264
    const-string v1, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePhotoRecordState(Landroid/os/Bundle;)Z

    .line 1265
    const-string v1, "ARDrone3DeviceControllerCameraStateDefaultCameraOrientationNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCameraDefaultOrientation(Landroid/os/Bundle;)Z

    .line 1266
    const-string v1, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCameraSettingState(Landroid/os/Bundle;)Z

    .line 1267
    const-string v1, "ARDrone3DeviceControllerCameraStateOrientationNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCameraOrientation(Landroid/os/Bundle;)Z

    .line 1268
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoStabilizationModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCameraStabilizationMode(Landroid/os/Bundle;)Z

    .line 1269
    const-string v1, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiSettingsState(Landroid/os/Bundle;)Z

    .line 1270
    const-string v1, "ARDrone3DeviceControllerNetworkSettingsStateWifiSecurityNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiSecurityState(Landroid/os/Bundle;)Z

    .line 1271
    const-string v1, "DeviceControllerSettingsStateCountryChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiCountryState(Landroid/os/Bundle;)Z

    .line 1272
    const-string v1, "DeviceControllerSettingsStateAutoCountryChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiAutoCountryState(Landroid/os/Bundle;)Z

    .line 1273
    const-string v1, "DeviceControllerWifiSettingsStateOutdoorSettingsChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiOutdoorState(Landroid/os/Bundle;)Z

    .line 1274
    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAuthorizedChannelsListState(Landroid/os/Bundle;)Z

    .line 1275
    const-string v1, "ARDrone3DeviceControllerNetworkStateAllWifiAuthChannelChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAllAuthorizedChannelsListState(Landroid/os/Bundle;)Z

    .line 1276
    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiScanListState(Landroid/os/Bundle;)Z

    .line 1277
    const-string v1, "ARDrone3DeviceControllerNetworkStateAllWifiScanChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAllWifiScanListState(Landroid/os/Bundle;)Z

    .line 1278
    const-string v1, "DeviceControllerSettingsStateProductVersionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateProductVersions(Landroid/os/Bundle;)Z

    .line 1279
    const-string v1, "ARDrone3DeviceControllerSettingsStateProductGPSVersionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateGpsVersions(Landroid/os/Bundle;)Z

    .line 1280
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationRequiredStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMagnetoCalibrationStatus(Landroid/os/Bundle;)Z

    .line 1281
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationAxisToCalibrateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAxisToCalibrate(Landroid/os/Bundle;)Z

    .line 1282
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationStartedChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMagnetoCalibrationProcedureState(Landroid/os/Bundle;)Z

    .line 1283
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCalibrationAxisState(Landroid/os/Bundle;)Z

    .line 1284
    const-string v1, "DeviceControllerCalibrationStatePitotCalibrationStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePitotCalibrationState(Landroid/os/Bundle;)Z

    .line 1285
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateExpositionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateExpositionState(Landroid/os/Bundle;)Z

    .line 1286
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateSaturationChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateSaturationState(Landroid/os/Bundle;)Z

    .line 1287
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateAutoWhiteBalanceChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWhiteBalanceState(Landroid/os/Bundle;)Z

    .line 1288
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoRecordingModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateRecordingMode(Landroid/os/Bundle;)Z

    .line 1289
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoFramerateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFrameRate(Landroid/os/Bundle;)Z

    .line 1290
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStatePictureFormatChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePictureFormat(Landroid/os/Bundle;)Z

    .line 1291
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoResolutionsChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateVideoResolutions(Landroid/os/Bundle;)Z

    .line 1292
    const-string v1, "ARDrone3DeviceControllerMediaStreamingStateVideoStreamModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateVideoStreamMode(Landroid/os/Bundle;)Z

    .line 1293
    const-string v1, "ARDrone3DeviceControllerAntiflickeringStateModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAntiFlickeringMode(Landroid/os/Bundle;)Z

    .line 1294
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoAutorecordChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAutoRecordState(Landroid/os/Bundle;)Z

    .line 1295
    const-string v1, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updatePilotingAlertState(Landroid/os/Bundle;)Z

    .line 1296
    const-string v1, "DeviceControllerCommonStateSensorsStatesListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateSensorAlertState(Landroid/os/Bundle;)Z

    .line 1297
    const-string v1, "ARDrone3DeviceControllerPilotingStateFlatTrimChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlatTrimAllowed(Landroid/os/Bundle;)Z

    .line 1298
    const-string v1, "DeviceControllerMavlinkStateMavlinkFilePlayingStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlightPlanMavlinkPlayingState(Landroid/os/Bundle;)Z

    .line 1299
    const-string v1, "DeviceControllerFlightPlanStateComponentStateListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlightPlanComponents(Landroid/os/Bundle;)Z

    .line 1300
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorErrorStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMotorsState(Landroid/os/Bundle;)Z

    .line 1301
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorErrorLastErrorChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateLastMotorsState(Landroid/os/Bundle;)Z

    .line 1302
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorFlightsStatusChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlightsState(Landroid/os/Bundle;)Z

    .line 1303
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorSoftwareVersionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateMotorsSoftwareVersion(Landroid/os/Bundle;)Z

    .line 1304
    const-string v1, "ARDrone3DeviceControllerSettingsStateCPUIDNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateCpuId(Landroid/os/Bundle;)Z

    .line 1305
    const-string v1, "DeviceControllerSettingsStateProductSerialHighChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateProductSerialHigh(Landroid/os/Bundle;)Z

    .line 1306
    const-string v1, "DeviceControllerSettingsStateProductSerialLowChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateProductSerialLow(Landroid/os/Bundle;)Z

    .line 1307
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateHomePositionState(Landroid/os/Bundle;)Z

    .line 1308
    const-string v1, "DeviceControllerRunStateRunIdChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateRunId(Landroid/os/Bundle;)Z

    .line 1309
    const-string v1, "DeviceControllerFlightPlanStateLockStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateFlightPlanLockState(Landroid/os/Bundle;)Z

    .line 1310
    const-string v1, "ARDrone3DeviceControllerPilotingStateLandingStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateLandingState(Landroid/os/Bundle;)Z

    .line 1311
    const-string v1, "ARDrone3DeviceControllerSoundStateAlertSoundNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateAlertSoundState(Landroid/os/Bundle;)Z

    .line 1313
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->update(Lcom/parrot/controller/devicecontrollers/ARBundle;)V

    .line 1315
    .end local v0    # "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    :cond_0
    return-void
.end method

.method private updateAlertSoundState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2908
    if-eqz p1, :cond_0

    .line 2909
    const-string v2, "ARDrone3DeviceControllerSoundStateAlertSoundNotificationStateKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;->eARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;->getValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2911
    .local v1, "stateValue":I
    sget-object v2, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM:[I

    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2919
    const/4 v0, -0x1

    .line 2921
    .local v0, "state":I
    :goto_0
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertSoundState:I

    if-eq v2, v0, :cond_0

    .line 2922
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertSoundState:I

    .line 2923
    const/4 v2, 0x1

    .line 2926
    .end local v0    # "state":I
    .end local v1    # "stateValue":I
    :goto_1
    return v2

    .line 2913
    .restart local v1    # "stateValue":I
    :pswitch_0
    const/4 v0, 0x0

    .line 2914
    .restart local v0    # "state":I
    goto :goto_0

    .line 2916
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x1

    .line 2917
    .restart local v0    # "state":I
    goto :goto_0

    .line 2926
    .end local v0    # "state":I
    .end local v1    # "stateValue":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2911
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAllAuthorizedChannelsListState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "allAuthorizedChannelsBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2228
    const/4 v0, 0x0

    .line 2229
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2230
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->filterAuthorizedChannels()V

    .line 2231
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAuthChannelFinalList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateAuthorizedWifiBandList(Ljava/util/List;)Z

    move-result v0

    .line 2233
    :cond_0
    return v0
.end method

.method private updateAllWifiScanListState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "allWifiScanListBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2264
    const/4 v0, 0x0

    .line 2265
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2266
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiScanList(Ljava/util/List;)Z

    move-result v0

    .line 2267
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->setScanningState(Z)V

    .line 2269
    :cond_0
    return v0
.end method

.method private updateAltitude(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "altitudeBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1770
    const/4 v2, 0x0

    .line 1771
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1772
    const-string v3, "ARDrone3DeviceControllerPilotingStateAltitudeChangedNotificationAltitudeKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1773
    .local v0, "altitude":D
    iget-wide v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRelativeAltitude:D

    cmpl-double v3, v4, v0

    if-eqz v3, :cond_0

    .line 1774
    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRelativeAltitude:D

    .line 1775
    const/4 v2, 0x1

    .line 1778
    .end local v0    # "altitude":D
    :cond_0
    return v2
.end method

.method private updateAntiFlickeringMode(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "antiFlickeringModeBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2623
    const/4 v3, 0x0

    .line 2624
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 2625
    iget-boolean v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mIsAntiflickeringCmdSupported:Z

    if-nez v6, :cond_0

    .line 2626
    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mIsAntiflickeringCmdSupported:Z

    .line 2628
    :cond_0
    const-string v6, "ARDrone3DeviceControllerAntiflickeringStateModeChangedNotificationModeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2629
    .local v1, "antiFlickeringModeValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;

    move-result-object v0

    .line 2630
    .local v0, "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAntiFlickeringMode:I

    .line 2631
    .local v2, "previousMode":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2643
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAntiFlickeringMode:I

    .line 2646
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAntiFlickeringMode:I

    if-eq v2, v6, :cond_2

    move v3, v4

    .line 2648
    .end local v0    # "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    .end local v1    # "antiFlickeringModeValue":I
    .end local v2    # "previousMode":I
    :cond_1
    :goto_1
    return v3

    .line 2633
    .restart local v0    # "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    .restart local v1    # "antiFlickeringModeValue":I
    .restart local v2    # "previousMode":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAntiFlickeringMode:I

    goto :goto_0

    .line 2636
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAntiFlickeringMode:I

    goto :goto_0

    .line 2639
    :pswitch_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAntiFlickeringMode:I

    goto :goto_0

    :cond_2
    move v3, v5

    .line 2646
    goto :goto_1

    .line 2631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAttitude(Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "attitudeBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x0

    .line 1956
    const/4 v4, 0x0

    .line 1957
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 1958
    iget-boolean v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGpsFixed:Z

    if-eqz v5, :cond_0

    .line 1959
    const-string v5, "ARDrone3DeviceControllerPilotingStateAttitudeChangedNotificationYawKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    neg-double v8, v8

    double-to-float v5, v8

    float-to-double v6, v5

    .line 1960
    .local v6, "yaw":D
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v5, v6, v7}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateYaw(D)Z

    move-result v4

    .line 1962
    .end local v6    # "yaw":D
    :cond_0
    const-string v5, "ARDrone3DeviceControllerPilotingStateAttitudeChangedNotificationRollKey"

    invoke-virtual {p1, v5, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    float-to-double v2, v5

    .line 1963
    .local v2, "roll":D
    const-string v5, "ARDrone3DeviceControllerPilotingStateAttitudeChangedNotificationPitchKey"

    invoke-virtual {p1, v5, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    float-to-double v0, v5

    .line 1964
    .local v0, "pitch":D
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v5, v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateRoll(D)Z

    move-result v5

    or-int/2addr v4, v5

    .line 1965
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v5, v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updatePitch(D)Z

    move-result v5

    or-int/2addr v4, v5

    .line 1967
    .end local v0    # "pitch":D
    .end local v2    # "roll":D
    :cond_1
    return v4
.end method

.method private updateAuthorizedChannelsListState(Landroid/os/Bundle;)Z
    .locals 13
    .param p1, "authorizedChannelsBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2200
    if-eqz p1, :cond_3

    .line 2201
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAuthorizedWifiChannels:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 2202
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2203
    .local v5, "idString":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 2204
    .local v8, "networkData":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 2205
    const-string v12, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationBandKey"

    .line 2206
    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2207
    .local v2, "band":I
    const-string v12, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationChannelKey"

    .line 2208
    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    .line 2210
    .local v4, "channelByte":B
    and-int/lit16 v3, v4, 0xff

    .line 2211
    .local v3, "channel":I
    if-eqz v3, :cond_0

    .line 2212
    const-string v12, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationInOrOutKey"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v6

    .line 2213
    .local v6, "inOrOutInt":B
    shr-int/lit8 v12, v6, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    move v0, v9

    .line 2214
    .local v0, "allowedIn":Z
    :goto_1
    and-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_2

    move v1, v9

    .line 2216
    .local v1, "allowedOut":Z
    :goto_2
    new-instance v7, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-direct {v7, v2, v3}, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;-><init>(II)V

    .line 2217
    .local v7, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    iput-boolean v0, v7, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->indoorAllowed:Z

    .line 2218
    iput-boolean v1, v7, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->outdoorAllowed:Z

    .line 2219
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAuthorizedWifiChannels:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "allowedIn":Z
    .end local v1    # "allowedOut":Z
    .end local v7    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_1
    move v0, v10

    .line 2213
    goto :goto_1

    .restart local v0    # "allowedIn":Z
    :cond_2
    move v1, v10

    .line 2214
    goto :goto_2

    .line 2224
    .end local v0    # "allowedIn":Z
    .end local v2    # "band":I
    .end local v3    # "channel":I
    .end local v4    # "channelByte":B
    .end local v5    # "idString":Ljava/lang/String;
    .end local v6    # "inOrOutInt":B
    .end local v8    # "networkData":Landroid/os/Bundle;
    :cond_3
    return v10
.end method

.method private updateAutoRecordState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "autoRecordBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2652
    const/4 v1, 0x0

    .line 2653
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2654
    const-string v2, "ARDrone3DeviceControllerPictureSettingsStateVideoAutorecordChangedNotificationEnabledKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2656
    .local v0, "enabled":Z
    :goto_0
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAutoRecordEnabled:Z

    if-eq v2, v0, :cond_0

    .line 2657
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAutoRecordEnabled:Z

    .line 2658
    const/4 v1, 0x1

    .line 2661
    .end local v0    # "enabled":Z
    :cond_0
    return v1

    .line 2654
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAxisToCalibrate(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "axisToCalibrateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2323
    const/4 v3, 0x0

    .line 2324
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2325
    const-string v4, "DeviceControllerCalibrationStateMagnetoCalibrationAxisToCalibrateChangedNotificationAxisKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2326
    .local v1, "axisToCalibrate":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;

    move-result-object v2

    .line 2329
    .local v2, "axisToCalibrateEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2344
    const/4 v0, -0x1

    .line 2347
    .local v0, "axis":I
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->updateAxisToCalibrate(I)Z

    move-result v3

    .line 2349
    .end local v0    # "axis":I
    .end local v1    # "axisToCalibrate":I
    .end local v2    # "axisToCalibrateEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;
    :cond_0
    return v3

    .line 2331
    .restart local v1    # "axisToCalibrate":I
    .restart local v2    # "axisToCalibrateEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;
    :pswitch_0
    const/4 v0, 0x0

    .line 2332
    .restart local v0    # "axis":I
    goto :goto_0

    .line 2334
    .end local v0    # "axis":I
    :pswitch_1
    const/4 v0, 0x1

    .line 2335
    .restart local v0    # "axis":I
    goto :goto_0

    .line 2337
    .end local v0    # "axis":I
    :pswitch_2
    const/4 v0, 0x2

    .line 2338
    .restart local v0    # "axis":I
    goto :goto_0

    .line 2340
    .end local v0    # "axis":I
    :pswitch_3
    const/4 v0, 0x3

    .line 2341
    .restart local v0    # "axis":I
    goto :goto_0

    .line 2329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateBatteryLevel(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "batteryBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1633
    const/4 v1, 0x0

    .line 1634
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1635
    const-string v2, "DeviceControllerCommonStateBatteryStateChangedNotificationPercentKey"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1636
    .local v0, "batteryLevel":I
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mBatteryLevel:I

    if-eq v0, v2, :cond_0

    .line 1637
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mBatteryLevel:I

    .line 1638
    const/4 v1, 0x1

    .line 1641
    .end local v0    # "batteryLevel":I
    :cond_0
    return v1
.end method

.method private updateCalibrationAxisState(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "calibrationAxisStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2362
    const/4 v1, 0x0

    .line 2363
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2364
    const-string v7, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotificationCalibrationFailedKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    if-eqz v7, :cond_1

    move v0, v5

    .line 2365
    .local v0, "failedState":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2366
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->updateMagnetoCalibrationProcedureState(I)Z

    move-result v1

    .line 2374
    .end local v0    # "failedState":Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v6

    .line 2364
    goto :goto_0

    .line 2368
    .restart local v0    # "failedState":Z
    :cond_2
    const-string v7, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotificationXAxisCalibrationKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    if-eqz v7, :cond_3

    move v2, v5

    .line 2369
    .local v2, "xAxisState":Z
    :goto_2
    const-string v7, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotificationYAxisCalibrationKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    if-eqz v7, :cond_4

    move v3, v5

    .line 2370
    .local v3, "yAxisState":Z
    :goto_3
    const-string v7, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotificationZAxisCalibrationKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    if-eqz v7, :cond_5

    move v4, v5

    .line 2371
    .local v4, "zAxisState":Z
    :goto_4
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v5, v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->updateAxisCalibrated(ZZZ)Z

    move-result v1

    goto :goto_1

    .end local v2    # "xAxisState":Z
    .end local v3    # "yAxisState":Z
    .end local v4    # "zAxisState":Z
    :cond_3
    move v2, v6

    .line 2368
    goto :goto_2

    .restart local v2    # "xAxisState":Z
    :cond_4
    move v3, v6

    .line 2369
    goto :goto_3

    .restart local v3    # "yAxisState":Z
    :cond_5
    move v4, v6

    .line 2370
    goto :goto_4
.end method

.method private updateCameraDefaultOrientation(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "cameraDefaultOrientationBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2011
    const/4 v0, 0x0

    .line 2012
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2013
    const-string v1, "ARDrone3DeviceControllerCameraStateDefaultCameraOrientationNotificationPanKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDefaultCameraPan:I

    .line 2014
    const-string v1, "ARDrone3DeviceControllerCameraStateDefaultCameraOrientationNotificationTiltKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDefaultCameraTilt:I

    .line 2015
    const/4 v0, 0x1

    .line 2017
    :cond_0
    return v0
.end method

.method private updateCameraOrientation(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "cameraOrientationBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 2035
    const/4 v0, 0x0

    .line 2036
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2037
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "ARDrone3DeviceControllerCameraStateOrientationNotificationTiltKey"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setTilt(I)V

    .line 2038
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "ARDrone3DeviceControllerCameraStateOrientationNotificationPanKey"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setPan(I)V

    .line 2039
    const/4 v0, 0x1

    .line 2041
    :cond_0
    return v0
.end method

.method private updateCameraSettingState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "cameraSettingBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2021
    const/4 v0, 0x0

    .line 2022
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2023
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotificationFovKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setFov(F)V

    .line 2024
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotificationPanMinKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setPanMin(F)V

    .line 2025
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotificationPanMaxKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setPanMax(F)V

    .line 2026
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotificationTiltMinKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setTiltMin(F)V

    .line 2027
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotificationTiltMaxKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setTiltMax(F)V

    .line 2028
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->updateFocalLength()V

    .line 2029
    const/4 v0, 0x1

    .line 2031
    :cond_0
    return v0
.end method

.method private updateCameraStabilizationMode(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "cameraStabilizationBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2045
    const/4 v1, 0x0

    .line 2046
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2047
    const-string v4, "ARDrone3DeviceControllerPictureSettingsStateVideoStabilizationModeChangedNotificationModeKey"

    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;->eARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;

    .line 2048
    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;->getValue()I

    move-result v5

    .line 2047
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2049
    .local v3, "value":I
    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;

    move-result-object v2

    .line 2051
    .local v2, "stabilizationMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2065
    const/4 v0, -0x1

    .line 2068
    .local v0, "mode":I
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setStabilizationMode(I)V

    .line 2069
    const/4 v1, 0x1

    .line 2071
    .end local v0    # "mode":I
    .end local v2    # "stabilizationMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;
    .end local v3    # "value":I
    :cond_0
    return v1

    .line 2053
    .restart local v2    # "stabilizationMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;
    .restart local v3    # "value":I
    :pswitch_0
    const/4 v0, 0x0

    .line 2054
    .restart local v0    # "mode":I
    goto :goto_0

    .line 2056
    .end local v0    # "mode":I
    :pswitch_1
    const/4 v0, 0x1

    .line 2057
    .restart local v0    # "mode":I
    goto :goto_0

    .line 2059
    .end local v0    # "mode":I
    :pswitch_2
    const/4 v0, 0x2

    .line 2060
    .restart local v0    # "mode":I
    goto :goto_0

    .line 2062
    .end local v0    # "mode":I
    :pswitch_3
    const/4 v0, 0x3

    .line 2063
    .restart local v0    # "mode":I
    goto :goto_0

    .line 2051
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateCirclingAltitudeState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "circlingAltitudeBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1897
    const/4 v11, 0x0

    .line 1898
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1899
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingAltitudeChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v10

    .line 1900
    .local v10, "minValue":S
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingAltitudeChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v9

    .line 1901
    .local v9, "maxValue":S
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingAltitudeChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 1902
    .local v0, "currentValue":S
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    int-to-double v2, v0

    int-to-double v4, v9

    int-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 1904
    .end local v0    # "currentValue":S
    .end local v9    # "maxValue":S
    .end local v10    # "minValue":S
    :cond_0
    return v11
.end method

.method private updateCirclingDirectionState(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "circlingDirectionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1908
    const/4 v3, 0x0

    .line 1909
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1910
    const-string v4, "ARDrone3DeviceControllerPilotingSettingsStateCirclingDirectionChangedNotificationValueKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1911
    .local v1, "circlingDirectionValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGSSTATE_CIRCLINGDIRECTIONCHANGED_VALUE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGSSTATE_CIRCLINGDIRECTIONCHANGED_VALUE_ENUM;

    move-result-object v0

    .line 1913
    .local v0, "circlingDirection":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGSSTATE_CIRCLINGDIRECTIONCHANGED_VALUE_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSETTINGSSTATE_CIRCLINGDIRECTIONCHANGED_VALUE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGSSTATE_CIRCLINGDIRECTIONCHANGED_VALUE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1923
    const/4 v2, -0x1

    .line 1926
    .local v2, "direction":I
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingDirectionState:Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    invoke-virtual {v4, v2}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->update(I)Z

    move-result v3

    .line 1928
    .end local v0    # "circlingDirection":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGSSTATE_CIRCLINGDIRECTIONCHANGED_VALUE_ENUM;
    .end local v1    # "circlingDirectionValue":I
    .end local v2    # "direction":I
    :cond_0
    return v3

    .line 1915
    .restart local v0    # "circlingDirection":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGSSTATE_CIRCLINGDIRECTIONCHANGED_VALUE_ENUM;
    .restart local v1    # "circlingDirectionValue":I
    :pswitch_0
    const/4 v2, 0x0

    .line 1916
    .restart local v2    # "direction":I
    goto :goto_0

    .line 1919
    .end local v2    # "direction":I
    :pswitch_1
    const/4 v2, 0x1

    .line 1920
    .restart local v2    # "direction":I
    goto :goto_0

    .line 1913
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCirclingRadiusState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "circlingRadiusBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    .line 1883
    const/4 v11, 0x0

    .line 1884
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 1885
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mIsCirclingRadiusCmdSupported:Z

    if-nez v1, :cond_0

    .line 1886
    iput-boolean v8, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mIsCirclingRadiusCmdSupported:Z

    .line 1888
    :cond_0
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingRadiusChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v10

    .line 1889
    .local v10, "minValue":S
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingRadiusChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v9

    .line 1890
    .local v9, "maxValue":S
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateCirclingRadiusChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 1891
    .local v0, "currentValue":S
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingRadiusState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    int-to-double v2, v0

    int-to-double v4, v9

    int-to-double v6, v10

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 1893
    .end local v0    # "currentValue":S
    .end local v9    # "maxValue":S
    .end local v10    # "minValue":S
    :cond_1
    return v11
.end method

.method private updateConnectionState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1218
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1219
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiCommandsAvailability(Z)V

    .line 1220
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->suspendRecordingDuration()V

    .line 1221
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightPlanMavlinkPlayingState:Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->reset()V

    .line 1222
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->reset()V

    .line 1227
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 1228
    return-void

    .line 1224
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->isFlying()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiCommandsAvailability(Z)V

    .line 1225
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->resetSaturation()V

    goto :goto_0
.end method

.method private updateCpuId(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2882
    if-eqz p1, :cond_0

    .line 2883
    const-string v1, "ARDrone3DeviceControllerSettingsStateCPUIDNotificationIdKey"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2884
    .local v0, "cpuId":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCpuId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2885
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCpuId:Ljava/lang/String;

    .line 2886
    const/4 v1, 0x1

    .line 2889
    .end local v0    # "cpuId":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateDistanceRestrictionState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "maxDistanceAvailabilityBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1827
    const/4 v1, 0x0

    .line 1828
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1829
    const-string v4, "ARDrone3DeviceControllerPilotingSettingsStateNoFlyOverMaxDistanceChangedNotificationShouldNotFlyOverKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 1830
    .local v0, "available":Z
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightDistanceRestrictionStatus:I

    .line 1831
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDistanceRestrictionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v3, v0}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    move-result v1

    .line 1833
    .end local v0    # "available":Z
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 1829
    goto :goto_0

    .restart local v0    # "available":Z
    :cond_2
    move v2, v3

    .line 1830
    goto :goto_1
.end method

.method private updateExpositionState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "expositionStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2418
    const/4 v11, 0x0

    .line 2419
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2420
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateExpositionChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 2421
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateExpositionChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 2422
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateExpositionChangedNotificationValueKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2423
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mExpositionState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 2425
    .end local v0    # "currentValue":F
    .end local v9    # "maxValue":F
    .end local v10    # "minValue":F
    :cond_0
    return v11
.end method

.method private updateFlatTrimAllowed(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "flatTrimBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2766
    const/4 v0, 0x0

    .line 2767
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2768
    const/4 v0, 0x1

    .line 2770
    :cond_0
    return v0
.end method

.method private updateFlightPlanComponents(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "flightPlanComponents"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    .line 2787
    const/4 v3, 0x0

    .line 2788
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 2789
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightPlanComponents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2790
    .local v2, "flightPlanComponentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parrot/freeflight/core/model/FlightPlanComponent;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 2792
    .local v1, "componentBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 2793
    const-string v5, "DeviceControllerFlightPlanStateComponentStateListChangedNotificationStateKey"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    if-ne v5, v6, :cond_1

    move v4, v6

    .line 2794
    .local v4, "state":Z
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    .line 2795
    .local v0, "component":Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->getState()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 2796
    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->setState(Z)V

    .line 2797
    const/4 v3, 0x1

    goto :goto_0

    .line 2793
    .end local v0    # "component":Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    .end local v4    # "state":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 2802
    .end local v1    # "componentBundle":Landroid/os/Bundle;
    .end local v2    # "flightPlanComponentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parrot/freeflight/core/model/FlightPlanComponent;>;"
    :cond_2
    return v3
.end method

.method private updateFlightPlanMavlinkPlayingState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "mavlinkPlayingStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2774
    if-eqz p1, :cond_0

    .line 2775
    const-string v2, "DeviceControllerMavlinkStateMavlinkFilePlayingStateChangedNotificationTypeKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2776
    .local v1, "type":I
    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_TYPE_ENUM;->ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_TYPE_FLIGHTPLAN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_TYPE_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_TYPE_ENUM;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2777
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightPlanSupported:Z

    .line 2779
    const-string v2, "DeviceControllerMavlinkStateMavlinkFilePlayingStateChangedNotificationStateKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2780
    .local v0, "state":I
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightPlanMavlinkPlayingState:Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->update(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;)Z

    move-result v2

    .line 2783
    .end local v0    # "state":I
    .end local v1    # "type":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateFlightPlanReturnHomeState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1932
    if-eqz p1, :cond_0

    .line 1933
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v4, v2}, Lcom/parrot/freeflight/util/ToggleState;->setAvailable(Z)V

    .line 1934
    const-string v4, "DeviceControllerFlightPlanSettingsStateReturnHomeOnDisconnectChangedNotificationIsReadOnlyKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 1935
    .local v0, "readOnly":Z
    :goto_0
    const-string v4, "DeviceControllerFlightPlanSettingsStateReturnHomeOnDisconnectChangedNotificationStateKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 1936
    .local v1, "state":Z
    :goto_1
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v4, v2, v1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    move-result v3

    .line 1938
    .end local v0    # "readOnly":Z
    .end local v1    # "state":Z
    :cond_0
    return v3

    :cond_1
    move v0, v3

    .line 1934
    goto :goto_0

    .restart local v0    # "readOnly":Z
    :cond_2
    move v1, v3

    .line 1935
    goto :goto_1

    .restart local v1    # "state":Z
    :cond_3
    move v2, v3

    .line 1936
    goto :goto_2
.end method

.method private updateFlightsState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "flightStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2847
    const/4 v2, 0x0

    .line 2848
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 2849
    const-string v4, "ARDrone3DeviceControllerSettingsStateMotorFlightsStatusChangedNotificationNbFlightsKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 2850
    .local v0, "flightsNumber":S
    const-string v4, "ARDrone3DeviceControllerSettingsStateMotorFlightsStatusChangedNotificationLastFlightDurationKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v1

    .line 2851
    .local v1, "lastFlightDuration":S
    const-string v4, "ARDrone3DeviceControllerSettingsStateMotorFlightsStatusChangedNotificationTotalFlightDurationKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2853
    .local v3, "totalFlightsDuration":I
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightsNumber:I

    if-eq v4, v0, :cond_0

    .line 2854
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightsNumber:I

    .line 2855
    const/4 v2, 0x1

    .line 2857
    :cond_0
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLastFlightDuration:I

    if-eq v4, v1, :cond_1

    .line 2858
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLastFlightDuration:I

    .line 2859
    const/4 v2, 0x1

    .line 2861
    :cond_1
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mTotalFlightsDuration:I

    if-eq v4, v3, :cond_2

    .line 2862
    iput v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mTotalFlightsDuration:I

    .line 2863
    const/4 v2, 0x1

    .line 2866
    .end local v0    # "flightsNumber":S
    .end local v1    # "lastFlightDuration":S
    .end local v3    # "totalFlightsDuration":I
    :cond_2
    return v2
.end method

.method private updateFlyingState(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "flyingStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 1431
    const/4 v4, 0x0

    .line 1432
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1433
    const-string v5, "ARDrone3DeviceControllerPilotingStateFlyingStateChangedNotificationStateKey"

    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1434
    .local v0, "flyStateValue":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    move-result-object v1

    .line 1435
    .local v1, "flyingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;
    iget v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlyingState:I

    .line 1437
    .local v3, "previousState":I
    sget-object v5, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1467
    const/4 v2, 0x0

    .line 1470
    .local v2, "newState":I
    :goto_0
    if-eq v3, v2, :cond_0

    .line 1471
    packed-switch v2, :pswitch_data_1

    .line 1491
    :goto_1
    :pswitch_0
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlyingState:I

    .line 1492
    const/4 v4, 0x1

    .line 1495
    .end local v0    # "flyStateValue":I
    .end local v1    # "flyingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;
    .end local v2    # "newState":I
    .end local v3    # "previousState":I
    :cond_0
    return v4

    .line 1439
    .restart local v0    # "flyStateValue":I
    .restart local v1    # "flyingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;
    .restart local v3    # "previousState":I
    :pswitch_1
    const/4 v2, 0x0

    .line 1440
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1443
    .end local v2    # "newState":I
    :pswitch_2
    const/4 v2, 0x1

    .line 1444
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1447
    .end local v2    # "newState":I
    :pswitch_3
    const/4 v2, 0x2

    .line 1448
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1451
    .end local v2    # "newState":I
    :pswitch_4
    const/4 v2, 0x3

    .line 1452
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1455
    .end local v2    # "newState":I
    :pswitch_5
    const/4 v2, 0x4

    .line 1456
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1459
    .end local v2    # "newState":I
    :pswitch_6
    const/4 v2, 0x5

    .line 1460
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1463
    .end local v2    # "newState":I
    :pswitch_7
    const/4 v2, 0x6

    .line 1464
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1473
    :pswitch_8
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->sendControllerGpsPosition()V

    .line 1474
    iput v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMediaCountTakenDuringRun:I

    .line 1478
    :pswitch_9
    iget-boolean v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlatTrimAllowed:Z

    if-eqz v5, :cond_1

    .line 1479
    iput-boolean v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlatTrimAllowed:Z

    .line 1481
    :cond_1
    invoke-direct {p0, v7}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiCommandsAvailability(Z)V

    goto :goto_1

    .line 1485
    :pswitch_a
    iget-boolean v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlatTrimAllowed:Z

    if-nez v5, :cond_2

    .line 1486
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlatTrimAllowed:Z

    .line 1488
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->updateWifiCommandsAvailability(Z)V

    goto :goto_1

    .line 1437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1471
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private updateFrameRate(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "frameRateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2499
    const/4 v3, 0x0

    .line 2500
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2501
    const-string v6, "ARDrone3DeviceControllerPictureSettingsStateVideoFramerateChangedNotificationFramerateKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2502
    .local v1, "frameRateValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;

    move-result-object v0

    .line 2503
    .local v0, "frameRate":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFrameRate:I

    .line 2504
    .local v2, "previousFrameRate":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2516
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFrameRate:I

    .line 2519
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFrameRate:I

    if-eq v2, v6, :cond_1

    move v3, v4

    .line 2521
    .end local v0    # "frameRate":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    .end local v1    # "frameRateValue":I
    .end local v2    # "previousFrameRate":I
    :cond_0
    :goto_1
    return v3

    .line 2506
    .restart local v0    # "frameRate":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    .restart local v1    # "frameRateValue":I
    .restart local v2    # "previousFrameRate":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFrameRate:I

    goto :goto_0

    .line 2509
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFrameRate:I

    goto :goto_0

    .line 2512
    :pswitch_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFrameRate:I

    goto :goto_0

    :cond_1
    move v3, v5

    .line 2519
    goto :goto_1

    .line 2504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateGpsLocationGeofenceCenter(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "positionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide v6, 0x407f400000000000L    # 500.0

    .line 1794
    const/4 v0, 0x0

    .line 1795
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1796
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateGeofenceCenterChangedNotificationLatitudeKey"

    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 1797
    .local v2, "latitude":D
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateGeofenceCenterChangedNotificationLongitudeKey"

    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1798
    .local v4, "longitude":D
    new-instance v1, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>(DDD)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGeofenceCenterPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 1799
    const/4 v0, 0x1

    .line 1801
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :cond_0
    return v0
.end method

.method private updateGpsSatelliteCount(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "gpsSatelliteBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1758
    const/4 v1, 0x0

    .line 1759
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1760
    const-string v2, "ARDrone3DeviceControllerGPSStateNumberOfSatelliteChangedNotificationNumberOfSatelliteKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    .line 1761
    .local v0, "satelliteCount":I
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGpsSatelliteCount:I

    if-eq v2, v0, :cond_0

    .line 1762
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGpsSatelliteCount:I

    .line 1763
    const/4 v1, 0x1

    .line 1766
    .end local v0    # "satelliteCount":I
    :cond_0
    return v1
.end method

.method private updateGpsState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "gpsBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1745
    const/4 v1, 0x0

    .line 1746
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1747
    const-string v4, "ARDrone3DeviceControllerGPSSettingsStateGPSFixStateChangedNotificationFixedKey"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 1748
    .local v0, "gpsFixed":Z
    :goto_0
    iget-boolean v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGpsFixed:Z

    if-eq v4, v0, :cond_0

    .line 1749
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGpsFixed:Z

    .line 1750
    if-eqz v0, :cond_2

    :goto_1
    iput v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGpsFixStatus:I

    .line 1751
    const/4 v1, 0x1

    .line 1754
    .end local v0    # "gpsFixed":Z
    :cond_0
    return v1

    :cond_1
    move v0, v3

    .line 1747
    goto :goto_0

    .restart local v0    # "gpsFixed":Z
    :cond_2
    move v3, v2

    .line 1750
    goto :goto_1
.end method

.method private updateGpsVersions(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "gpsVersionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2290
    const/4 v1, 0x0

    .line 2291
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 2292
    const-string v3, "ARDrone3DeviceControllerSettingsStateProductGPSVersionChangedNotificationHardwareKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2293
    .local v0, "hardwareVersion":Ljava/lang/String;
    const-string v3, "ARDrone3DeviceControllerSettingsStateProductGPSVersionChangedNotificationSoftwareKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2294
    .local v2, "softwareVersion":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGpsSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2295
    const/4 v1, 0x1

    .line 2296
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGpsSoftwareVersion:Ljava/lang/String;

    .line 2299
    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGpsHardwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2300
    const/4 v1, 0x1

    .line 2301
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGpsHardwareVersion:Ljava/lang/String;

    .line 2304
    .end local v0    # "hardwareVersion":Ljava/lang/String;
    .end local v2    # "softwareVersion":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private updateHomePositionState(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "homePositionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide v8, 0x407f400000000000L    # 500.0

    .line 1420
    const/4 v0, 0x0

    .line 1421
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1422
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeChangedNotificationLatitudeKey"

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 1423
    .local v2, "latitude":D
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeChangedNotificationLongitudeKey"

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1424
    .local v4, "longitude":D
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeChangedNotificationAltitudeKey"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 1425
    .local v6, "altitude":D
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mHomePosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateLocation(DDDJ)Z

    move-result v0

    .line 1427
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    .end local v6    # "altitude":D
    :cond_0
    return v0
.end method

.method private updateLandingState(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1499
    const/4 v3, 0x0

    .line 1500
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1501
    const-string v4, "ARDrone3DeviceControllerPilotingStateLandingStateChangedNotificationStateKey"

    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_LANDINGSTATECHANGED_STATE_ENUM;->eARCOMMANDS_ARDRONE3_PILOTINGSTATE_LANDINGSTATECHANGED_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_LANDINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_LANDINGSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1502
    .local v1, "landingStateValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_LANDINGSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_LANDINGSTATECHANGED_STATE_ENUM;

    move-result-object v0

    .line 1504
    .local v0, "landingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_LANDINGSTATECHANGED_STATE_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_LANDINGSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_LANDINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1512
    const/4 v2, -0x1

    .line 1515
    .local v2, "newLandingState":I
    :goto_0
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLandingState:I

    if-eq v2, v4, :cond_0

    .line 1516
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLandingState:I

    .line 1517
    const/4 v3, 0x1

    .line 1520
    .end local v0    # "landingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_LANDINGSTATECHANGED_STATE_ENUM;
    .end local v1    # "landingStateValue":I
    .end local v2    # "newLandingState":I
    :cond_0
    return v3

    .line 1506
    .restart local v0    # "landingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_LANDINGSTATECHANGED_STATE_ENUM;
    .restart local v1    # "landingStateValue":I
    :pswitch_0
    const/4 v2, 0x0

    .line 1507
    .restart local v2    # "newLandingState":I
    goto :goto_0

    .line 1509
    .end local v2    # "newLandingState":I
    :pswitch_1
    const/4 v2, 0x1

    .line 1510
    .restart local v2    # "newLandingState":I
    goto :goto_0

    .line 1504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLastMotorsState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "lastMotorErrorBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2833
    const/4 v2, 0x0

    .line 2834
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2835
    const-string v3, "ARDrone3DeviceControllerSettingsStateMotorErrorLastErrorChangedNotificationMotorErrorKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2837
    .local v0, "errorKey":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getMotorState(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;)I

    move-result v1

    .line 2838
    .local v1, "lastError":I
    iget v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLastMotorError:I

    if-eq v1, v3, :cond_0

    .line 2839
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLastMotorError:I

    .line 2840
    const/4 v2, 0x1

    .line 2843
    .end local v0    # "errorKey":I
    .end local v1    # "lastError":I
    :cond_0
    return v2
.end method

.method private updateMagnetoCalibrationProcedureState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "calibrationStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2353
    const/4 v1, 0x0

    .line 2354
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2355
    const-string v4, "DeviceControllerCalibrationStateMagnetoCalibrationStartedChangedNotificationStartedKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 2356
    .local v0, "calibrationStarted":Z
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->updateMagnetoCalibrationProcedureState(I)Z

    move-result v1

    .line 2358
    .end local v0    # "calibrationStarted":Z
    :cond_0
    return v1

    :cond_1
    move v0, v3

    .line 2355
    goto :goto_0

    .restart local v0    # "calibrationStarted":Z
    :cond_2
    move v3, v2

    .line 2356
    goto :goto_1
.end method

.method private updateMagnetoCalibrationStatus(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "calibrationStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x34

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2308
    const/4 v2, 0x0

    .line 2309
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2310
    const-string v4, "DeviceControllerCalibrationStateMagnetoCalibrationRequiredStateNotificationRequiredKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 2311
    .local v0, "calibrationRequired":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2312
    .local v1, "calibrationStatus":I
    :goto_1
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->updateMagnetoCalibrationStatus(I)Z

    move-result v2

    .line 2313
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isDroneCalibrated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2314
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addFpvAlert(I)Z

    .line 2319
    .end local v0    # "calibrationRequired":Z
    .end local v1    # "calibrationStatus":I
    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v3

    .line 2310
    goto :goto_0

    .restart local v0    # "calibrationRequired":Z
    :cond_2
    move v1, v3

    .line 2311
    goto :goto_1

    .line 2316
    .restart local v1    # "calibrationStatus":I
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeFpvAlert(I)Z

    goto :goto_2
.end method

.method private updateMassStorageContent(Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "massStorageContent"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1702
    const/4 v6, 0x0

    .line 1704
    .local v6, "shouldUpdate":Z
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMassStorageIdKey:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1705
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMassStorageIdKey:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1706
    .local v1, "massStorageContentForKey":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 1707
    iget-boolean v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMassStorageContentCmdSupported:Z

    if-nez v7, :cond_0

    .line 1708
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMassStorageContentCmdSupported:Z

    .line 1710
    :cond_0
    const-string v7, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotificationNbPudsKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPudCount:I

    .line 1711
    const-string v7, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotificationNbCrashLogsKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCrashLogCount:I

    .line 1712
    const-string v7, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotificationNbPhotosKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v4

    .line 1713
    .local v4, "newPhotoCount":S
    const-string v7, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotificationNbVideosKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v5

    .line 1715
    .local v5, "newVideoCount":S
    add-int v3, v4, v5

    .line 1716
    .local v3, "newMediaCount":I
    iget v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPhotoCount:I

    iget v8, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoCount:I

    add-int v0, v7, v8

    .line 1717
    .local v0, "lastMediaCount":I
    sub-int v2, v3, v0

    .line 1719
    .local v2, "mediaCountDifference":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->isOnTheGround()Z

    move-result v7

    if-nez v7, :cond_1

    if-lez v2, :cond_1

    .line 1721
    iget v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMediaCountTakenDuringRun:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMediaCountTakenDuringRun:I

    .line 1724
    :cond_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPhotoCount:I

    .line 1725
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoCount:I

    .line 1726
    const/4 v6, 0x1

    .line 1729
    .end local v0    # "lastMediaCount":I
    .end local v1    # "massStorageContentForKey":Landroid/os/Bundle;
    .end local v2    # "mediaCountDifference":I
    .end local v3    # "newMediaCount":I
    .end local v4    # "newPhotoCount":S
    .end local v5    # "newVideoCount":S
    :cond_2
    return v6
.end method

.method private updateMassStorageState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "massStorageState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1667
    const/4 v3, 0x0

    .line 1669
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1670
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1672
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1673
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1674
    .local v1, "massStorageIdKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1676
    .local v2, "massStorageStateForKey":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1677
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMassStorageIdKey:Ljava/lang/String;

    .line 1678
    const-string v4, "DeviceControllerCommonStateMassStorageStateListChangedNotificationNameKey"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMassStorageName:Ljava/lang/String;

    .line 1679
    const/4 v3, 0x1

    .line 1683
    .end local v0    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "massStorageIdKey":Ljava/lang/String;
    .end local v2    # "massStorageStateForKey":Landroid/os/Bundle;
    :cond_0
    return v3
.end method

.method private updateMassStorageStateInfo(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "massStorageInfoState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1687
    const/4 v2, 0x0

    .line 1689
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMassStorageIdKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1690
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMassStorageIdKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1692
    .local v1, "massStorageInfoForKey":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1693
    const-string v3, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationMassStorageIdKey"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1694
    .local v0, "idKey":I
    const-string v3, "%s_%03d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMassStorageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMassStoragePath:Ljava/lang/String;

    .line 1695
    const/4 v2, 0x1

    .line 1698
    .end local v0    # "idKey":I
    .end local v1    # "massStorageInfoForKey":Landroid/os/Bundle;
    :cond_0
    return v2
.end method

.method private updateMaxAltitudeState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "maxAltitudeStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1805
    const/4 v11, 0x0

    .line 1806
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1807
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 1808
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 1809
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1810
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 1812
    .end local v0    # "currentValue":F
    .end local v9    # "maxValue":F
    .end local v10    # "minValue":F
    :cond_0
    return v11
.end method

.method private updateMaxDistanceState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "maxDistanceStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1837
    const/4 v11, 0x0

    .line 1838
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1839
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxDistanceChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 1840
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxDistanceChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 1841
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxDistanceChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1842
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMaxDistanceState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 1844
    .end local v0    # "currentValue":F
    .end local v9    # "maxValue":F
    .end local v10    # "minValue":F
    :cond_0
    return v11
.end method

.method private updateMaxPitchState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "maxPitchStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1848
    const/4 v11, 0x0

    .line 1849
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1850
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 1851
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 1852
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxTiltChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1853
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMaxPitchState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 1855
    .end local v0    # "currentValue":F
    .end local v9    # "maxValue":F
    .end local v10    # "minValue":F
    :cond_0
    return v11
.end method

.method private updateMemoryInfo(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "memoryBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1645
    const/4 v3, 0x0

    .line 1646
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 1648
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1649
    .local v1, "massStorageIdKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1650
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1651
    .local v0, "infoDict":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1652
    const-string v6, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationSizeKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1653
    .local v2, "memorySizeInMBytes":I
    const-string v6, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationUsedSizeKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1654
    .local v4, "usedMemorySizeInMBytes":I
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mUsedMemorySizeInMByte:I

    if-ne v4, v6, :cond_1

    iget v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMemorySizeInMByte:I

    if-eq v2, v6, :cond_0

    .line 1655
    :cond_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mUsedMemorySizeInMByte:I

    .line 1656
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMemorySizeInMByte:I

    .line 1657
    const/4 v3, 0x1

    goto :goto_0

    .line 1663
    .end local v0    # "infoDict":Landroid/os/Bundle;
    .end local v1    # "massStorageIdKey":Ljava/lang/String;
    .end local v2    # "memorySizeInMBytes":I
    .end local v4    # "usedMemorySizeInMBytes":I
    :cond_2
    return v3
.end method

.method private updateMinAltitudeState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "minAltitudeStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1816
    const/4 v11, 0x0

    .line 1817
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1818
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMinAltitudeChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 1819
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMinAltitudeChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 1820
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMinAltitudeChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1821
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMinAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 1823
    .end local v0    # "currentValue":F
    .end local v9    # "maxValue":F
    .end local v10    # "minValue":F
    :cond_0
    return v11
.end method

.method private updateMotorsSoftwareVersion(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "motorsSoftwareVersionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2870
    const/4 v0, 0x0

    .line 2871
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2872
    const-string v2, "ARDrone3DeviceControllerSettingsStateMotorSoftwareVersionChangedNotificationVersionKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2873
    .local v1, "softwareVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2874
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorSoftwareVersion:Ljava/lang/String;

    .line 2875
    const/4 v0, 0x1

    .line 2878
    .end local v1    # "softwareVersion":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private updateMotorsState(Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "motorStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    .line 2806
    const/4 v4, 0x0

    .line 2807
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 2808
    const-string v5, "ARDrone3DeviceControllerSettingsStateMotorErrorStateChangedNotificationMotorIdsKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    and-int/lit16 v3, v5, 0xff

    .line 2809
    .local v3, "motorIds":I
    const-string v5, "ARDrone3DeviceControllerSettingsStateMotorErrorStateChangedNotificationMotorErrorKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;

    move-result-object v0

    .line 2810
    .local v0, "error":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;
    and-int/lit8 v2, v3, 0x1

    .line 2811
    .local v2, "motorConcerned":I
    if-ne v2, v8, :cond_3

    .line 2813
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getMotorState(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;)I

    move-result v1

    .line 2814
    .local v1, "errorState":I
    iget v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorsState:I

    if-eq v1, v5, :cond_0

    .line 2815
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorsState:I

    .line 2816
    const/4 v4, 0x1

    .line 2818
    :cond_0
    iget v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorsState:I

    if-eqz v5, :cond_2

    .line 2819
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    const/16 v6, 0x9

    iget v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorsState:I

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getMotorErrorStringId(I)I

    move-result v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addMotorAlert(III)Z

    move-result v5

    or-int/2addr v4, v5

    .line 2829
    .end local v0    # "error":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;
    .end local v1    # "errorState":I
    .end local v2    # "motorConcerned":I
    .end local v3    # "motorIds":I
    :cond_1
    :goto_0
    return v4

    .line 2821
    .restart local v0    # "error":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;
    .restart local v1    # "errorState":I
    .restart local v2    # "motorConcerned":I
    .restart local v3    # "motorIds":I
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeMotorAlert()Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    .line 2823
    .end local v1    # "errorState":I
    :cond_3
    iget v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorsState:I

    if-eqz v5, :cond_1

    .line 2824
    const/4 v5, 0x0

    iput v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorsState:I

    .line 2825
    const/4 v4, 0x1

    .line 2826
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeMotorAlert()Z

    goto :goto_0
.end method

.method private updatePhotoRecordEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "photoRecordEventBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1991
    if-eqz p1, :cond_0

    .line 1992
    const-string v2, "ARDrone3DeviceControllerMediaRecordEventPictureEventChangedNotificationEventKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->eARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    .line 1993
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->getValue()I

    move-result v3

    .line 1992
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1994
    .local v1, "eventValue":I
    const-string v2, "ARDrone3DeviceControllerMediaRecordEventPictureEventChangedNotificationErrorKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->eARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    .line 1995
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->getValue()I

    move-result v3

    .line 1994
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1996
    .local v0, "errorValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    move-result-object v2

    .line 1997
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    move-result-object v3

    .line 1996
    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->onPhotoEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;)V

    .line 1999
    .end local v0    # "errorValue":I
    .end local v1    # "eventValue":I
    :cond_0
    return-void
.end method

.method private updatePhotoRecordState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "photoRecordBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2002
    if-eqz p1, :cond_0

    .line 2003
    const-string v2, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedV2NotificationStateKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->getValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2004
    .local v1, "stateValue":I
    const-string v2, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedV2NotificationErrorKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->getValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2005
    .local v0, "errorValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    move-result-object v2

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->onPhotoStateChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;)Z

    move-result v2

    .line 2007
    .end local v0    # "errorValue":I
    .end local v1    # "stateValue":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updatePictureFormat(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "pictureFormatBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2525
    const/4 v3, 0x0

    .line 2526
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2527
    const-string v6, "ARDrone3DeviceControllerPictureSettingsStatePictureFormatChangedNotificationTypeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2528
    .local v1, "pictureFormatValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    move-result-object v0

    .line 2529
    .local v0, "pictureFormat":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPictureFormat:I

    .line 2530
    .local v2, "previousPictureFormat":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2545
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPictureFormat:I

    .line 2548
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPictureFormat:I

    if-eq v2, v6, :cond_1

    move v3, v4

    .line 2550
    .end local v0    # "pictureFormat":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    .end local v1    # "pictureFormatValue":I
    .end local v2    # "previousPictureFormat":I
    :cond_0
    :goto_1
    return v3

    .line 2532
    .restart local v0    # "pictureFormat":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    .restart local v1    # "pictureFormatValue":I
    .restart local v2    # "previousPictureFormat":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPictureFormat:I

    goto :goto_0

    .line 2535
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPictureFormat:I

    goto :goto_0

    .line 2538
    :pswitch_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPictureFormat:I

    goto :goto_0

    .line 2541
    :pswitch_3
    const/4 v6, 0x3

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPictureFormat:I

    goto :goto_0

    :cond_1
    move v3, v5

    .line 2548
    goto :goto_1

    .line 2530
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updatePilotingAlertState(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "pilotingStateAlert"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2682
    if-eqz p1, :cond_1

    .line 2683
    const-string v3, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2688
    .local v0, "alertState":I
    sget-object v3, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2711
    const/4 v2, 0x0

    .line 2712
    .local v2, "type":I
    const/4 v1, 0x0

    .line 2715
    .local v1, "message":I
    :goto_0
    const-string v3, "FixedWingModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePilotingAlertState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v1, v4}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addPermanentAlert(III)Z

    move-result v3

    .line 2719
    .end local v0    # "alertState":I
    .end local v1    # "message":I
    .end local v2    # "type":I
    :goto_1
    return v3

    .line 2690
    .restart local v0    # "alertState":I
    :pswitch_0
    const/4 v2, 0x1

    .line 2691
    .restart local v2    # "type":I
    const v1, 0x7f110012

    .line 2692
    .restart local v1    # "message":I
    goto :goto_0

    .line 2694
    .end local v1    # "message":I
    .end local v2    # "type":I
    :pswitch_1
    const/4 v2, 0x2

    .line 2695
    .restart local v2    # "type":I
    const v1, 0x7f110013

    .line 2696
    .restart local v1    # "message":I
    goto :goto_0

    .line 2698
    .end local v1    # "message":I
    .end local v2    # "type":I
    :pswitch_2
    const/4 v2, 0x3

    .line 2699
    .restart local v2    # "type":I
    const v1, 0x7f110014

    .line 2700
    .restart local v1    # "message":I
    goto :goto_0

    .line 2702
    .end local v1    # "message":I
    .end local v2    # "type":I
    :pswitch_3
    const/4 v2, 0x4

    .line 2703
    .restart local v2    # "type":I
    const v1, 0x7f110015

    .line 2704
    .restart local v1    # "message":I
    goto :goto_0

    .line 2706
    .end local v1    # "message":I
    .end local v2    # "type":I
    :pswitch_4
    const/4 v2, 0x5

    .line 2707
    .restart local v2    # "type":I
    const v1, 0x7f110745

    .line 2708
    .restart local v1    # "message":I
    goto :goto_0

    .line 2717
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removePermanentAlert()Z

    move-result v3

    goto :goto_1

    .line 2719
    .end local v0    # "alertState":I
    .end local v1    # "message":I
    .end local v2    # "type":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 2688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updatePitchModeState(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "pitchModeStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1859
    const/4 v3, 0x0

    .line 1860
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1861
    const-string v4, "ARDrone3DeviceControllerPilotingSettingsStatePitchModeChangedNotificationValueKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1862
    .local v2, "pitchModeValue":I
    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;

    move-result-object v1

    .line 1864
    .local v1, "pitchModeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1874
    const/4 v0, -0x1

    .line 1877
    .local v0, "mode":I
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPitchModeState:Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->update(I)Z

    move-result v3

    .line 1879
    .end local v0    # "mode":I
    .end local v1    # "pitchModeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;
    .end local v2    # "pitchModeValue":I
    :cond_0
    return v3

    .line 1866
    .restart local v1    # "pitchModeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;
    .restart local v2    # "pitchModeValue":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1867
    .restart local v0    # "mode":I
    goto :goto_0

    .line 1870
    .end local v0    # "mode":I
    :pswitch_1
    const/4 v0, 0x1

    .line 1871
    .restart local v0    # "mode":I
    goto :goto_0

    .line 1864
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updatePitotCalibrationState(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "calibrationStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v7, 0x34

    .line 2378
    const/4 v1, 0x0

    .line 2379
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2382
    const-string v5, "DeviceControllerCalibrationStatePitotCalibrationStateChangedNotificationLastErrorKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 2383
    .local v0, "failed":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2384
    const/4 v2, 0x4

    .line 2407
    .local v2, "state":I
    :goto_1
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v5, v2}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->updatePitotCalibrationState(I)Z

    move-result v1

    .line 2408
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isDroneCalibrated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2409
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v5, v7}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addFpvAlert(I)Z

    .line 2414
    .end local v0    # "failed":Z
    .end local v2    # "state":I
    :cond_0
    :goto_2
    return v1

    .line 2382
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2386
    .restart local v0    # "failed":Z
    :cond_2
    const-string v5, "DeviceControllerCalibrationStatePitotCalibrationStateChangedNotificationStateKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2387
    .local v4, "stateValue":I
    invoke-static {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_PITOTCALIBRATIONSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_PITOTCALIBRATIONSTATECHANGED_STATE_ENUM;

    move-result-object v3

    .line 2388
    .local v3, "stateEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_PITOTCALIBRATIONSTATECHANGED_STATE_ENUM;
    sget-object v5, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CALIBRATIONSTATE_PITOTCALIBRATIONSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_PITOTCALIBRATIONSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2403
    const/4 v2, -0x1

    .restart local v2    # "state":I
    goto :goto_1

    .line 2390
    .end local v2    # "state":I
    :pswitch_0
    const/4 v2, 0x0

    .line 2391
    .restart local v2    # "state":I
    goto :goto_1

    .line 2393
    .end local v2    # "state":I
    :pswitch_1
    const/4 v2, 0x1

    .line 2394
    .restart local v2    # "state":I
    goto :goto_1

    .line 2396
    .end local v2    # "state":I
    :pswitch_2
    const/4 v2, 0x2

    .line 2397
    .restart local v2    # "state":I
    goto :goto_1

    .line 2399
    .end local v2    # "state":I
    :pswitch_3
    const/4 v2, 0x3

    .line 2400
    .restart local v2    # "state":I
    goto :goto_1

    .line 2411
    .end local v3    # "stateEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_PITOTCALIBRATIONSTATECHANGED_STATE_ENUM;
    .end local v4    # "stateValue":I
    :cond_3
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v5, v7}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeFpvAlert(I)Z

    goto :goto_2

    .line 2388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updatePositionState(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "positionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide v8, 0x407f400000000000L    # 500.0

    .line 1782
    const/4 v0, 0x0

    .line 1783
    .local v0, "shouldUpdate":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mGpsFixed:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1784
    const-string v1, "ARDrone3DeviceControllerPilotingStatePositionChangedNotificationLatitudeKey"

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 1785
    .local v2, "latitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStatePositionChangedNotificationLongitudeKey"

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1786
    .local v4, "longitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStatePositionChangedNotificationAltitudeKey"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 1787
    .local v6, "altitude":D
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateLocation(DDDJ)Z

    move-result v0

    .line 1788
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocationWithGpsFixed:Z

    .line 1790
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    .end local v6    # "altitude":D
    :cond_0
    return v0
.end method

.method private updateProductName(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "productNameBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1530
    const/4 v1, 0x0

    .line 1531
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 1532
    const-string v2, "DeviceControllerSettingsStateProductNameChangedNotificationNameKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1533
    .local v0, "productName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1534
    const/4 v1, 0x1

    .line 1535
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mProductName:Ljava/lang/String;

    .line 1537
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiNameState:Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateWifiName(Ljava/lang/String;)Z

    .line 1539
    .end local v0    # "productName":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private updateProductVersions(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "productVersionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2273
    const/4 v2, 0x0

    .line 2274
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 2275
    const-string v3, "DeviceControllerSettingsStateProductVersionChangedNotificationSoftwareKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2276
    .local v1, "productSoftwareVersion":Ljava/lang/String;
    const-string v3, "DeviceControllerSettingsStateProductVersionChangedNotificationHardwareKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2277
    .local v0, "productHardwareVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2278
    const/4 v2, 0x1

    .line 2279
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSoftwareVersion:Ljava/lang/String;

    .line 2281
    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mHardwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2282
    const/4 v2, 0x1

    .line 2283
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mHardwareVersion:Ljava/lang/String;

    .line 2286
    .end local v0    # "productHardwareVersion":Ljava/lang/String;
    .end local v1    # "productSoftwareVersion":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private updateRecordingMode(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "recordingModeBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2476
    const/4 v3, 0x0

    .line 2477
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2478
    const-string v6, "ARDrone3DeviceControllerPictureSettingsStateVideoRecordingModeChangedNotificationModeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2479
    .local v2, "recordingModeValue":I
    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;

    move-result-object v1

    .line 2480
    .local v1, "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRecordingMode:I

    .line 2481
    .local v0, "previousMode":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2490
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRecordingMode:I

    .line 2493
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRecordingMode:I

    if-eq v0, v6, :cond_1

    move v3, v4

    .line 2495
    .end local v0    # "previousMode":I
    .end local v1    # "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    .end local v2    # "recordingModeValue":I
    :cond_0
    :goto_1
    return v3

    .line 2483
    .restart local v0    # "previousMode":I
    .restart local v1    # "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    .restart local v2    # "recordingModeValue":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRecordingMode:I

    goto :goto_0

    .line 2486
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRecordingMode:I

    goto :goto_0

    :cond_1
    move v3, v5

    .line 2493
    goto :goto_1

    .line 2481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateReturnHomeDelay(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "returnHomeDelayBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1624
    const/4 v9, 0x0

    .line 1625
    .local v9, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1626
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateReturnHomeDelayChangedNotificationDelayKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 1627
    .local v0, "returnHomeDelay":S
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeDelay:Lcom/parrot/freeflight/util/DoubleBoundedState;

    int-to-double v2, v0

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v9

    .line 1629
    .end local v0    # "returnHomeDelay":S
    :cond_0
    return v9
.end method

.method private updateReturnHomeStatus(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "returnHomeBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1543
    const/4 v3, 0x0

    .line 1544
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1545
    const-string v6, "ARDrone3DeviceControllerPilotingStateNavigateHomeStateChangedNotificationStateKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1546
    .local v2, "returnHomeStatusValue":I
    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;

    move-result-object v1

    .line 1547
    .local v1, "returnHomeStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeStatus:I

    .line 1548
    .local v0, "oldStatus":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1560
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeStatus:I

    .line 1563
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeStatus:I

    if-eq v0, v6, :cond_1

    move v3, v4

    .line 1565
    .end local v0    # "oldStatus":I
    .end local v1    # "returnHomeStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;
    .end local v2    # "returnHomeStatusValue":I
    :cond_0
    :goto_1
    return v3

    .line 1550
    .restart local v0    # "oldStatus":I
    .restart local v1    # "returnHomeStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;
    .restart local v2    # "returnHomeStatusValue":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeStatus:I

    goto :goto_0

    .line 1555
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeStatus:I

    goto :goto_0

    :cond_1
    move v3, v5

    .line 1563
    goto :goto_1

    .line 1548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateReturnHomeTypeDroneState(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "returnHomeDroneStatusBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1595
    const/4 v3, 0x0

    .line 1596
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1597
    const-string v4, "ARDrone3DeviceControllerGPSStateHomeTypeChosenChangedNotificationTypeKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1598
    .local v2, "returnHomeTypeValue":I
    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;

    move-result-object v1

    .line 1601
    .local v1, "returnHomeTypeDroneEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1612
    const/4 v0, -0x1

    .line 1615
    .local v0, "returnHomeTypeDrone":I
    :goto_0
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeTypeDrone:I

    if-eq v0, v4, :cond_0

    .line 1616
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeTypeDrone:I

    .line 1617
    const/4 v3, 0x1

    .line 1620
    .end local v0    # "returnHomeTypeDrone":I
    .end local v1    # "returnHomeTypeDroneEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;
    .end local v2    # "returnHomeTypeValue":I
    :cond_0
    return v3

    .line 1603
    .restart local v1    # "returnHomeTypeDroneEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;
    .restart local v2    # "returnHomeTypeValue":I
    :pswitch_0
    const/4 v0, 0x1

    .line 1604
    .restart local v0    # "returnHomeTypeDrone":I
    goto :goto_0

    .line 1606
    .end local v0    # "returnHomeTypeDrone":I
    :pswitch_1
    const/4 v0, 0x0

    .line 1607
    .restart local v0    # "returnHomeTypeDrone":I
    goto :goto_0

    .line 1609
    .end local v0    # "returnHomeTypeDrone":I
    :pswitch_2
    const/4 v0, 0x2

    .line 1610
    .restart local v0    # "returnHomeTypeDrone":I
    goto :goto_0

    .line 1601
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateReturnHomeTypeStatus(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "homeTypeBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1569
    const/4 v3, 0x0

    .line 1570
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1571
    const-string v4, "ARDrone3DeviceControllerGPSSettingsStateHomeTypeChangedNotificationTypeKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1572
    .local v2, "returnHomeTypeValue":I
    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;

    move-result-object v1

    .line 1575
    .local v1, "returnHomeTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1583
    const/4 v0, -0x1

    .line 1586
    .local v0, "returnHomeType":I
    :goto_0
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeType:I

    if-eq v0, v4, :cond_0

    .line 1587
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeType:I

    .line 1588
    const/4 v3, 0x1

    .line 1591
    .end local v0    # "returnHomeType":I
    .end local v1    # "returnHomeTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;
    .end local v2    # "returnHomeTypeValue":I
    :cond_0
    return v3

    .line 1577
    .restart local v1    # "returnHomeTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;
    .restart local v2    # "returnHomeTypeValue":I
    :pswitch_0
    const/4 v0, 0x1

    .line 1578
    .restart local v0    # "returnHomeType":I
    goto :goto_0

    .line 1580
    .end local v0    # "returnHomeType":I
    :pswitch_1
    const/4 v0, 0x0

    .line 1581
    .restart local v0    # "returnHomeType":I
    goto :goto_0

    .line 1575
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRssiLevel(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "rssiLevelBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1733
    const/4 v1, 0x0

    .line 1734
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1735
    const-string v2, "DeviceControllerCommonStateWifiSignalChangedNotificationRssiKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 1736
    .local v0, "rssi":S
    iget-short v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRssi:S

    if-eq v0, v2, :cond_0

    .line 1737
    iput-short v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRssi:S

    .line 1738
    const/4 v1, 0x1

    .line 1741
    .end local v0    # "rssi":S
    :cond_0
    return v1
.end method

.method private updateRunId(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "runIdBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1411
    const/4 v0, 0x0

    .line 1412
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1413
    const-string v1, "DeviceControllerRunStateRunIdChangedNotificationRunIdKey"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRunId:Ljava/lang/String;

    .line 1414
    const/4 v0, 0x1

    .line 1416
    :cond_0
    return v0
.end method

.method private updateSaturationState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "saturationStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2429
    const/4 v11, 0x0

    .line 2430
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2431
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateSaturationChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 2432
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateSaturationChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 2433
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateSaturationChangedNotificationValueKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2434
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSaturationState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 2436
    .end local v0    # "currentValue":F
    .end local v9    # "maxValue":F
    .end local v10    # "minValue":F
    :cond_0
    return v11
.end method

.method private updateSensorAlertState(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "sensorAlertBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2723
    const/4 v7, 0x0

    .line 2724
    .local v7, "update":Z
    if-eqz p1, :cond_4

    .line 2725
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;

    move-result-object v5

    .line 2727
    .local v5, "sensorsNameArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_4

    .line 2728
    aget-object v3, v5, v1

    .line 2730
    .local v3, "sensorEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;
    sget-object v8, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 2747
    const/4 v0, 0x0

    .line 2750
    .local v0, "alertType":I
    :goto_1
    if-eqz v0, :cond_1

    .line 2751
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2752
    .local v2, "sensorBundle":Landroid/os/Bundle;
    const/4 v6, 0x1

    .line 2753
    .local v6, "stateOK":Z
    if-eqz v2, :cond_0

    .line 2754
    const-string v8, "DeviceControllerCommonStateSensorsStatesListChangedNotificationSensorStateKey"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    .line 2756
    .local v4, "sensorState":B
    if-eqz v4, :cond_2

    const/4 v6, 0x1

    .line 2758
    .end local v4    # "sensorState":B
    :cond_0
    :goto_2
    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v8, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeSensorAlert(I)Z

    move-result v8

    :goto_3
    or-int/2addr v7, v8

    .line 2727
    .end local v2    # "sensorBundle":Landroid/os/Bundle;
    .end local v6    # "stateOK":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2732
    .end local v0    # "alertType":I
    :pswitch_0
    const/16 v0, 0xa

    .line 2733
    .restart local v0    # "alertType":I
    goto :goto_1

    .line 2735
    .end local v0    # "alertType":I
    :pswitch_1
    const/16 v0, 0xb

    .line 2736
    .restart local v0    # "alertType":I
    goto :goto_1

    .line 2738
    .end local v0    # "alertType":I
    :pswitch_2
    const/16 v0, 0xc

    .line 2739
    .restart local v0    # "alertType":I
    goto :goto_1

    .line 2741
    .end local v0    # "alertType":I
    :pswitch_3
    const/16 v0, 0xd

    .line 2742
    .restart local v0    # "alertType":I
    goto :goto_1

    .line 2744
    .end local v0    # "alertType":I
    :pswitch_4
    const/16 v0, 0xe

    .line 2745
    .restart local v0    # "alertType":I
    goto :goto_1

    .line 2756
    .restart local v2    # "sensorBundle":Landroid/os/Bundle;
    .restart local v4    # "sensorState":B
    .restart local v6    # "stateOK":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 2758
    .end local v4    # "sensorState":B
    :cond_3
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v8, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addSensorAlert(I)Z

    move-result v8

    goto :goto_3

    .line 2762
    .end local v0    # "alertType":I
    .end local v1    # "i":I
    .end local v2    # "sensorBundle":Landroid/os/Bundle;
    .end local v3    # "sensorEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;
    .end local v5    # "sensorsNameArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;
    .end local v6    # "stateOK":Z
    :cond_4
    return v7

    .line 2730
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateSpeed(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "speedBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 1942
    const/4 v2, 0x0

    .line 1943
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1944
    const-string v3, "ARDrone3DeviceControllerPilotingStateSpeedChangedNotificationSpeedXKey"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeedX:F

    .line 1945
    const-string v3, "ARDrone3DeviceControllerPilotingStateSpeedChangedNotificationSpeedYKey"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeedY:F

    .line 1946
    const-string v3, "ARDrone3DeviceControllerPilotingStateSpeedChangedNotificationSpeedZKey"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeedZ:F

    .line 1947
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeed:D

    .line 1949
    .local v0, "oldSpeed":D
    iget v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeedX:F

    float-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeedY:F

    float-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    iget v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeedZ:F

    float-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeed:D

    .line 1950
    iget-wide v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeed:D

    cmpl-double v3, v0, v4

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1952
    .end local v0    # "oldSpeed":D
    :cond_0
    :goto_0
    return v2

    .line 1950
    .restart local v0    # "oldSpeed":D
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateTimeLapseState(Landroid/os/Bundle;)Z
    .locals 13
    .param p1, "timeLapseBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    .line 2665
    const/4 v12, 0x0

    .line 2666
    .local v12, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 2667
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotificationEnabledKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    if-eqz v1, :cond_2

    move v9, v8

    .line 2669
    .local v9, "enabled":Z
    :goto_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mTimeLapseEnabled:Z

    if-eq v1, v9, :cond_0

    .line 2670
    iput-boolean v9, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mTimeLapseEnabled:Z

    .line 2671
    const/4 v12, 0x1

    .line 2673
    :cond_0
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotificationIntervalKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2674
    .local v0, "currentValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotificationMaxIntervalKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 2675
    .local v10, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotificationMinIntervalKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    .line 2676
    .local v11, "minValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mTimeLapseInterval:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v10

    float-to-double v6, v11

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v1

    or-int/2addr v12, v1

    .line 2678
    .end local v0    # "currentValue":F
    .end local v9    # "enabled":Z
    .end local v10    # "maxValue":F
    .end local v11    # "minValue":F
    :cond_1
    return v12

    .line 2667
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private updateVideoRecordEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "videoRecordEventBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1971
    if-eqz p1, :cond_0

    .line 1972
    const-string v2, "ARDrone3DeviceControllerMediaRecordEventVideoEventChangedNotificationEventKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;->eARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;

    .line 1973
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;->getValue()I

    move-result v3

    .line 1972
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1974
    .local v1, "eventValue":I
    const-string v2, "ARDrone3DeviceControllerMediaRecordEventVideoEventChangedNotificationErrorKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;->eARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;

    .line 1975
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;->getValue()I

    move-result v3

    .line 1974
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1976
    .local v0, "errorValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;

    move-result-object v2

    .line 1977
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;

    move-result-object v3

    .line 1976
    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->onVideoEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;)V

    .line 1979
    .end local v0    # "errorValue":I
    .end local v1    # "eventValue":I
    :cond_0
    return-void
.end method

.method private updateVideoRecordState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "videoRecordBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1982
    if-eqz p1, :cond_0

    .line 1983
    const-string v2, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedV2NotificationStateKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;->getValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1984
    .local v1, "stateValue":I
    const-string v2, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedV2NotificationErrorKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;->eARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;->getValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1985
    .local v0, "errorValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;

    move-result-object v2

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->onVideoStateChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;)Z

    move-result v2

    .line 1987
    .end local v0    # "errorValue":I
    .end local v1    # "stateValue":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateVideoResolutions(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "videoResolutionsBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2554
    const/4 v1, 0x0

    .line 2555
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2556
    const-string v6, "ARDrone3DeviceControllerPictureSettingsStateVideoResolutionsChangedNotificationTypeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2557
    .local v3, "videoResolutionsValue":I
    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;

    move-result-object v2

    .line 2558
    .local v2, "videoResolutions":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoResolutions:I

    .line 2559
    .local v0, "previousMode":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2568
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoResolutions:I

    .line 2571
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoResolutions:I

    if-eq v0, v6, :cond_1

    move v1, v4

    .line 2573
    .end local v0    # "previousMode":I
    .end local v2    # "videoResolutions":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;
    .end local v3    # "videoResolutionsValue":I
    :cond_0
    :goto_1
    return v1

    .line 2561
    .restart local v0    # "previousMode":I
    .restart local v2    # "videoResolutions":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;
    .restart local v3    # "videoResolutionsValue":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoResolutions:I

    goto :goto_0

    .line 2564
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoResolutions:I

    goto :goto_0

    :cond_1
    move v1, v5

    .line 2571
    goto :goto_1

    .line 2559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateVideoStreamMode(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "videoStreamModeBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2577
    const/4 v1, 0x0

    .line 2578
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2579
    const-string v6, "ARDrone3DeviceControllerMediaStreamingStateVideoStreamModeChangedNotificationModeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2580
    .local v3, "videoStreamModeValue":I
    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;

    move-result-object v2

    .line 2581
    .local v2, "videoStreamMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoStreamMode:I

    .line 2582
    .local v0, "previousMode":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2597
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoStreamMode:I

    if-eq v0, v6, :cond_1

    move v1, v4

    .line 2599
    .end local v0    # "previousMode":I
    .end local v2    # "videoStreamMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;
    .end local v3    # "videoStreamModeValue":I
    :cond_0
    :goto_1
    return v1

    .line 2584
    .restart local v0    # "previousMode":I
    .restart local v2    # "videoStreamMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;
    .restart local v3    # "videoStreamModeValue":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoStreamMode:I

    goto :goto_0

    .line 2587
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoStreamMode:I

    goto :goto_0

    .line 2590
    :pswitch_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoStreamMode:I

    goto :goto_0

    .line 2593
    :pswitch_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoStreamMode:I

    goto :goto_0

    :cond_1
    move v1, v5

    .line 2597
    goto :goto_1

    .line 2582
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateWhiteBalanceState(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "whiteBalanceStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2440
    const/4 v1, 0x0

    .line 2441
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2442
    const-string v6, "ARDrone3DeviceControllerPictureSettingsStateAutoWhiteBalanceChangedNotificationTypeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2443
    .local v3, "whiteBalanceModeValue":I
    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    move-result-object v2

    .line 2444
    .local v2, "whiteBalanceMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWhiteBalanceState:I

    .line 2445
    .local v0, "previousState":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2467
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWhiteBalanceState:I

    .line 2470
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWhiteBalanceState:I

    if-eq v0, v6, :cond_1

    move v1, v4

    .line 2472
    .end local v0    # "previousState":I
    .end local v2    # "whiteBalanceMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    .end local v3    # "whiteBalanceModeValue":I
    :cond_0
    :goto_1
    return v1

    .line 2447
    .restart local v0    # "previousState":I
    .restart local v2    # "whiteBalanceMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    .restart local v3    # "whiteBalanceModeValue":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWhiteBalanceState:I

    goto :goto_0

    .line 2451
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWhiteBalanceState:I

    goto :goto_0

    .line 2455
    :pswitch_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWhiteBalanceState:I

    goto :goto_0

    .line 2459
    :pswitch_3
    const/4 v6, 0x3

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWhiteBalanceState:I

    goto :goto_0

    .line 2463
    :pswitch_4
    const/4 v6, 0x4

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWhiteBalanceState:I

    goto :goto_0

    :cond_1
    move v1, v5

    .line 2470
    goto :goto_1

    .line 2445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateWifiAutoCountryState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "wifiAutoCountryBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2174
    const/4 v1, 0x0

    .line 2175
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2176
    const-string v2, "DeviceControllerSettingsStateAutoCountryChangedNotificationAutomaticKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2177
    .local v0, "autoCountry":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateWifiAutoCountryMode(Z)Z

    move-result v1

    .line 2178
    if-eqz v1, :cond_0

    .line 2179
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->restartNetworkAuthorizedCountryScan()V

    .line 2182
    .end local v0    # "autoCountry":Z
    :cond_0
    return v1

    .line 2176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiCommandsAvailability(Z)V
    .locals 1
    .param p1, "availability"    # Z

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiNameState:Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateAvailability(Z)Z

    .line 1525
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateAvailability(Z)Z

    .line 1526
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateAvailability(Z)Z

    .line 1527
    return-void
.end method

.method private updateWifiCountryState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "wifiCountryBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2160
    const/4 v2, 0x0

    .line 2161
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2162
    const-string v3, "DeviceControllerSettingsStateCountryChangedNotificationCodeKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2163
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0    # "code":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/WifiCountry;->getWifiCountry(Ljava/lang/String;)Lcom/parrot/freeflight/piloting/model/WifiCountry;

    move-result-object v1

    .line 2165
    .local v1, "currentCountry":Lcom/parrot/freeflight/piloting/model/WifiCountry;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateWifiCountryId(Lcom/parrot/freeflight/piloting/model/WifiCountry;)Z

    move-result v2

    .line 2166
    if-eqz v2, :cond_0

    .line 2167
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->restartNetworkAuthorizedCountryScan()V

    .line 2170
    .end local v1    # "currentCountry":Lcom/parrot/freeflight/piloting/model/WifiCountry;
    :cond_0
    return v2

    .line 2163
    .restart local v0    # "code":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private updateWifiOutdoorState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "outdoorBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2186
    const/4 v2, 0x0

    .line 2187
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2188
    const-string v3, "DeviceControllerWifiSettingsStateOutdoorSettingsChangedNotificationOutdoorKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    .line 2189
    .local v1, "outdoorState":B
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2190
    .local v0, "outdoorMode":Z
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateOutdoorMode(Z)Z

    move-result v2

    .line 2191
    if-eqz v2, :cond_0

    .line 2192
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->filterAuthorizedChannels()V

    .line 2193
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAuthChannelFinalList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateAuthorizedWifiBandList(Ljava/util/List;)Z

    .line 2196
    .end local v0    # "outdoorMode":Z
    .end local v1    # "outdoorState":B
    :cond_0
    return v2

    .line 2189
    .restart local v1    # "outdoorState":B
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiScanListState(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "wifiScanListBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2237
    if-eqz p1, :cond_2

    .line 2238
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2239
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2240
    .local v6, "ssid":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2241
    .local v3, "networkData":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 2242
    const-string v7, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationSsidKey"

    .line 2243
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2244
    const-string v7, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationBandKey"

    .line 2245
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2246
    .local v0, "band":I
    const-string v7, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationRssiKey"

    .line 2247
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v5

    .line 2248
    .local v5, "rssi":S
    const-string v7, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationChannelKey"

    .line 2249
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    .line 2251
    .local v2, "channelByte":B
    and-int/lit16 v1, v2, 0xff

    .line 2253
    .local v1, "channel":I
    if-eqz v1, :cond_0

    .line 2254
    new-instance v4, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;

    int-to-float v9, v5

    if-eqz v6, :cond_1

    move-object v7, v6

    :goto_1
    invoke-direct {v4, v0, v1, v9, v7}, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;-><init>(IIFLjava/lang/String;)V

    .line 2255
    .local v4, "networkStatus":Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2254
    .end local v4    # "networkStatus":Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;
    :cond_1
    const-string v7, ""

    goto :goto_1

    .line 2260
    .end local v0    # "band":I
    .end local v1    # "channel":I
    .end local v2    # "channelByte":B
    .end local v3    # "networkData":Landroid/os/Bundle;
    .end local v5    # "rssi":S
    .end local v6    # "ssid":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    return v7
.end method

.method private updateWifiSecurityState(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "wifiSecurityBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2129
    const/4 v2, 0x0

    .line 2130
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 2131
    const-string v4, "ARDrone3DeviceControllerNetworkSettingsStateWifiSecurityNotificationTypeKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;

    move-result-object v3

    .line 2133
    .local v3, "wifiSecurity":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2143
    const/4 v1, -0x1

    .line 2146
    .local v1, "security":I
    :goto_0
    const/4 v0, 0x0

    .line 2147
    .local v0, "passphrase":Ljava/lang/String;
    const-string v4, "ARDrone3DeviceControllerNetworkSettingsStateWifiSecurityNotificationKeyTypeKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_KEYTYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_KEYTYPE_PLAIN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_KEYTYPE_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_KEYTYPE_ENUM;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 2148
    const-string v4, "ARDrone3DeviceControllerNetworkSettingsStateWifiSecurityNotificationKeyKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2150
    :cond_0
    if-nez v0, :cond_1

    .line 2151
    const-string v0, ""

    .line 2153
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiNameState:Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateWifiSecurity(I)Z

    move-result v2

    .line 2154
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiNameState:Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateWpa2Passphrase(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 2156
    .end local v0    # "passphrase":Ljava/lang/String;
    .end local v1    # "security":I
    .end local v3    # "wifiSecurity":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;
    :cond_2
    return v2

    .line 2135
    .restart local v3    # "wifiSecurity":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;
    :pswitch_0
    const/4 v1, 0x0

    .line 2136
    .restart local v1    # "security":I
    goto :goto_0

    .line 2139
    .end local v1    # "security":I
    :pswitch_1
    const/4 v1, 0x1

    .line 2140
    .restart local v1    # "security":I
    goto :goto_0

    .line 2133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateWifiSettingsState(Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "wifiSettingsBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2075
    const/4 v2, 0x0

    .line 2076
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2077
    const-string v7, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationBandKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    move-result-object v3

    .line 2080
    .local v3, "wifiBand":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    sget-object v7, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 2090
    const/4 v0, 0x2

    .line 2093
    .local v0, "band":I
    :goto_0
    const-string v7, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationTypeKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;

    move-result-object v4

    .line 2096
    .local v4, "wifiBandType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;
    sget-object v7, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM:[I

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 2114
    const/4 v1, -0x1

    .line 2117
    .local v1, "bandType":I
    :goto_1
    const-string v7, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationChannelKey"

    .line 2118
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v6

    .line 2120
    .local v6, "wifiChannelByte":B
    and-int/lit16 v5, v6, 0xff

    .line 2121
    .local v5, "wifiChannel":I
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v7, v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiBand(I)Z

    move-result v2

    .line 2122
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v7, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiType(I)Z

    move-result v7

    or-int/2addr v2, v7

    .line 2123
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v7, v5}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiChannel(I)Z

    move-result v7

    or-int/2addr v2, v7

    .line 2125
    .end local v0    # "band":I
    .end local v1    # "bandType":I
    .end local v3    # "wifiBand":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .end local v4    # "wifiBandType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;
    .end local v5    # "wifiChannel":I
    .end local v6    # "wifiChannelByte":B
    :cond_0
    return v2

    .line 2082
    .restart local v3    # "wifiBand":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    :pswitch_0
    const/4 v0, 0x0

    .line 2083
    .restart local v0    # "band":I
    goto :goto_0

    .line 2086
    .end local v0    # "band":I
    :pswitch_1
    const/4 v0, 0x1

    .line 2087
    .restart local v0    # "band":I
    goto :goto_0

    .line 2098
    .restart local v4    # "wifiBandType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;
    :pswitch_2
    const/4 v1, 0x0

    .line 2099
    .restart local v1    # "bandType":I
    goto :goto_1

    .line 2102
    .end local v1    # "bandType":I
    :pswitch_3
    const/4 v1, 0x1

    .line 2103
    .restart local v1    # "bandType":I
    goto :goto_1

    .line 2106
    .end local v1    # "bandType":I
    :pswitch_4
    const/4 v1, 0x2

    .line 2107
    .restart local v1    # "bandType":I
    goto :goto_1

    .line 2110
    .end local v1    # "bandType":I
    :pswitch_5
    const/4 v1, 0x3

    .line 2111
    .restart local v1    # "bandType":I
    goto :goto_1

    .line 2080
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2096
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public cancelLanding()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedTakeOff()V

    .line 352
    :cond_0
    return-void
.end method

.method public cancelTakeOff()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedCancelTakeOff()V

    .line 337
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->close()V

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 139
    return-void
.end method

.method public connectionProtocolEnded()Z
    .locals 1

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->connectionProtocolEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public emergencyStop()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedEmergency()V

    .line 359
    :cond_0
    return-void
.end method

.method public getCirclingAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getCirclingDirectionState()Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingDirectionState:Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    return-object v0
.end method

.method public getCirclingRadiusState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingRadiusState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getCpuId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCpuId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCpuId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2896
    const-string v0, "P7000000000000000000"

    .line 2898
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCpuId:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getDefaultVideoResolutions()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public getFlightPlanReturnHomeState()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getLandingState()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLandingState:I

    return v0
.end method

.method public getMaxAltitudePreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxDistancePreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->MAX_DISTANCE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMaxPitchPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->MAX_PITCH_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMinAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMinAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getMotorsState()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorsState:I

    return v0
.end method

.method public getPitchModeState()Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPitchModeState:Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    return-object v0
.end method

.method public getRcControllerModel()Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRcControllerModel:Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    return-object v0
.end method

.method public getReturnHomeDelayPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 162
    sget-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->RETURN_HOME_DELAY_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public getWantedCameraTilt()F
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWantedCameraTilt:F

    return v0
.end method

.method public isCirclingRadiusCmdSupported()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mIsCirclingRadiusCmdSupported:Z

    return v0
.end method

.method public isFollowMeSupported()Z
    .locals 1

    .prologue
    .line 1105
    const/4 v0, 0x0

    return v0
.end method

.method public isRollStabilizationSupported()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public land()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedLanding()V

    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyAppCommandListener(I)V

    .line 345
    :cond_0
    return-void
.end method

.method public listenEvents(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listen"    # Z

    .prologue
    .line 1170
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 1172
    .local v1, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    if-eqz p2, :cond_0

    .line 1173
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1174
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeedBridleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "DeviceControllerFlightPlanEventSpeedBridleEventNotification"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1175
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "ARDrone3DeviceControllerMediaRecordEventVideoEventChangedNotification"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "ARDrone3DeviceControllerMediaRecordEventPictureEventChangedNotification"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1177
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMediaRecordEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1183
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 1179
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1180
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSpeedBridleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1181
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMediaRecordEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public loadFromStore()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 173
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->loadFromStore()V

    .line 174
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 175
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "circling_direction_state"

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingDirectionState:Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->getCirclingDirection()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, "direction":I
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingDirectionState:Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->update(I)Z

    .line 177
    const-string/jumbo v3, "pitch_mode_state"

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPitchModeState:Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->getPitchMode()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 178
    .local v1, "pitchMode":I
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPitchModeState:Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->update(I)Z

    .line 180
    const-string v3, "motor_state"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorsState:I

    .line 181
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v4, "min_altitude_state"

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMinAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 182
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v4, "circling_altitude_state"

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 183
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v4, "circling_radius_state"

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingRadiusState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 184
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v4, "calibration_state"

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadPitotCalibrationState(Ljava/lang/String;Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;)V

    .line 185
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v4, "flighplan_return_home_state"

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadToggleState(Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 186
    const-string v3, "cpu_id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCpuId:Ljava/lang/String;

    .line 188
    const-string v3, "landing_state"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLandingState:I

    .line 189
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mOfflineEngine:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->reset()V

    .line 190
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mHasBeenLoadedFromStore:Z

    .line 191
    return-void
.end method

.method public panCameraAt(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 683
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userChangedCameraPan(F)V

    .line 686
    :cond_0
    return-void
.end method

.method public pauseMavlink()V
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestMavlinkPause()V

    .line 1065
    :cond_0
    return-void
.end method

.method public pitchAt(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 480
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->pitchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 482
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLastPitch:F

    .line 483
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userPitchChanged(F)V

    .line 485
    :cond_0
    monitor-exit v1

    .line 486
    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playMavlink(Ljava/lang/String;)V
    .locals 2
    .param p1, "mavlinkFilePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;->ARCOMMANDS_COMMON_MAVLINK_START_TYPE_FLIGHTPLAN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;

    invoke-virtual {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestMavlinkPlay(Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;)V

    .line 1058
    :cond_0
    return-void
.end method

.method public reboot()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestReboot()V

    .line 929
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->disconnectDrone()V

    .line 931
    :cond_0
    return-void
.end method

.method public requestCommandsActivationChanged(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 654
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userCommandsActivationChanged(Z)V

    .line 657
    :cond_0
    return-void
.end method

.method public requestFollowMeReframing(II)V
    .locals 0
    .param p1, "centerXPercent"    # I
    .param p2, "centerYPercent"    # I

    .prologue
    .line 220
    return-void
.end method

.method public resetCamera()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDefaultCameraPan:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userChangedCameraPan(F)V

    .line 663
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDefaultCameraTilt:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userChangedCameraTilt(F)V

    .line 665
    :cond_0
    return-void
.end method

.method public restartNetworkAuthorizedCountryScan()V
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->cleanNetworkStateWifiAuthChannelListChangedNotificationDictionary()V

    .line 1018
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsWifiAuthChannel()V

    .line 1020
    :cond_0
    return-void
.end method

.method public restartNetworkScan()V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->setScanningState(Z)V

    .line 1009
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->cleanNetworkStateWifiScanListChangedNotificationDictionary()V

    .line 1010
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ALL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsNetworkWifiScan(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;)V

    .line 1012
    :cond_0
    return-void
.end method

.method public rollAt(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 490
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->rollLock:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 492
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLastRoll:F

    .line 493
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRollChanged(F)V

    .line 495
    :cond_0
    monitor-exit v1

    .line 496
    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveToStore()V
    .locals 5

    .prologue
    .line 195
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mHasBeenLoadedFromStore:Z

    if-nez v2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->saveToStore()V

    .line 197
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/LocalStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "circling_direction_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getCirclingDirectionState()Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->getCirclingDirection()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 200
    const-string/jumbo v2, "pitch_mode_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getPitchModeState()Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->getPitchMode()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 201
    const-string v2, "motor_state"

    iget v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMotorsState:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "min_altitude_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getMinAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 203
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "circling_altitude_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getCirclingAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 204
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "circling_radius_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getCirclingRadiusState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 205
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "flighplan_return_home_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getFlightPlanReturnHomeState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveToggleState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 206
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "calibration_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getCalibrationState()Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->savePitotCalibrationState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;)V

    .line 207
    const-string v2, "cpu_id"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCpuId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    const-string v2, "landing_state"

    iget v3, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLandingState:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public setAntiFlickeringMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 752
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 768
    :goto_0
    if-eqz v0, :cond_0

    .line 769
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedAntiflickeringMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;)V

    .line 772
    .end local v0    # "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAntiFlickeringMode:I

    .line 773
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 774
    return-void

    .line 756
    .restart local v0    # "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_AUTO:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;

    .line 757
    goto :goto_0

    .line 759
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_FIXEDFIFTYHERTZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;

    .line 760
    goto :goto_0

    .line 762
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_FIXEDSIXTYHERTZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;

    .line 763
    goto :goto_0

    .line 754
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoRecord(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 778
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsVideoAutorecordSelection(ZB)V

    .line 781
    :cond_0
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mAutoRecordEnabled:Z

    .line 782
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 783
    return-void
.end method

.method public setCameraStabilizationMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 1082
    packed-switch p1, :pswitch_data_0

    .line 1100
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 1101
    return-void

    .line 1084
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_NONE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsVideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V

    goto :goto_0

    .line 1087
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_PITCH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsVideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V

    goto :goto_0

    .line 1090
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ROLL_PITCH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsVideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V

    goto :goto_0

    .line 1093
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ROLL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsVideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V

    goto :goto_0

    .line 1082
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public setCirclingAltitude(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 576
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    double-to-int v1, p1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedCirclingSettingsAltitude(S)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 580
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 581
    return-void
.end method

.method public setCirclingDirection(I)V
    .locals 2
    .param p1, "circlingDirectionState"    # I

    .prologue
    .line 584
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "circlingDirectionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 598
    :goto_0
    if-eqz v0, :cond_0

    .line 599
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedCirclingSettingsDirection(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_ENUM;)V

    .line 602
    .end local v0    # "circlingDirectionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_ENUM;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingDirectionState:Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/piloting/ui/util/CirclingDirectionState;->update(I)Z

    .line 603
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 604
    return-void

    .line 589
    .restart local v0    # "circlingDirectionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_CW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_ENUM;

    .line 590
    goto :goto_0

    .line 592
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_CCW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_ENUM;

    .line 593
    goto :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCirclingRadius(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 568
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    double-to-int v1, p1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedCirclingSettingsRadius(S)V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mCirclingRadiusState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 572
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 573
    return-void
.end method

.method public setFlightPlanReturnHome(Z)V
    .locals 2
    .param p1, "activate"    # Z

    .prologue
    .line 626
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedFlightPlanReturnHomeOnDisconnect(Z)V

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    .line 630
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 631
    return-void
.end method

.method public setFrameRate(I)V
    .locals 2
    .param p1, "frameRate"    # I

    .prologue
    .line 830
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 831
    const/4 v0, 0x0

    .line 832
    .local v0, "frameRateValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 846
    :goto_0
    if-eqz v0, :cond_0

    .line 847
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsVideoFramerate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;)V

    .line 850
    .end local v0    # "frameRateValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 851
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFrameRate:I

    .line 852
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 854
    :cond_1
    return-void

    .line 834
    .restart local v0    # "frameRateValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_24_FPS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;

    .line 835
    goto :goto_0

    .line 837
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_25_FPS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;

    .line 838
    goto :goto_0

    .line 840
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_30_FPS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;

    .line 841
    goto :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setImageExposition(F)V
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 706
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsExposition(F)V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mExpositionState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 710
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 711
    return-void
.end method

.method public setImageSaturation(F)V
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 697
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsSaturation(F)V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mSaturationState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 701
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 702
    return-void
.end method

.method public setMaxAltitude(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 552
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPilotingSettingsMaxAltitude(F)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 556
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 557
    return-void
.end method

.method public setMaxDistance(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 635
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPilotingSettingsMaxDistance(F)V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMaxDistanceState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 639
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 640
    return-void
.end method

.method public setMaxPitch(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 543
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPilotingSettingsMaxTilt(F)V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMaxPitchState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 547
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 548
    return-void
.end method

.method public setMinAltitude(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 560
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedAltitudeSettingsMinAltitude(F)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mMinAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 564
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 565
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 935
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsProductName(Ljava/lang/String;)V

    .line 938
    :cond_0
    return-void
.end method

.method public setOutdoorMode(Z)V
    .locals 1
    .param p1, "isOutdoor"    # Z

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsWifiOutdoor(Z)V

    .line 1048
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSpeedSettingsOutdoor(Z)V

    .line 1050
    :cond_0
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 858
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 859
    const/4 v0, 0x0

    .line 860
    .local v0, "pictureFormatValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 877
    :goto_0
    if-eqz v0, :cond_0

    .line 878
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsPictureFormat(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;)V

    .line 881
    .end local v0    # "pictureFormatValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPictureFormat:I

    .line 882
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 883
    return-void

    .line 862
    .restart local v0    # "pictureFormatValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_RAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    .line 863
    goto :goto_0

    .line 865
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_JPEG:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    .line 866
    goto :goto_0

    .line 868
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_SNAPSHOT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    .line 869
    goto :goto_0

    .line 871
    :pswitch_3
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_JPEG_FISHEYE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    .line 872
    goto :goto_0

    .line 860
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPitchMode(I)V
    .locals 2
    .param p1, "pitchMode"    # I

    .prologue
    .line 519
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "pitchModeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 532
    :goto_0
    if-eqz v0, :cond_0

    .line 533
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedAltitudeSettingsPitchMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;)V

    .line 536
    .end local v0    # "pitchModeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mPitchModeState:Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->update(I)Z

    .line 537
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 538
    return-void

    .line 523
    .restart local v0    # "pitchModeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_NORMAL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;

    .line 524
    goto :goto_0

    .line 526
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_INVERTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;

    .line 527
    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRecordingMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 805
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 818
    :goto_0
    if-eqz v0, :cond_0

    .line 819
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsVideoRecordingMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;)V

    .line 822
    .end local v0    # "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 823
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mRecordingMode:I

    .line 824
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 826
    :cond_1
    return-void

    .line 809
    .restart local v0    # "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_QUALITY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;

    .line 810
    goto :goto_0

    .line 812
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_TIME:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;

    .line 813
    goto :goto_0

    .line 807
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setReturnHomeDelay(S)V
    .locals 4
    .param p1, "delay"    # S

    .prologue
    .line 429
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->gpsSettingsSendReturnHomeDelay(S)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeDelay:Lcom/parrot/freeflight/util/DoubleBoundedState;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 433
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 434
    return-void
.end method

.method public setReturnHomeType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 406
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "returnHomeType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 419
    :goto_0
    if-eqz v0, :cond_0

    .line 420
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->gpsSettingsSendHomeType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;)V

    .line 423
    .end local v0    # "returnHomeType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mReturnHomeType:I

    .line 424
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 425
    return-void

    .line 410
    .restart local v0    # "returnHomeType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_PILOT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;

    .line 411
    goto :goto_0

    .line 413
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_TAKEOFF:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;

    .line 414
    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTimeLapse(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 787
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mTimeLapseInterval:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsTimelapsePictureFormat(ZF)V

    .line 790
    :cond_0
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mTimeLapseEnabled:Z

    .line 791
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 792
    return-void
.end method

.method public setTimeLapseInterval(F)V
    .locals 4
    .param p1, "interval"    # F

    .prologue
    .line 796
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mTimeLapseEnabled:Z

    invoke-virtual {v0, v1, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsTimelapsePictureFormat(ZF)V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mTimeLapseInterval:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 800
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 801
    return-void
.end method

.method public setVideoResolutions(I)V
    .locals 2
    .param p1, "videoResolutions"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 455
    packed-switch p1, :pswitch_data_0

    .line 467
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mVideoResolutions:I

    .line 469
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 471
    :cond_1
    return-void

    .line 457
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_REC1080_STREAM480:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsVideoResolutions(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;)V

    goto :goto_0

    .line 460
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_REC720_STREAM720:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsVideoResolutions(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;)V

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVideoStreamMode(I)V
    .locals 2
    .param p1, "videoStreamMode"    # I

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 2605
    packed-switch p1, :pswitch_data_0

    .line 2620
    :cond_0
    :goto_0
    return-void

    .line 2607
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_LOW_LATENCY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedMediaStreamingVideoStreamMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;)V

    goto :goto_0

    .line 2610
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_HIGH_RELIABILITY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedMediaStreamingVideoStreamMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;)V

    goto :goto_0

    .line 2613
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_HIGH_RELIABILITY_LOW_FRAMERATE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedMediaStreamingVideoStreamMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;)V

    goto :goto_0

    .line 2605
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setWhiteBalanceState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 715
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 716
    const/4 v0, 0x0

    .line 717
    .local v0, "whiteBalanceSelection":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 742
    :goto_0
    if-eqz v0, :cond_0

    .line 743
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPictureSettingsWhiteBalance(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;)V

    .line 746
    .end local v0    # "whiteBalanceSelection":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWhiteBalanceState:I

    .line 747
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 748
    return-void

    .line 719
    .restart local v0    # "whiteBalanceSelection":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_AUTO:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .line 720
    goto :goto_0

    .line 723
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_TUNGSTEN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .line 724
    goto :goto_0

    .line 727
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_DAYLIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .line 728
    goto :goto_0

    .line 731
    :pswitch_3
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_CLOUDY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .line 732
    goto :goto_0

    .line 735
    :pswitch_4
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_COOL_WHITE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .line 736
    goto :goto_0

    .line 717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setWifiBandType(I)V
    .locals 6
    .param p1, "bandAuth"    # I

    .prologue
    const/4 v5, 0x0

    .line 970
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v2, :cond_0

    .line 971
    packed-switch p1, :pswitch_data_0

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 973
    :pswitch_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_AUTO:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_2_4GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    invoke-virtual {v2, v3, v4, v5}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V

    goto :goto_0

    .line 979
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_AUTO:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_5GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    invoke-virtual {v2, v3, v4, v5}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V

    goto :goto_0

    .line 985
    :pswitch_2
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_AUTO:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ALL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    invoke-virtual {v2, v3, v4, v5}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V

    goto :goto_0

    .line 991
    :pswitch_3
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiBand()I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    move-result-object v0

    .line 992
    .local v0, "bandEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->eARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    if-eq v0, v2, :cond_0

    .line 993
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiChannel()I

    move-result v1

    .line 994
    .local v1, "channel":I
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_MANUAL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;

    int-to-byte v4, v1

    invoke-virtual {v2, v3, v0, v4}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V

    goto :goto_0

    .line 971
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setWifiChannel(II)V
    .locals 4
    .param p1, "band"    # I
    .param p2, "channel"    # I

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, "bandEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 1037
    :goto_0
    if-eqz v0, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_MANUAL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;

    int-to-byte v3, p2

    invoke-virtual {v1, v2, v0, v3}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V

    .line 1042
    .end local v0    # "bandEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    :cond_0
    return-void

    .line 1028
    .restart local v0    # "bandEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_2_4GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    .line 1029
    goto :goto_0

    .line 1031
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_5GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    .line 1032
    goto :goto_0

    .line 1026
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setWifiCountry(Lcom/parrot/freeflight/piloting/model/WifiCountry;)V
    .locals 2
    .param p1, "country"    # Lcom/parrot/freeflight/piloting/model/WifiCountry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 958
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 959
    sget-object v0, Lcom/parrot/freeflight/piloting/model/WifiCountry;->WIFI_COUNTRY_AUTO:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    if-eq p1, v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsWifiAutoCountry(Z)V

    .line 961
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/WifiCountry;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsWifiCountry(Ljava/lang/String;)V

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsWifiAutoCountry(Z)V

    goto :goto_0
.end method

.method public setWifiSecurity(ILjava/lang/String;)V
    .locals 3
    .param p1, "security"    # I
    .param p2, "wpaPassphrase"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 942
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 943
    packed-switch p1, :pswitch_data_0

    .line 950
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_OPEN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsWifiSecurity(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;Ljava/lang/String;)V

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 945
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_WPA2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;

    invoke-virtual {v0, v1, p2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedSettingsWifiSecurity(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;Ljava/lang/String;)V

    goto :goto_0

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public shouldBlockBeyondMaxDistance(Z)V
    .locals 2
    .param p1, "block"    # Z

    .prologue
    const/4 v1, 0x1

    .line 644
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPilotingSettingsNoFlyOverMaxDistance(Z)V

    .line 647
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mFlightDistanceRestrictionStatus:I

    .line 648
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDistanceRestrictionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    .line 649
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 650
    return-void

    :cond_1
    move v0, v1

    .line 647
    goto :goto_0
.end method

.method public startAlertSound()V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedStartAlertSound()V

    .line 904
    :cond_0
    return-void
.end method

.method public startCircling(I)V
    .locals 2
    .param p1, "circlingDirection"    # I

    .prologue
    .line 607
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 609
    packed-switch p1, :pswitch_data_0

    .line 618
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;->ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_DEFAULT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;

    .line 621
    .local v0, "circlingDirectionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedPilotingCircling(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;)V

    .line 623
    .end local v0    # "circlingDirectionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;
    :cond_0
    return-void

    .line 611
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;->ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_CW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;

    .line 612
    .restart local v0    # "circlingDirectionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;
    goto :goto_0

    .line 614
    .end local v0    # "circlingDirectionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;->ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_CCW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;

    .line 615
    .restart local v0    # "circlingDirectionEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;
    goto :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startMagnetoCalibration()V
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestCalibration(B)V

    .line 890
    :cond_0
    return-void
.end method

.method public startMediaRecording()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestRecordVideoV2Start()V

    .line 366
    :cond_0
    return-void
.end method

.method public startPitotCalibration()V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestPitotCalibration(B)V

    .line 917
    :cond_0
    return-void
.end method

.method public startReturnHome()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedReturnHome(Z)V

    .line 387
    :cond_0
    return-void
.end method

.method public startVideoStreaming()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 438
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->enableVideoStreaming(Z)V

    .line 442
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAlertSound()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedStopAlertSound()V

    .line 911
    :cond_0
    return-void
.end method

.method public stopMagnetoCalibration()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestCalibration(B)V

    .line 897
    :cond_0
    return-void
.end method

.method public stopMavlink()V
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestMavlinkStop()V

    .line 1072
    :cond_0
    return-void
.end method

.method public stopMediaRecording()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestRecordVideoV2Stop()V

    .line 373
    :cond_0
    return-void
.end method

.method public stopPitotCalibration()V
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestPitotCalibration(B)V

    .line 923
    :cond_0
    return-void
.end method

.method public stopReturnHome()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedReturnHome(Z)V

    .line 394
    :cond_0
    return-void
.end method

.method public stopVideoStreaming()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->enableVideoStreaming(Z)V

    .line 450
    :cond_0
    return-void
.end method

.method public takeOff()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedEnterTakeOff()V

    .line 331
    :cond_0
    return-void
.end method

.method public takePicture()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestRecordPictureV2()V

    .line 380
    :cond_0
    return-void
.end method

.method public throttleAt(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 510
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->gazLock:Ljava/lang/Object;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 512
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLastGaz:F

    .line 513
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userGazChanged(F)V

    .line 515
    :cond_0
    monitor-exit v1

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tiltCameraAt(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 675
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mWantedCameraTilt:F

    .line 676
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userChangedCameraTilt(F)V

    .line 679
    :cond_0
    return-void
.end method

.method public userChangedUserBaroData(FJ)V
    .locals 0
    .param p1, "pressure"    # F
    .param p2, "timestamp"    # J

    .prologue
    .line 1112
    return-void
.end method

.method public userChangedUserGPSData()V
    .locals 0

    .prologue
    .line 1109
    return-void
.end method

.method public validateFlatTrim()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestedFlatTrim()V

    .line 693
    :cond_0
    return-void
.end method

.method public yawTo(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 500
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->yawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 502
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mLastYaw:F

    .line 503
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userYawChanged(F)V

    .line 505
    :cond_0
    monitor-exit v1

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
