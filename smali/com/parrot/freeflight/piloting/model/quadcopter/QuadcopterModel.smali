.class public abstract Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
.super Lcom/parrot/freeflight/core/model/DroneModel;
.source "QuadcopterModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$TargetImageDetection;,
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$MoveToOrientationMode;,
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$Motor;,
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$FlipDirection;,
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$MotionState;,
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$PilotedPoiStatus;,
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$MoveToStatus;
    }
.end annotation


# static fields
.field public static final FLIP_BACK:I = 0x1

.field public static final FLIP_FRONT:I = 0x0

.field public static final FLIP_LEFT:I = 0x2

.field public static final FLIP_NO:I = 0x4

.field public static final FLIP_RIGHT:I = 0x3

.field private static final KEY_BANKED_TURN_STATE:Ljava/lang/String; = "banked_turn_state"

.field private static final KEY_CPU_ID:Ljava/lang/String; = "cpu_id"

.field private static final KEY_FLIGHTPLAN_RETURN_HOME_STATE:Ljava/lang/String; = "flighplan_return_home_state"

.field private static final KEY_FOLLOW_ME_SUPPORTED:Ljava/lang/String; = "follow_me_supported"

.field private static final KEY_HULL_PROTECTION_STATE:Ljava/lang/String; = "hull_protection_state"

.field private static final KEY_MAX_PITCH_SPEED_STATE:Ljava/lang/String; = "max_pitch_speed_state"

.field private static final KEY_MAX_ROTATION_SPEED_STATE:Ljava/lang/String; = "max_rotation_speed_state"

.field private static final KEY_MAX_VERTICAL_SPEED_STATE:Ljava/lang/String; = "max_vertical_speed_state"

.field private static final KEY_MOTION_DETECTION_STATE:Ljava/lang/String; = "motion_detection_state"

.field private static final KEY_MOTORS_STATE:Ljava/lang/String; = "motors_state"

.field private static final KEY_ROLL_STABILIZATION_STATE:Ljava/lang/String; = "roll_stabilization_state"

.field public static final LOWER_LEFT_MOTOR:I = 0x3

.field public static final LOWER_RIGHT_MOTOR:I = 0x2

.field public static final MOTION_MOVING:I = 0x1

.field public static final MOTION_STEADY:I = 0x0

.field public static final MOTION_UNKNOWN:I = -0x1

.field public static final MOVE_TO_ORIENTATION_MODE_HEADING_DURING:I = 0x3

.field public static final MOVE_TO_ORIENTATION_MODE_HEADING_START:I = 0x2

.field public static final MOVE_TO_ORIENTATION_MODE_NONE:I = 0x0

.field public static final MOVE_TO_ORIENTATION_MODE_TO_TARGET:I = 0x1

.field public static final MOVE_TO_STATUS_CANCELED:I = 0x2

.field public static final MOVE_TO_STATUS_DONE:I = 0x1

.field public static final MOVE_TO_STATUS_ERROR:I = 0x3

.field public static final MOVE_TO_STATUS_RUNNING:I = 0x0

.field public static final MOVE_TO_STATUS_UNKNOWN:I = -0x1

.field public static final NONE_MOTOR:I = -0x1

.field public static final PILOTED_POI_STATUS_AVAILABLE:I = 0x1

.field public static final PILOTED_POI_STATUS_PENDING:I = 0x2

.field public static final PILOTED_POI_STATUS_RUNNING:I = 0x3

.field public static final PILOTED_POI_STATUS_UNAVAILABLE:I = 0x0

.field public static final PILOTED_POI_STATUS_UNKNOWN:I = -0x1

.field public static final TARGET_IMAGE_DETECTION_LOST:I = 0x2

.field public static final TARGET_IMAGE_DETECTION_NONE:I = 0x0

.field public static final TARGET_IMAGE_DETECTION_OK:I = 0x1

.field public static final TARGET_IMAGE_DETECTION_UNKNOWN:I = -0x1

.field public static final UPPER_LEFT_MOTOR:I = 0x0

.field public static final UPPER_RIGHT_MOTOR:I = 0x1


# instance fields
.field private final gazLock:Ljava/lang/Object;

.field private mAnimationsAvailability:I

.field private mAreAnimationsAvailable:Z

.field private final mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

.field private mCpuId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentAnimation:I

.field private mCurrentAnimationProgress:I

.field private mCurrentFlipDirection:I

.field private mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeContainer:Lcom/parrot/freeflight/followme/FollowMeContainer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFollowMeManagerListener:Lcom/parrot/freeflight/core/FollowMeManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFollowMeSupported:Z

.field private final mGpsLocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasBeenLoadedFromStore:Z

.field private final mHullProtectionState:Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMaxPitchSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaRecordEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mMotionDetectionState:Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMotionState:I

.field private final mMotorsState:[I

.field private mMoveToLocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

.field private mMoveToStatus:I

.field private final mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mOfflineEngine:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

.field private mPilotedPOILocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

.field private mPilotedPOIStatus:I

.field private final mRollStabilizationState:Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSpeedBridleBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetImageDetectionState:I

.field private mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUpdateInternal:Z

.field private mWantedCameraTilt:F

.field private final pitchLock:Ljava/lang/Object;

.field private final rollLock:Ljava/lang/Object;

.field private final yawLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)V
    .locals 4
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
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "barometer"    # Lcom/parrot/freeflight/location/Barometer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 206
    invoke-direct/range {p0 .. p5}, Lcom/parrot/freeflight/core/model/DroneModel;-><init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)V

    .line 122
    new-instance v0, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsLocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 137
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMoveToStatus:I

    .line 154
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOIStatus:I

    .line 161
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAnimationsAvailability:I

    .line 164
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCurrentAnimation:I

    .line 185
    new-instance v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$1;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeManagerListener:Lcom/parrot/freeflight/core/FollowMeManager$Listener;

    .line 387
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionState:I

    .line 428
    iput v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCurrentFlipDirection:I

    .line 452
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotorsState:[I

    .line 644
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->rollLock:Ljava/lang/Object;

    .line 645
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->yawLock:Ljava/lang/Object;

    .line 646
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->pitchLock:Ljava/lang/Object;

    .line 647
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->gazLock:Ljava/lang/Object;

    .line 1396
    new-instance v0, Lcom/parrot/freeflight/followme/FollowMeContainer;

    invoke-direct {v0}, Lcom/parrot/freeflight/followme/FollowMeContainer;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeContainer:Lcom/parrot/freeflight/followme/FollowMeContainer;

    .line 1462
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTargetImageDetectionState:I

    .line 1504
    new-instance v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$2;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    .line 1562
    new-instance v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$3;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1574
    new-instance v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$4;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeedBridleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1583
    new-instance v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$5;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMediaRecordEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxPitchSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxPitchSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 209
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxRotationSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 210
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxVerticalSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 211
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getBankedTurnedPreset()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/ToggleState;->copyOf(Lcom/parrot/freeflight/util/ToggleState;)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    .line 212
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getFlightPlanReturnHomePreset()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/ToggleState;->copyOf(Lcom/parrot/freeflight/util/ToggleState;)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    .line 213
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getRollStabilizationPreset()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/ToggleState;->copyOf(Lcom/parrot/freeflight/util/ToggleState;)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRollStabilizationState:Lcom/parrot/freeflight/util/ToggleState;

    .line 214
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMotionDetectionPreset()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/ToggleState;->copyOf(Lcom/parrot/freeflight/util/ToggleState;)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionDetectionState:Lcom/parrot/freeflight/util/ToggleState;

    .line 215
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getHullProtectionPreset()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/ToggleState;->copyOf(Lcom/parrot/freeflight/util/ToggleState;)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mHullProtectionState:Lcom/parrot/freeflight/util/ToggleState;

    .line 216
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getRecordingModePreset()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRecordingMode:I

    .line 218
    new-instance v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mOfflineEngine:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    .line 219
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->loadFromStore()V

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 221
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getFollowMeManager()Lcom/parrot/freeflight/core/FollowMeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    .line 222
    return-void

    .line 452
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;)Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/piloting/alert/AlertContainer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mOfflineEngine:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->update()V

    return-void
.end method

.method static synthetic access$1302(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mStoreEmpty:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->sendControllerGpsPosition()V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->onNotificationDictionaryChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeedBridleListener:Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeedBridleListener:Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updatePhotoRecordEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateVideoRecordEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateConnectionState()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mStoreEmpty:Z

    return v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mUpdateInternal:Z

    return p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    return-object v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    .param p1, "x1"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    return-object p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->resetFlagsForFollowMe()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/piloting/alert/AlertContainer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

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
    .line 1706
    const-string v1, "ARDrone3DeviceControllerPilotingStateFlyingStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlyingState(Landroid/os/Bundle;)Z

    move-result v0

    .line 1708
    .local v0, "updated":Z
    const-string v1, "ARDrone3DeviceControllerPilotingStateMoveToChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMoveToChanged(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1709
    const-string v1, "ARDrone3DeviceControllerPilotingStatePilotedPOINotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updatePOIChanged(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1711
    const-string v1, "DeviceControllerSettingsStateProductNameChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateProductName(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1712
    const-string v1, "ARDrone3DeviceControllerPilotingStateNavigateHomeStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateReturnHomeStatus(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1713
    const-string v1, "ARDrone3DeviceControllerGPSStateHomeTypeChosenChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateReturnHomeTypeDroneState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1714
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mUpdateInternal:Z

    if-eqz v1, :cond_0

    .line 1715
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeTypeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateReturnHomeTypeStatus(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1716
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateReturnHomeDelayChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateReturnHomeDelay(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1718
    :cond_0
    const-string v1, "DeviceControllerCommonStateBatteryStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateBatteryLevel(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1719
    const-string v1, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMemoryInfo(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1720
    const-string v1, "DeviceControllerCommonStateMassStorageStateListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMassStorageState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1721
    const-string v1, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMassStorageStateInfo(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1722
    const-string v1, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMassStorageContent(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1723
    const-string v1, "DeviceControllerCommonStateWifiSignalChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateRssiLevel(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1724
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateGPSFixStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateGpsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1725
    const-string v1, "ARDrone3DeviceControllerGPSStateNumberOfSatelliteChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateGpsSatelliteCount(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1726
    const-string v1, "ARDrone3DeviceControllerPilotingStateAltitudeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAltitude(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1727
    const-string v1, "ARDrone3DeviceControllerPilotingStatePositionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updatePositionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1728
    const-string v1, "ARDrone3DeviceControllerPilotingStateGpsLocationChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateGpsLocationState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1729
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateGeofenceCenterChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateGpsLocationGeofenceCenter(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1730
    const-string v1, "FollowMeDeviceControllerTargetTrajectoryNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateTargetTrajectoryState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1731
    const-string v1, "FollowMeDeviceControllerTargetImageDetectionStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateTargetImageDetectionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1732
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mUpdateInternal:Z

    if-eqz v1, :cond_1

    .line 1733
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxAltitudeState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1734
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateNoFlyOverMaxDistanceChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateDistanceRestrictionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1735
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxDistanceChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxDistanceState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1736
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxPitchState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1737
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxPitchRollRotationSpeedChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxPitchSpeedState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1738
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxVerticalSpeedState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1739
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxRotationSpeedState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1740
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateBankedTurnChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateBankedTurnState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1742
    :cond_1
    const-string v1, "DeviceControllerFlightPlanSettingsStateReturnHomeOnDisconnectChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlightPlanReturnHomeState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1743
    const-string v1, "ARDrone3DeviceControllerPilotingStateSpeedChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateSpeed(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1744
    const-string v1, "ARDrone3DeviceControllerPilotingStateAttitudeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAttitude(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1745
    const-string v1, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedV2Notification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateVideoRecordState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1746
    const-string v1, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updatePhotoRecordState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1747
    const-string v1, "ARDrone3DeviceControllerCameraStateDefaultCameraOrientationNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCameraDefaultOrientation(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1748
    const-string v1, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCameraSettingState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1749
    const-string v1, "ARDrone3DeviceControllerCameraStateOrientationNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCameraOrientation(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1750
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mUpdateInternal:Z

    if-eqz v1, :cond_2

    .line 1751
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoStabilizationModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCameraStabilizationMode(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1753
    :cond_2
    const-string v1, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiSettingsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1754
    const-string v1, "ARDrone3DeviceControllerNetworkSettingsStateWifiSecurityNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiSecurityState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1755
    const-string v1, "DeviceControllerSettingsStateCountryChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiCountryState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1756
    const-string v1, "DeviceControllerSettingsStateAutoCountryChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiAutoCountryState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1757
    const-string v1, "DeviceControllerWifiSettingsStateOutdoorSettingsChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiOutdoorState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1758
    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAuthorizedChannelsListState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1759
    const-string v1, "ARDrone3DeviceControllerNetworkStateAllWifiAuthChannelChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAllAuthorizedChannelsListState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1760
    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiScanListState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1761
    const-string v1, "ARDrone3DeviceControllerNetworkStateAllWifiScanChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAllWifiScanListState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1762
    const-string v1, "DeviceControllerSettingsStateProductVersionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateProductVersions(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1763
    const-string v1, "ARDrone3DeviceControllerSettingsStateProductGPSVersionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateGpsVersions(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1764
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationRequiredStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMagnetoCalibrationStatus(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1765
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationAxisToCalibrateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAxisToCalibrate(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1766
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationStartedChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMagnetoCalibrationProcedureState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1767
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCalibrationAxisState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1768
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mUpdateInternal:Z

    if-eqz v1, :cond_3

    .line 1769
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateExpositionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateExpositionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1770
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateSaturationChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateSaturationState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1771
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateAutoWhiteBalanceChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWhiteBalanceState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1772
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoResolutionsChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateVideoResolutions(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1773
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoRecordingModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateRecordingMode(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1774
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoFramerateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFrameRate(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1775
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStatePictureFormatChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updatePictureFormat(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1776
    const-string v1, "ARDrone3DeviceControllerAntiflickeringStateModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAntiFlickeringMode(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1777
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoAutorecordChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAutoRecordState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1778
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateTimeLapseState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1780
    :cond_3
    const-string v1, "ARDrone3DeviceControllerMediaStreamingStateVideoStreamModeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateVideoStreamMode(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1781
    const-string v1, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updatePilotingAlertState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1782
    const-string v1, "DeviceControllerCommonStateSensorsStatesListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateSensorAlertState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1783
    const-string v1, "ARDrone3DeviceControllerPilotingStateFlatTrimChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlatTrimAllowed(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1784
    const-string v1, "DeviceControllerMavlinkStateMavlinkFilePlayingStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlightPlanMavlinkPlayingState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1785
    const-string v1, "DeviceControllerFlightPlanStateComponentStateListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlightPlanComponents(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1786
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorErrorStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotorsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1787
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorErrorLastErrorChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateLastMotorsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1788
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorFlightsStatusChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlightsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1789
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorSoftwareVersionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotorsSoftwareVersion(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1790
    const-string v1, "DeviceControllerSettingsStateProductSerialHighChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateProductSerialHigh(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1791
    const-string v1, "DeviceControllerSettingsStateProductSerialLowChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateProductSerialLow(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1792
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateHomePositionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1793
    const-string v1, "DeviceControllerRunStateRunIdChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateRunId(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1794
    const-string v1, "DeviceControllerFlightPlanStateLockStateChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlightPlanLockState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1795
    const-string v1, "FollowMeDeviceControllerStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFollowMeState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1796
    const-string v1, "ARDrone3DeviceControllerSettingsStateCPUIDNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCpuId(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1797
    const-string v1, "FollowMeDeviceControllerModeInfoNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFollowMeModesInfo(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1798
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mUpdateInternal:Z

    if-eqz v1, :cond_4

    .line 1799
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateHullProtectionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateHullProtectionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1801
    :cond_4
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMotionDetectionNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotionDetection(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1802
    const-string v1, "ARDrone3DeviceControllerPilotingStateMotionStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1803
    const-string v1, "AnimationDeviceControllerAvailabilityNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAnimationsAvailability(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1804
    const-string v1, "AnimationDeviceControllerStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCurrentAnimationType(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1805
    const-string v1, "AnimationDeviceControllerStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCurrentAnimationProgress(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1806
    const-string v1, "ARDrone3DeviceControllerSoundStateAlertSoundNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAlertSoundState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1807
    if-eqz v0, :cond_5

    .line 1808
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 1810
    :cond_5
    return-void
.end method

.method private resetFlagsForFollowMe()V
    .locals 1

    .prologue
    .line 1606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeSupported:Z

    .line 1607
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeType:I

    .line 1608
    return-void
.end method

.method private resetSaturation()V
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setImageSaturation(F)V

    .line 1291
    :cond_0
    return-void
.end method

.method private sendControllerGpsPosition()V
    .locals 12

    .prologue
    .line 545
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    .line 546
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 547
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    .line 548
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v8, v0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 547
    invoke-virtual/range {v1 .. v11}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->gpsSettingsSendControllerGPS(DDDDD)V

    .line 550
    :cond_0
    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 1611
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v1, :cond_0

    .line 1612
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 1613
    .local v0, "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v1, "ARDrone3DeviceControllerPilotingStateMoveToChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMoveToChanged(Landroid/os/Bundle;)Z

    .line 1614
    const-string v1, "ARDrone3DeviceControllerPilotingStatePilotedPOINotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updatePOIChanged(Landroid/os/Bundle;)Z

    .line 1615
    const-string v1, "ARDrone3DeviceControllerPilotingStateFlyingStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlyingState(Landroid/os/Bundle;)Z

    .line 1616
    const-string v1, "DeviceControllerSettingsStateProductNameChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateProductName(Landroid/os/Bundle;)Z

    .line 1617
    const-string v1, "ARDrone3DeviceControllerPilotingStateNavigateHomeStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateReturnHomeStatus(Landroid/os/Bundle;)Z

    .line 1618
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeTypeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateReturnHomeTypeStatus(Landroid/os/Bundle;)Z

    .line 1619
    const-string v1, "ARDrone3DeviceControllerGPSStateHomeTypeChosenChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateReturnHomeTypeDroneState(Landroid/os/Bundle;)Z

    .line 1620
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateReturnHomeDelayChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateReturnHomeDelay(Landroid/os/Bundle;)Z

    .line 1621
    const-string v1, "DeviceControllerCommonStateBatteryStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateBatteryLevel(Landroid/os/Bundle;)Z

    .line 1622
    const-string v1, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMemoryInfo(Landroid/os/Bundle;)Z

    .line 1623
    const-string v1, "DeviceControllerCommonStateMassStorageStateListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMassStorageState(Landroid/os/Bundle;)Z

    .line 1624
    const-string v1, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMassStorageStateInfo(Landroid/os/Bundle;)Z

    .line 1625
    const-string v1, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMassStorageContent(Landroid/os/Bundle;)Z

    .line 1626
    const-string v1, "DeviceControllerCommonStateWifiSignalChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateRssiLevel(Landroid/os/Bundle;)Z

    .line 1627
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateGPSFixStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateGpsState(Landroid/os/Bundle;)Z

    .line 1628
    const-string v1, "ARDrone3DeviceControllerGPSStateNumberOfSatelliteChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateGpsSatelliteCount(Landroid/os/Bundle;)Z

    .line 1629
    const-string v1, "ARDrone3DeviceControllerPilotingStateAltitudeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAltitude(Landroid/os/Bundle;)Z

    .line 1630
    const-string v1, "ARDrone3DeviceControllerPilotingStatePositionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updatePositionState(Landroid/os/Bundle;)Z

    .line 1631
    const-string v1, "ARDrone3DeviceControllerPilotingStateGpsLocationChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateGpsLocationState(Landroid/os/Bundle;)Z

    .line 1632
    const-string v1, "FollowMeDeviceControllerTargetTrajectoryNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateTargetTrajectoryState(Landroid/os/Bundle;)Z

    .line 1633
    const-string v1, "FollowMeDeviceControllerTargetImageDetectionStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateTargetImageDetectionState(Landroid/os/Bundle;)Z

    .line 1634
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxAltitudeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxAltitudeState(Landroid/os/Bundle;)Z

    .line 1635
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateNoFlyOverMaxDistanceChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateDistanceRestrictionState(Landroid/os/Bundle;)Z

    .line 1636
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxDistanceChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxDistanceState(Landroid/os/Bundle;)Z

    .line 1637
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxTiltChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxPitchState(Landroid/os/Bundle;)Z

    .line 1638
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxPitchRollRotationSpeedChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxPitchSpeedState(Landroid/os/Bundle;)Z

    .line 1639
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxVerticalSpeedState(Landroid/os/Bundle;)Z

    .line 1640
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMaxRotationSpeedState(Landroid/os/Bundle;)Z

    .line 1641
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateBankedTurnChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateBankedTurnState(Landroid/os/Bundle;)Z

    .line 1642
    const-string v1, "DeviceControllerFlightPlanSettingsStateReturnHomeOnDisconnectChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlightPlanReturnHomeState(Landroid/os/Bundle;)Z

    .line 1643
    const-string v1, "ARDrone3DeviceControllerPilotingStateSpeedChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateSpeed(Landroid/os/Bundle;)Z

    .line 1644
    const-string v1, "ARDrone3DeviceControllerPilotingStateAttitudeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAttitude(Landroid/os/Bundle;)Z

    .line 1645
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateTimeLapseState(Landroid/os/Bundle;)Z

    .line 1646
    const-string v1, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedV2Notification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateVideoRecordState(Landroid/os/Bundle;)Z

    .line 1647
    const-string v1, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedV2Notification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updatePhotoRecordState(Landroid/os/Bundle;)Z

    .line 1648
    const-string v1, "ARDrone3DeviceControllerCameraStateDefaultCameraOrientationNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCameraDefaultOrientation(Landroid/os/Bundle;)Z

    .line 1649
    const-string v1, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCameraSettingState(Landroid/os/Bundle;)Z

    .line 1650
    const-string v1, "ARDrone3DeviceControllerCameraStateOrientationNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCameraOrientation(Landroid/os/Bundle;)Z

    .line 1651
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoStabilizationModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCameraStabilizationMode(Landroid/os/Bundle;)Z

    .line 1652
    const-string v1, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiSettingsState(Landroid/os/Bundle;)Z

    .line 1653
    const-string v1, "ARDrone3DeviceControllerNetworkSettingsStateWifiSecurityNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiSecurityState(Landroid/os/Bundle;)Z

    .line 1654
    const-string v1, "DeviceControllerSettingsStateCountryChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiCountryState(Landroid/os/Bundle;)Z

    .line 1655
    const-string v1, "DeviceControllerSettingsStateAutoCountryChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiAutoCountryState(Landroid/os/Bundle;)Z

    .line 1656
    const-string v1, "DeviceControllerWifiSettingsStateOutdoorSettingsChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiOutdoorState(Landroid/os/Bundle;)Z

    .line 1657
    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAuthorizedChannelsListState(Landroid/os/Bundle;)Z

    .line 1658
    const-string v1, "ARDrone3DeviceControllerNetworkStateAllWifiAuthChannelChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAllAuthorizedChannelsListState(Landroid/os/Bundle;)Z

    .line 1659
    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiScanListState(Landroid/os/Bundle;)Z

    .line 1660
    const-string v1, "ARDrone3DeviceControllerNetworkStateAllWifiScanChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAllWifiScanListState(Landroid/os/Bundle;)Z

    .line 1661
    const-string v1, "DeviceControllerSettingsStateProductVersionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateProductVersions(Landroid/os/Bundle;)Z

    .line 1662
    const-string v1, "ARDrone3DeviceControllerSettingsStateProductGPSVersionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateGpsVersions(Landroid/os/Bundle;)Z

    .line 1663
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationRequiredStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMagnetoCalibrationStatus(Landroid/os/Bundle;)Z

    .line 1664
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationAxisToCalibrateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAxisToCalibrate(Landroid/os/Bundle;)Z

    .line 1665
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationStartedChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMagnetoCalibrationProcedureState(Landroid/os/Bundle;)Z

    .line 1666
    const-string v1, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCalibrationAxisState(Landroid/os/Bundle;)Z

    .line 1667
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateExpositionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateExpositionState(Landroid/os/Bundle;)Z

    .line 1668
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateSaturationChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateSaturationState(Landroid/os/Bundle;)Z

    .line 1669
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateAutoWhiteBalanceChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWhiteBalanceState(Landroid/os/Bundle;)Z

    .line 1670
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoRecordingModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateRecordingMode(Landroid/os/Bundle;)Z

    .line 1671
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoFramerateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFrameRate(Landroid/os/Bundle;)Z

    .line 1672
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStatePictureFormatChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updatePictureFormat(Landroid/os/Bundle;)Z

    .line 1673
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoResolutionsChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateVideoResolutions(Landroid/os/Bundle;)Z

    .line 1674
    const-string v1, "ARDrone3DeviceControllerMediaStreamingStateVideoStreamModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateVideoStreamMode(Landroid/os/Bundle;)Z

    .line 1675
    const-string v1, "ARDrone3DeviceControllerAntiflickeringStateModeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAntiFlickeringMode(Landroid/os/Bundle;)Z

    .line 1676
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateVideoAutorecordChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAutoRecordState(Landroid/os/Bundle;)Z

    .line 1677
    const-string v1, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updatePilotingAlertState(Landroid/os/Bundle;)Z

    .line 1678
    const-string v1, "DeviceControllerCommonStateSensorsStatesListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateSensorAlertState(Landroid/os/Bundle;)Z

    .line 1679
    const-string v1, "ARDrone3DeviceControllerPilotingStateFlatTrimChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlatTrimAllowed(Landroid/os/Bundle;)Z

    .line 1680
    const-string v1, "DeviceControllerMavlinkStateMavlinkFilePlayingStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlightPlanMavlinkPlayingState(Landroid/os/Bundle;)Z

    .line 1681
    const-string v1, "DeviceControllerFlightPlanStateComponentStateListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlightPlanComponents(Landroid/os/Bundle;)Z

    .line 1682
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorErrorStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotorsState(Landroid/os/Bundle;)Z

    .line 1683
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorErrorLastErrorChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateLastMotorsState(Landroid/os/Bundle;)Z

    .line 1684
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorFlightsStatusChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlightsState(Landroid/os/Bundle;)Z

    .line 1685
    const-string v1, "ARDrone3DeviceControllerSettingsStateMotorSoftwareVersionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotorsSoftwareVersion(Landroid/os/Bundle;)Z

    .line 1686
    const-string v1, "DeviceControllerSettingsStateProductSerialHighChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateProductSerialHigh(Landroid/os/Bundle;)Z

    .line 1687
    const-string v1, "DeviceControllerSettingsStateProductSerialLowChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateProductSerialLow(Landroid/os/Bundle;)Z

    .line 1688
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateHomePositionState(Landroid/os/Bundle;)Z

    .line 1689
    const-string v1, "DeviceControllerRunStateRunIdChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateRunId(Landroid/os/Bundle;)Z

    .line 1690
    const-string v1, "DeviceControllerFlightPlanStateLockStateChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFlightPlanLockState(Landroid/os/Bundle;)Z

    .line 1691
    const-string v1, "FollowMeDeviceControllerStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFollowMeState(Landroid/os/Bundle;)Z

    .line 1692
    const-string v1, "ARDrone3DeviceControllerSettingsStateCPUIDNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCpuId(Landroid/os/Bundle;)Z

    .line 1693
    const-string v1, "FollowMeDeviceControllerModeInfoNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateFollowMeModesInfo(Landroid/os/Bundle;)Z

    .line 1694
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateHullProtectionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateHullProtectionState(Landroid/os/Bundle;)Z

    .line 1695
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMotionDetectionNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotionDetection(Landroid/os/Bundle;)Z

    .line 1696
    const-string v1, "ARDrone3DeviceControllerPilotingStateMotionStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotionState(Landroid/os/Bundle;)Z

    .line 1697
    const-string v1, "AnimationDeviceControllerAvailabilityNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAnimationsAvailability(Landroid/os/Bundle;)Z

    .line 1698
    const-string v1, "AnimationDeviceControllerStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCurrentAnimationType(Landroid/os/Bundle;)Z

    .line 1699
    const-string v1, "AnimationDeviceControllerStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateCurrentAnimationProgress(Landroid/os/Bundle;)Z

    .line 1700
    const-string v1, "ARDrone3DeviceControllerSoundStateAlertSoundNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateAlertSoundState(Landroid/os/Bundle;)Z

    .line 1702
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
    .line 3560
    if-eqz p1, :cond_0

    .line 3561
    const-string v2, "ARDrone3DeviceControllerSoundStateAlertSoundNotificationStateKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;->eARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;->getValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3563
    .local v1, "stateValue":I
    sget-object v2, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM:[I

    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SOUNDSTATE_ALERTSOUND_STATE_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3571
    const/4 v0, -0x1

    .line 3573
    .local v0, "state":I
    :goto_0
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertSoundState:I

    if-eq v2, v0, :cond_0

    .line 3574
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertSoundState:I

    .line 3575
    const/4 v2, 0x1

    .line 3578
    .end local v0    # "state":I
    .end local v1    # "stateValue":I
    :goto_1
    return v2

    .line 3565
    .restart local v1    # "stateValue":I
    :pswitch_0
    const/4 v0, 0x0

    .line 3566
    .restart local v0    # "state":I
    goto :goto_0

    .line 3568
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x1

    .line 3569
    .restart local v0    # "state":I
    goto :goto_0

    .line 3578
    .end local v0    # "state":I
    .end local v1    # "stateValue":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 3563
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
    .line 2734
    const/4 v0, 0x0

    .line 2735
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2736
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->filterAuthorizedChannels()V

    .line 2737
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAuthChannelFinalList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateAuthorizedWifiBandList(Ljava/util/List;)Z

    move-result v0

    .line 2739
    :cond_0
    return v0
.end method

.method private updateAllWifiScanListState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "wifiScanListBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2770
    const/4 v0, 0x0

    .line 2771
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2772
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiScanList(Ljava/util/List;)Z

    move-result v0

    .line 2773
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->setScanningState(Z)V

    .line 2775
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
    .line 2244
    const/4 v2, 0x0

    .line 2245
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2246
    const-string v3, "ARDrone3DeviceControllerPilotingStateAltitudeChangedNotificationAltitudeKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 2247
    .local v0, "altitude":D
    iget-wide v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRelativeAltitude:D

    cmpl-double v3, v4, v0

    if-eqz v3, :cond_0

    .line 2248
    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRelativeAltitude:D

    .line 2249
    const/4 v2, 0x1

    .line 2252
    .end local v0    # "altitude":D
    :cond_0
    return v2
.end method

.method private updateAnimationsAvailability(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 3382
    if-eqz p1, :cond_1

    .line 3383
    iput-boolean v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAreAnimationsAvailable:Z

    .line 3384
    const-string v4, "AnimationDeviceControllerAvailabilityNotificationValuesKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3385
    .local v1, "availabilityBitfield":I
    const/4 v0, 0x0

    .line 3386
    .local v0, "animationsAvailability":I
    :goto_0
    if-eqz v1, :cond_0

    .line 3387
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 3388
    .local v2, "value":I
    sget-object v4, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ANIMATION_TYPE_ENUM:[I

    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_TYPE_ENUM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_TYPE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 3416
    :goto_1
    shl-int v4, v3, v2

    xor-int/2addr v1, v4

    .line 3417
    goto :goto_0

    .line 3390
    :pswitch_0
    or-int/lit8 v0, v0, 0x10

    .line 3391
    goto :goto_1

    .line 3393
    :pswitch_1
    or-int/lit8 v0, v0, 0x22

    .line 3395
    goto :goto_1

    .line 3397
    :pswitch_2
    or-int/lit8 v0, v0, 0x40

    .line 3398
    goto :goto_1

    .line 3400
    :pswitch_3
    or-int/lit16 v0, v0, 0x80

    .line 3401
    goto :goto_1

    .line 3403
    :pswitch_4
    or-int/lit8 v0, v0, 0x9

    .line 3405
    goto :goto_1

    .line 3407
    :pswitch_5
    or-int/lit8 v0, v0, 0x4

    .line 3408
    goto :goto_1

    .line 3418
    .end local v2    # "value":I
    :cond_0
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAnimationsAvailability:I

    if-eq v4, v0, :cond_1

    .line 3419
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAnimationsAvailability:I

    .line 3423
    .end local v0    # "animationsAvailability":I
    .end local v1    # "availabilityBitfield":I
    :goto_2
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 3388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
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

    .line 3071
    const/4 v3, 0x0

    .line 3072
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 3073
    iget-boolean v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mIsAntiflickeringCmdSupported:Z

    if-nez v6, :cond_0

    .line 3074
    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mIsAntiflickeringCmdSupported:Z

    .line 3076
    :cond_0
    const-string v6, "ARDrone3DeviceControllerAntiflickeringStateModeChangedNotificationModeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3077
    .local v1, "antiFlickeringModeValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;

    move-result-object v0

    .line 3078
    .local v0, "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAntiFlickeringMode:I

    .line 3079
    .local v2, "previousMode":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 3091
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAntiFlickeringMode:I

    .line 3094
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAntiFlickeringMode:I

    if-eq v2, v6, :cond_2

    move v3, v4

    .line 3096
    .end local v0    # "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    .end local v1    # "antiFlickeringModeValue":I
    .end local v2    # "previousMode":I
    :cond_1
    :goto_1
    return v3

    .line 3081
    .restart local v0    # "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    .restart local v1    # "antiFlickeringModeValue":I
    .restart local v2    # "previousMode":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAntiFlickeringMode:I

    goto :goto_0

    .line 3084
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAntiFlickeringMode:I

    goto :goto_0

    .line 3087
    :pswitch_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAntiFlickeringMode:I

    goto :goto_0

    :cond_2
    move v3, v5

    .line 3094
    goto :goto_1

    .line 3079
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

    .line 2460
    const/4 v4, 0x0

    .line 2461
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 2462
    iget-boolean v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsFixed:Z

    if-eqz v5, :cond_0

    .line 2463
    const-string v5, "ARDrone3DeviceControllerPilotingStateAttitudeChangedNotificationYawKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    neg-double v8, v8

    double-to-float v5, v8

    float-to-double v6, v5

    .line 2464
    .local v6, "yaw":D
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v5, v6, v7}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateYaw(D)Z

    move-result v4

    .line 2465
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsLocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v5, v6, v7}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateYaw(D)Z

    move-result v5

    or-int/2addr v4, v5

    .line 2467
    .end local v6    # "yaw":D
    :cond_0
    const-string v5, "ARDrone3DeviceControllerPilotingStateAttitudeChangedNotificationRollKey"

    invoke-virtual {p1, v5, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    float-to-double v2, v5

    .line 2468
    .local v2, "roll":D
    const-string v5, "ARDrone3DeviceControllerPilotingStateAttitudeChangedNotificationPitchKey"

    invoke-virtual {p1, v5, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    float-to-double v0, v5

    .line 2469
    .local v0, "pitch":D
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v5, v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateRoll(D)Z

    move-result v5

    or-int/2addr v4, v5

    .line 2470
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsLocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v5, v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateRoll(D)Z

    move-result v5

    or-int/2addr v4, v5

    .line 2471
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v5, v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updatePitch(D)Z

    move-result v5

    or-int/2addr v4, v5

    .line 2472
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsLocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {v5, v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updatePitch(D)Z

    move-result v5

    or-int/2addr v4, v5

    .line 2474
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

    .line 2708
    if-eqz p1, :cond_3

    .line 2709
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAuthorizedWifiChannels:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 2710
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

    .line 2711
    .local v5, "idString":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 2712
    .local v8, "networkData":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 2713
    const-string v12, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationBandKey"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2714
    .local v2, "band":I
    const-string v12, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationChannelKey"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    .line 2716
    .local v4, "channelByte":B
    and-int/lit16 v3, v4, 0xff

    .line 2717
    .local v3, "channel":I
    if-eqz v3, :cond_0

    .line 2718
    const-string v12, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationInOrOutKey"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v6

    .line 2719
    .local v6, "inOrOutInt":B
    shr-int/lit8 v12, v6, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    move v0, v9

    .line 2720
    .local v0, "allowedIn":Z
    :goto_1
    and-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_2

    move v1, v9

    .line 2722
    .local v1, "allowedOut":Z
    :goto_2
    new-instance v7, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-direct {v7, v2, v3}, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;-><init>(II)V

    .line 2723
    .local v7, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    iput-boolean v0, v7, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->indoorAllowed:Z

    .line 2724
    iput-boolean v1, v7, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->outdoorAllowed:Z

    .line 2725
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAuthorizedWifiChannels:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "allowedIn":Z
    .end local v1    # "allowedOut":Z
    .end local v7    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_1
    move v0, v10

    .line 2719
    goto :goto_1

    .restart local v0    # "allowedIn":Z
    :cond_2
    move v1, v10

    .line 2720
    goto :goto_2

    .line 2730
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
    .line 3100
    const/4 v1, 0x0

    .line 3101
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 3102
    const-string v2, "ARDrone3DeviceControllerPictureSettingsStateVideoAutorecordChangedNotificationEnabledKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 3104
    .local v0, "enabled":Z
    :goto_0
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAutoRecordEnabled:Z

    if-eq v2, v0, :cond_0

    .line 3105
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAutoRecordEnabled:Z

    .line 3106
    const/4 v1, 0x1

    .line 3109
    .end local v0    # "enabled":Z
    :cond_0
    return v1

    .line 3102
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
    .line 2830
    const/4 v3, 0x0

    .line 2831
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2832
    const-string v4, "DeviceControllerCalibrationStateMagnetoCalibrationAxisToCalibrateChangedNotificationAxisKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2833
    .local v1, "axisToCalibrate":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;

    move-result-object v2

    .line 2836
    .local v2, "axisToCalibrateEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2851
    const/4 v0, -0x1

    .line 2854
    .local v0, "axis":I
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->updateAxisToCalibrate(I)Z

    move-result v3

    .line 2856
    .end local v0    # "axis":I
    .end local v1    # "axisToCalibrate":I
    .end local v2    # "axisToCalibrateEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;
    :cond_0
    return v3

    .line 2838
    .restart local v1    # "axisToCalibrate":I
    .restart local v2    # "axisToCalibrateEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CALIBRATIONSTATE_MAGNETOCALIBRATIONAXISTOCALIBRATECHANGED_AXIS_ENUM;
    :pswitch_0
    const/4 v0, 0x0

    .line 2839
    .restart local v0    # "axis":I
    goto :goto_0

    .line 2841
    .end local v0    # "axis":I
    :pswitch_1
    const/4 v0, 0x1

    .line 2842
    .restart local v0    # "axis":I
    goto :goto_0

    .line 2844
    .end local v0    # "axis":I
    :pswitch_2
    const/4 v0, 0x2

    .line 2845
    .restart local v0    # "axis":I
    goto :goto_0

    .line 2847
    .end local v0    # "axis":I
    :pswitch_3
    const/4 v0, 0x3

    .line 2848
    .restart local v0    # "axis":I
    goto :goto_0

    .line 2836
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateBankedTurnState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "bankedTurnBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 2416
    const/4 v1, 0x0

    .line 2417
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2418
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/util/ToggleState;->setAvailable(Z)V

    .line 2419
    const-string v2, "ARDrone3DeviceControllerPilotingSettingsStateBankedTurnChangedNotificationStateKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2420
    .local v0, "bankedTurnEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/util/ToggleState;->updateToggleState(Z)Z

    move-result v1

    .line 2422
    .end local v0    # "bankedTurnEnabled":Z
    :cond_0
    return v1

    .line 2419
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBatteryLevel(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "batteryBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2106
    const/4 v1, 0x0

    .line 2107
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2108
    const-string v2, "DeviceControllerCommonStateBatteryStateChangedNotificationPercentKey"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 2109
    .local v0, "batteryLevel":I
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mBatteryLevel:I

    if-eq v0, v2, :cond_0

    .line 2110
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mBatteryLevel:I

    .line 2111
    const/4 v1, 0x1

    .line 2114
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

    .line 2869
    const/4 v1, 0x0

    .line 2870
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2871
    const-string v7, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotificationCalibrationFailedKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    if-eqz v7, :cond_1

    move v0, v5

    .line 2872
    .local v0, "failedState":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2873
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->updateMagnetoCalibrationProcedureState(I)Z

    move-result v1

    .line 2881
    .end local v0    # "failedState":Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v6

    .line 2871
    goto :goto_0

    .line 2875
    .restart local v0    # "failedState":Z
    :cond_2
    const-string v7, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotificationXAxisCalibrationKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    if-eqz v7, :cond_3

    move v2, v5

    .line 2876
    .local v2, "xAxisState":Z
    :goto_2
    const-string v7, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotificationYAxisCalibrationKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    if-eqz v7, :cond_4

    move v3, v5

    .line 2877
    .local v3, "yAxisState":Z
    :goto_3
    const-string v7, "DeviceControllerCalibrationStateMagnetoCalibrationStateChangedNotificationZAxisCalibrationKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    if-eqz v7, :cond_5

    move v4, v5

    .line 2878
    .local v4, "zAxisState":Z
    :goto_4
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v5, v2, v3, v4}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->updateAxisCalibrated(ZZZ)Z

    move-result v1

    goto :goto_1

    .end local v2    # "xAxisState":Z
    .end local v3    # "yAxisState":Z
    .end local v4    # "zAxisState":Z
    :cond_3
    move v2, v6

    .line 2875
    goto :goto_2

    .restart local v2    # "xAxisState":Z
    :cond_4
    move v3, v6

    .line 2876
    goto :goto_3

    .restart local v3    # "yAxisState":Z
    :cond_5
    move v4, v6

    .line 2877
    goto :goto_4
.end method

.method private updateCameraDefaultOrientation(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "cameraDefaultOrientationBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2518
    const/4 v0, 0x0

    .line 2519
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2520
    const-string v1, "ARDrone3DeviceControllerCameraStateDefaultCameraOrientationNotificationPanKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDefaultCameraPan:I

    .line 2521
    const-string v1, "ARDrone3DeviceControllerCameraStateDefaultCameraOrientationNotificationTiltKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDefaultCameraTilt:I

    .line 2522
    const/4 v0, 0x1

    .line 2524
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

    .line 2542
    const/4 v0, 0x0

    .line 2543
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2544
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "ARDrone3DeviceControllerCameraStateOrientationNotificationTiltKey"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setTilt(I)V

    .line 2545
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "ARDrone3DeviceControllerCameraStateOrientationNotificationPanKey"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setPan(I)V

    .line 2546
    const/4 v0, 0x1

    .line 2548
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
    .line 2528
    const/4 v0, 0x0

    .line 2529
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2530
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotificationFovKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setFov(F)V

    .line 2531
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotificationPanMinKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setPanMin(F)V

    .line 2532
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotificationPanMaxKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setPanMax(F)V

    .line 2533
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotificationTiltMinKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setTiltMin(F)V

    .line 2534
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    const-string v2, "DeviceControllerCameraSettingsStateCameraSettingsChangedNotificationTiltMaxKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setTiltMax(F)V

    .line 2535
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->updateFocalLength()V

    .line 2536
    const/4 v0, 0x1

    .line 2538
    :cond_0
    return v0
.end method

.method private updateCameraStabilizationMode(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "cameraStabilizationBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 2552
    const/4 v1, 0x0

    .line 2553
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2554
    const-string v5, "ARDrone3DeviceControllerPictureSettingsStateVideoStabilizationModeChangedNotificationModeKey"

    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;->eARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;

    .line 2555
    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;->getValue()I

    move-result v6

    .line 2554
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2556
    .local v3, "value":I
    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;

    move-result-object v2

    .line 2558
    .local v2, "stabilizationMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;
    sget-object v5, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2572
    const/4 v0, -0x1

    .line 2575
    .local v0, "mode":I
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDroneCamera:Lcom/parrot/freeflight/piloting/model/DroneCamera;

    invoke-virtual {v5, v0}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->setStabilizationMode(I)V

    .line 2576
    const/4 v1, 0x1

    .line 2577
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRollStabilizationState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/util/ToggleState;->setAvailable(Z)V

    .line 2578
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRollStabilizationState:Lcom/parrot/freeflight/util/ToggleState;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/util/ToggleState;->updateToggleState(Z)Z

    .line 2580
    .end local v0    # "mode":I
    .end local v2    # "stabilizationMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;
    .end local v3    # "value":I
    :cond_0
    return v1

    .line 2560
    .restart local v2    # "stabilizationMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;
    .restart local v3    # "value":I
    :pswitch_0
    const/4 v0, 0x0

    .line 2561
    .restart local v0    # "mode":I
    goto :goto_0

    .line 2563
    .end local v0    # "mode":I
    :pswitch_1
    const/4 v0, 0x1

    .line 2564
    .restart local v0    # "mode":I
    goto :goto_0

    .line 2566
    .end local v0    # "mode":I
    :pswitch_2
    const/4 v0, 0x2

    .line 2567
    .restart local v0    # "mode":I
    goto :goto_0

    .line 2569
    .end local v0    # "mode":I
    :pswitch_3
    const/4 v0, 0x3

    .line 2570
    .restart local v0    # "mode":I
    goto :goto_0

    .line 2578
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 2558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateConnectionState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1595
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1596
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiCommandsAvailability(Z)V

    .line 1597
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->suspendRecordingDuration()V

    .line 1602
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 1603
    return-void

    .line 1599
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isFlying()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiCommandsAvailability(Z)V

    .line 1600
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->resetSaturation()V

    goto :goto_0
.end method

.method private updateCpuId(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3361
    if-eqz p1, :cond_0

    .line 3362
    const-string v1, "ARDrone3DeviceControllerSettingsStateCPUIDNotificationIdKey"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3363
    .local v0, "cpuId":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCpuId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3364
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCpuId:Ljava/lang/String;

    .line 3365
    const/4 v1, 0x1

    .line 3368
    .end local v0    # "cpuId":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCurrentAnimationProgress(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3549
    if-eqz p1, :cond_0

    .line 3550
    const-string v1, "AnimationDeviceControllerStateNotificationPercentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    .line 3551
    .local v0, "progress":I
    iget v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCurrentAnimationProgress:I

    if-eq v1, v0, :cond_0

    .line 3552
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCurrentAnimationProgress:I

    .line 3553
    const/4 v1, 0x1

    .line 3556
    .end local v0    # "progress":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCurrentAnimationType(Landroid/os/Bundle;)Z
    .locals 23
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3427
    if-eqz p1, :cond_b

    .line 3428
    const-string v21, "AnimationDeviceControllerStateNotificationTypeKey"

    sget-object v22, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_TYPE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_TYPE_ENUM;

    invoke-virtual/range {v22 .. v22}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_TYPE_ENUM;->getValue()I

    move-result v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3429
    .local v5, "animationValue":I
    const/4 v4, -0x1

    .line 3430
    .local v4, "animation":I
    sget-object v21, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ANIMATION_TYPE_ENUM:[I

    invoke-static {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_TYPE_ENUM;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_TYPE_ENUM;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 3540
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCurrentAnimation:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v4, :cond_b

    .line 3541
    move-object/from16 v0, p0

    iput v4, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCurrentAnimation:I

    .line 3542
    const/16 v21, 0x1

    .line 3545
    .end local v4    # "animation":I
    .end local v5    # "animationValue":I
    :goto_1
    return v21

    .line 3432
    .restart local v4    # "animation":I
    .restart local v5    # "animationValue":I
    :pswitch_0
    const/4 v4, 0x0

    .line 3433
    goto :goto_0

    .line 3435
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v21

    const-string v22, "AnimationDeviceControllerHorizontalPanoramaStateNotification"

    invoke-virtual/range {v21 .. v22}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 3437
    .local v13, "panoramaBundle":Landroid/os/Bundle;
    if-eqz v13, :cond_0

    .line 3438
    const-string v21, "AnimationDeviceControllerHorizontalPanoramaStateNotificationStateKey"

    sget-object v22, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    .line 3439
    invoke-virtual/range {v22 .. v22}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getValue()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 3438
    invoke-static/range {v21 .. v21}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-result-object v14

    .line 3440
    .local v14, "panoramaState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    const-string v21, "AnimationDeviceControllerHorizontalPanoramaStateNotificationRotationAngleKey"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 3441
    .local v3, "angle":F
    sget-object v21, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->RUNNING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-object/from16 v0, v21

    if-ne v14, v0, :cond_0

    const v21, -0x3f36f025

    cmpl-float v21, v3, v21

    if-eqz v21, :cond_1

    const v21, 0x40c90fdb

    cmpl-float v21, v3, v21

    if-nez v21, :cond_0

    .line 3444
    :cond_1
    const/16 v4, 0x10

    goto :goto_0

    .line 3449
    .end local v3    # "angle":F
    .end local v13    # "panoramaBundle":Landroid/os/Bundle;
    .end local v14    # "panoramaState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v21

    const-string v22, "AnimationDeviceControllerDronieStateNotification"

    invoke-virtual/range {v21 .. v22}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 3451
    .local v7, "dronieBundle":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 3452
    const-string v21, "AnimationDeviceControllerDronieStateNotificationStateKey"

    sget-object v22, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    .line 3453
    invoke-virtual/range {v22 .. v22}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getValue()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 3452
    invoke-static/range {v21 .. v21}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-result-object v9

    .line 3454
    .local v9, "dronieState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    sget-object v21, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->RUNNING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-object/from16 v0, v21

    if-ne v9, v0, :cond_0

    .line 3455
    const-string v21, "AnimationDeviceControllerDronieStateNotificationPlayModeKey"

    sget-object v22, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;

    .line 3456
    invoke-virtual/range {v22 .. v22}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->getValue()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 3455
    invoke-static/range {v21 .. v21}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;

    move-result-object v8

    .line 3457
    .local v8, "dronieMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;
    const-string v21, "AnimationDeviceControllerDronieStateNotificationDistanceKey"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 3458
    .local v6, "distance":F
    sget-object v21, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->NORMAL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;

    move-object/from16 v0, v21

    if-ne v8, v0, :cond_3

    const/high16 v21, 0x41f00000    # 30.0f

    cmpl-float v21, v6, v21

    if-eqz v21, :cond_2

    const/high16 v21, 0x42700000    # 60.0f

    cmpl-float v21, v6, v21

    if-nez v21, :cond_3

    .line 3461
    :cond_2
    const/16 v4, 0x20

    goto/16 :goto_0

    .line 3462
    :cond_3
    sget-object v21, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->ONCE_THEN_MIRRORED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;

    move-object/from16 v0, v21

    if-ne v8, v0, :cond_0

    const/high16 v21, 0x41f00000    # 30.0f

    cmpl-float v21, v6, v21

    if-eqz v21, :cond_4

    const/high16 v21, 0x42700000    # 60.0f

    cmpl-float v21, v6, v21

    if-nez v21, :cond_0

    .line 3465
    :cond_4
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 3471
    .end local v6    # "distance":F
    .end local v7    # "dronieBundle":Landroid/os/Bundle;
    .end local v8    # "dronieMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;
    .end local v9    # "dronieState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v21

    const-string v22, "AnimationDeviceControllerHorizontalRevealStateNotification"

    invoke-virtual/range {v21 .. v22}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 3473
    .local v10, "horzRevealBundle":Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 3474
    const-string v21, "AnimationDeviceControllerHorizontalRevealStateNotificationStateKey"

    sget-object v22, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    .line 3475
    invoke-virtual/range {v22 .. v22}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getValue()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 3474
    invoke-static/range {v21 .. v21}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-result-object v11

    .line 3476
    .local v11, "horzRevealState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    const-string v21, "AnimationDeviceControllerHorizontalRevealStateNotificationDistanceKey"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 3477
    .restart local v6    # "distance":F
    sget-object v21, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->RUNNING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-object/from16 v0, v21

    if-ne v11, v0, :cond_0

    const/high16 v21, 0x41f00000    # 30.0f

    cmpl-float v21, v6, v21

    if-eqz v21, :cond_5

    const/high16 v21, 0x42700000    # 60.0f

    cmpl-float v21, v6, v21

    if-nez v21, :cond_0

    .line 3480
    :cond_5
    const/16 v4, 0x40

    goto/16 :goto_0

    .line 3485
    .end local v6    # "distance":F
    .end local v10    # "horzRevealBundle":Landroid/os/Bundle;
    .end local v11    # "horzRevealState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v21

    const-string v22, "AnimationDeviceControllerVerticalRevealStateNotification"

    invoke-virtual/range {v21 .. v22}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    .line 3487
    .local v19, "vertRevealBundle":Landroid/os/Bundle;
    if-eqz v19, :cond_0

    .line 3488
    const-string v21, "AnimationDeviceControllerVerticalRevealStateNotificationStateKey"

    sget-object v22, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    .line 3489
    invoke-virtual/range {v22 .. v22}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getValue()I

    move-result v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 3488
    invoke-static/range {v21 .. v21}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-result-object v20

    .line 3490
    .local v20, "vertRevealState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    const-string v21, "AnimationDeviceControllerVerticalRevealStateNotificationVerticalDistanceKey"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 3491
    .restart local v6    # "distance":F
    sget-object v21, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->RUNNING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    const/high16 v21, 0x41f00000    # 30.0f

    cmpl-float v21, v6, v21

    if-eqz v21, :cond_6

    const/high16 v21, 0x42700000    # 60.0f

    cmpl-float v21, v6, v21

    if-nez v21, :cond_0

    .line 3494
    :cond_6
    const/16 v4, 0x80

    goto/16 :goto_0

    .line 3499
    .end local v6    # "distance":F
    .end local v19    # "vertRevealBundle":Landroid/os/Bundle;
    .end local v20    # "vertRevealState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v21

    const-string v22, "AnimationDeviceControllerSpiralStateNotification"

    invoke-virtual/range {v21 .. v22}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    .line 3501
    .local v17, "spiralBundle":Landroid/os/Bundle;
    if-eqz v17, :cond_0

    .line 3502
    const-string v21, "AnimationDeviceControllerSpiralStateNotificationStateKey"

    sget-object v22, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    .line 3503
    invoke-virtual/range {v22 .. v22}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getValue()I

    move-result v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 3502
    invoke-static/range {v21 .. v21}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-result-object v18

    .line 3504
    .local v18, "spiralState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    sget-object v21, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->RUNNING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 3505
    const-string v21, "AnimationDeviceControllerSpiralStateNotificationVerticalDistanceKey"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 3506
    .restart local v6    # "distance":F
    const/16 v21, 0x0

    cmpl-float v21, v6, v21

    if-nez v21, :cond_8

    .line 3507
    const-string v21, "AnimationDeviceControllerSpiralStateNotificationRevolutionNbKey"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    .line 3508
    .local v12, "nbRevolutions":F
    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v21, v12, v21

    if-eqz v21, :cond_7

    const/high16 v21, -0x40800000    # -1.0f

    cmpl-float v21, v12, v21

    if-nez v21, :cond_0

    .line 3510
    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3512
    .end local v12    # "nbRevolutions":F
    :cond_8
    const/high16 v21, 0x41200000    # 10.0f

    cmpl-float v21, v6, v21

    if-eqz v21, :cond_9

    const/high16 v21, 0x41f00000    # 30.0f

    cmpl-float v21, v6, v21

    if-nez v21, :cond_0

    .line 3514
    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_0

    .line 3520
    .end local v6    # "distance":F
    .end local v17    # "spiralBundle":Landroid/os/Bundle;
    .end local v18    # "spiralState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v21

    const-string v22, "AnimationDeviceControllerParabolaStateNotification"

    invoke-virtual/range {v21 .. v22}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 3522
    .local v15, "parabolaBundle":Landroid/os/Bundle;
    if-eqz v15, :cond_0

    .line 3523
    const-string v21, "AnimationDeviceControllerParabolaStateNotificationStateKey"

    sget-object v22, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    .line 3524
    invoke-virtual/range {v22 .. v22}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getValue()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 3523
    invoke-static/range {v21 .. v21}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-result-object v16

    .line 3525
    .local v16, "parabolaState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    const-string v21, "AnimationDeviceControllerParabolaStateNotificationVerticalDistanceKey"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 3526
    .restart local v6    # "distance":F
    sget-object v21, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;->RUNNING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    const/high16 v21, 0x41200000    # 10.0f

    cmpl-float v21, v6, v21

    if-eqz v21, :cond_a

    const/high16 v21, 0x41f00000    # 30.0f

    cmpl-float v21, v6, v21

    if-nez v21, :cond_0

    .line 3529
    :cond_a
    const/4 v4, 0x4

    goto/16 :goto_0

    .line 3537
    .end local v6    # "distance":F
    .end local v15    # "parabolaBundle":Landroid/os/Bundle;
    .end local v16    # "parabolaState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_STATE_ENUM;
    :pswitch_7
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 3545
    .end local v4    # "animation":I
    .end local v5    # "animationValue":I
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 3430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
    .end packed-switch
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

    .line 2350
    const/4 v1, 0x0

    .line 2351
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2352
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDistanceRestrictionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/util/ToggleState;->setAvailable(Z)V

    .line 2353
    const-string v4, "ARDrone3DeviceControllerPilotingSettingsStateNoFlyOverMaxDistanceChangedNotificationShouldNotFlyOverKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 2354
    .local v0, "available":Z
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightDistanceRestrictionStatus:I

    .line 2355
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDistanceRestrictionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v3, v0}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    move-result v1

    .line 2357
    .end local v0    # "available":Z
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 2353
    goto :goto_0

    .restart local v0    # "available":Z
    :cond_2
    move v2, v3

    .line 2354
    goto :goto_1
.end method

.method private updateExpositionState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "expositionStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2885
    const/4 v11, 0x0

    .line 2886
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2887
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateExpositionChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 2888
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateExpositionChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 2889
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateExpositionChangedNotificationValueKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2890
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mExpositionState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 2892
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
    .line 3214
    const/4 v0, 0x0

    .line 3215
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 3216
    const/4 v0, 0x1

    .line 3218
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

    .line 3236
    const/4 v3, 0x0

    .line 3237
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 3238
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightPlanComponents:Ljava/util/Map;

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

    .line 3239
    .local v2, "flightPlanComponentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parrot/freeflight/core/model/FlightPlanComponent;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3241
    .local v1, "componentBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 3242
    const-string v5, "DeviceControllerFlightPlanStateComponentStateListChangedNotificationStateKey"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    if-ne v5, v6, :cond_1

    move v4, v6

    .line 3243
    .local v4, "state":Z
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    .line 3244
    .local v0, "component":Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->getState()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 3245
    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/core/model/FlightPlanComponent;->setState(Z)V

    .line 3246
    const/4 v3, 0x1

    goto :goto_0

    .line 3242
    .end local v0    # "component":Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    .end local v4    # "state":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 3251
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
    .line 3222
    if-eqz p1, :cond_0

    .line 3223
    const-string v2, "DeviceControllerMavlinkStateMavlinkFilePlayingStateChangedNotificationTypeKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3224
    .local v1, "type":I
    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_TYPE_ENUM;->ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_TYPE_FLIGHTPLAN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_TYPE_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_TYPE_ENUM;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3225
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightPlanSupported:Z

    .line 3227
    const-string v2, "DeviceControllerMavlinkStateMavlinkFilePlayingStateChangedNotificationStateKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3229
    .local v0, "state":I
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightPlanMavlinkPlayingState:Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$FlightPlanMavlinkPlayState;->update(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINKSTATE_MAVLINKFILEPLAYINGSTATECHANGED_STATE_ENUM;)Z

    move-result v2

    .line 3232
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

    .line 2436
    if-eqz p1, :cond_0

    .line 2437
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v4, v2}, Lcom/parrot/freeflight/util/ToggleState;->setAvailable(Z)V

    .line 2438
    const-string v4, "DeviceControllerFlightPlanSettingsStateReturnHomeOnDisconnectChangedNotificationIsReadOnlyKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 2439
    .local v0, "readOnly":Z
    :goto_0
    const-string v4, "DeviceControllerFlightPlanSettingsStateReturnHomeOnDisconnectChangedNotificationStateKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 2440
    .local v1, "state":Z
    :goto_1
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v4, v2, v1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    move-result v3

    .line 2442
    .end local v0    # "readOnly":Z
    .end local v1    # "state":Z
    :cond_0
    return v3

    :cond_1
    move v0, v3

    .line 2438
    goto :goto_0

    .restart local v0    # "readOnly":Z
    :cond_2
    move v1, v3

    .line 2439
    goto :goto_1

    .restart local v1    # "state":Z
    :cond_3
    move v2, v3

    .line 2440
    goto :goto_2
.end method

.method private updateFlightsState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "flightStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3290
    const/4 v2, 0x0

    .line 3291
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 3292
    const-string v4, "ARDrone3DeviceControllerSettingsStateMotorFlightsStatusChangedNotificationNbFlightsKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 3293
    .local v0, "flightsNumber":S
    const-string v4, "ARDrone3DeviceControllerSettingsStateMotorFlightsStatusChangedNotificationLastFlightDurationKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v1

    .line 3294
    .local v1, "lastFlightDuration":S
    const-string v4, "ARDrone3DeviceControllerSettingsStateMotorFlightsStatusChangedNotificationTotalFlightDurationKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3296
    .local v3, "totalFlightsDuration":I
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightsNumber:I

    if-eq v4, v0, :cond_0

    .line 3297
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightsNumber:I

    .line 3298
    const/4 v2, 0x1

    .line 3300
    :cond_0
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLastFlightDuration:I

    if-eq v4, v1, :cond_1

    .line 3301
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLastFlightDuration:I

    .line 3302
    const/4 v2, 0x1

    .line 3304
    :cond_1
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTotalFlightsDuration:I

    if-eq v4, v3, :cond_2

    .line 3305
    iput v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTotalFlightsDuration:I

    .line 3306
    const/4 v2, 0x1

    .line 3309
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

    .line 1896
    const/4 v4, 0x0

    .line 1897
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1898
    const-string v5, "ARDrone3DeviceControllerPilotingStateFlyingStateChangedNotificationStateKey"

    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1899
    .local v0, "flyStateValue":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    move-result-object v1

    .line 1900
    .local v1, "flyingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;
    iget v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlyingState:I

    .line 1902
    .local v3, "previousState":I
    sget-object v5, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1936
    const/4 v2, 0x0

    .line 1939
    .local v2, "newState":I
    :goto_0
    if-eq v3, v2, :cond_0

    .line 1940
    packed-switch v2, :pswitch_data_1

    .line 1960
    :goto_1
    :pswitch_0
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlyingState:I

    .line 1961
    const/4 v4, 0x1

    .line 1964
    .end local v0    # "flyStateValue":I
    .end local v1    # "flyingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;
    .end local v2    # "newState":I
    .end local v3    # "previousState":I
    :cond_0
    return v4

    .line 1904
    .restart local v0    # "flyStateValue":I
    .restart local v1    # "flyingState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;
    .restart local v3    # "previousState":I
    :pswitch_1
    const/4 v2, 0x0

    .line 1905
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1908
    .end local v2    # "newState":I
    :pswitch_2
    const/4 v2, 0x1

    .line 1909
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1912
    .end local v2    # "newState":I
    :pswitch_3
    const/4 v2, 0x2

    .line 1913
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1916
    .end local v2    # "newState":I
    :pswitch_4
    const/4 v2, 0x3

    .line 1917
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1920
    .end local v2    # "newState":I
    :pswitch_5
    const/4 v2, 0x4

    .line 1921
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1924
    .end local v2    # "newState":I
    :pswitch_6
    const/4 v2, 0x5

    .line 1925
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1928
    .end local v2    # "newState":I
    :pswitch_7
    const/4 v2, 0x6

    .line 1929
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1932
    .end local v2    # "newState":I
    :pswitch_8
    const/4 v2, 0x7

    .line 1933
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1942
    :pswitch_9
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->sendControllerGpsPosition()V

    .line 1943
    iput v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMediaCountTakenDuringRun:I

    .line 1947
    :pswitch_a
    iget-boolean v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlatTrimAllowed:Z

    if-eqz v5, :cond_1

    .line 1948
    iput-boolean v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlatTrimAllowed:Z

    .line 1950
    :cond_1
    invoke-direct {p0, v7}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiCommandsAvailability(Z)V

    goto :goto_1

    .line 1954
    :pswitch_b
    iget-boolean v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlatTrimAllowed:Z

    if-nez v5, :cond_2

    .line 1955
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlatTrimAllowed:Z

    .line 1957
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateWifiCommandsAvailability(Z)V

    goto :goto_1

    .line 1902
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
        :pswitch_8
    .end packed-switch

    .line 1940
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private updateFollowMeModesInfo(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "followMeModesInfoBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3340
    const/4 v0, 0x0

    .line 3341
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 3342
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeContainer:Lcom/parrot/freeflight/followme/FollowMeContainer;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->LOOK_AT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    invoke-virtual {v1, v2, p1}, Lcom/parrot/freeflight/followme/FollowMeContainer;->updateFollowMeModeInfo(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;Landroid/os/Bundle;)Z

    move-result v0

    .line 3343
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeContainer:Lcom/parrot/freeflight/followme/FollowMeContainer;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->GEOGRAPHIC:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    invoke-virtual {v1, v2, p1}, Lcom/parrot/freeflight/followme/FollowMeContainer;->updateFollowMeModeInfo(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3344
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeContainer:Lcom/parrot/freeflight/followme/FollowMeContainer;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->RELATIVE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    invoke-virtual {v1, v2, p1}, Lcom/parrot/freeflight/followme/FollowMeContainer;->updateFollowMeModeInfo(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3346
    :cond_0
    return v0
.end method

.method private updateFollowMeState(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "followMeStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3350
    const/4 v0, 0x0

    .line 3351
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 3352
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isFollowMeCorrectlySupportedByFirmware()Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeSupported:Z

    .line 3353
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeContainer:Lcom/parrot/freeflight/followme/FollowMeContainer;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/followme/FollowMeContainer;->updateFollowMeState(Landroid/os/Bundle;)Z

    move-result v0

    .line 3355
    :cond_0
    return v0
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

    .line 2966
    const/4 v3, 0x0

    .line 2967
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2968
    const-string v6, "ARDrone3DeviceControllerPictureSettingsStateVideoFramerateChangedNotificationFramerateKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2969
    .local v1, "frameRateValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;

    move-result-object v0

    .line 2970
    .local v0, "frameRate":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFrameRate:I

    .line 2971
    .local v2, "previousFrameRate":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2983
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFrameRate:I

    .line 2986
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFrameRate:I

    if-eq v2, v6, :cond_1

    move v3, v4

    .line 2988
    .end local v0    # "frameRate":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    .end local v1    # "frameRateValue":I
    .end local v2    # "previousFrameRate":I
    :cond_0
    :goto_1
    return v3

    .line 2973
    .restart local v0    # "frameRate":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    .restart local v1    # "frameRateValue":I
    .restart local v2    # "previousFrameRate":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFrameRate:I

    goto :goto_0

    .line 2976
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFrameRate:I

    goto :goto_0

    .line 2979
    :pswitch_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFrameRate:I

    goto :goto_0

    :cond_1
    move v3, v5

    .line 2986
    goto :goto_1

    .line 2971
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

    .line 2268
    const/4 v0, 0x0

    .line 2269
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2270
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateGeofenceCenterChangedNotificationLatitudeKey"

    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 2271
    .local v2, "latitude":D
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateGeofenceCenterChangedNotificationLongitudeKey"

    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 2272
    .local v4, "longitude":D
    new-instance v1, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>(DDD)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGeofenceCenterPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 2273
    const/4 v0, 0x1

    .line 2275
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :cond_0
    return v0
.end method

.method private updateGpsLocationState(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "gpsLocationBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2279
    const/4 v0, 0x0

    .line 2280
    .local v0, "shouldUpdate":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsFixed:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2281
    const-string v1, "ARDrone3DeviceControllerPilotingStateGpsLocationChangedNotificationLatitudeKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 2282
    .local v2, "latitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStateGpsLocationChangedNotificationLongitudeKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 2283
    .local v4, "longitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStateGpsLocationChangedNotificationAltitudeKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 2284
    .local v6, "altitude":D
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsLocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateLocation(DDDJ)Z

    move-result v0

    .line 2286
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    .end local v6    # "altitude":D
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
    .line 2232
    const/4 v1, 0x0

    .line 2233
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2234
    const-string v2, "ARDrone3DeviceControllerGPSStateNumberOfSatelliteChangedNotificationNumberOfSatelliteKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    .line 2235
    .local v0, "satelliteCount":I
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsSatelliteCount:I

    if-eq v2, v0, :cond_0

    .line 2236
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsSatelliteCount:I

    .line 2237
    const/4 v1, 0x1

    .line 2240
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

    .line 2219
    const/4 v1, 0x0

    .line 2220
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2221
    const-string v4, "ARDrone3DeviceControllerGPSSettingsStateGPSFixStateChangedNotificationFixedKey"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 2222
    .local v0, "gpsFixed":Z
    :goto_0
    iget-boolean v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsFixed:Z

    if-eq v4, v0, :cond_0

    .line 2223
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsFixed:Z

    .line 2224
    if-eqz v0, :cond_2

    :goto_1
    iput v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsFixStatus:I

    .line 2225
    const/4 v1, 0x1

    .line 2228
    .end local v0    # "gpsFixed":Z
    :cond_0
    return v1

    :cond_1
    move v0, v3

    .line 2221
    goto :goto_0

    .restart local v0    # "gpsFixed":Z
    :cond_2
    move v3, v2

    .line 2224
    goto :goto_1
.end method

.method private updateGpsVersions(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "gpsVersionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2797
    const/4 v1, 0x0

    .line 2798
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 2799
    const-string v3, "ARDrone3DeviceControllerSettingsStateProductGPSVersionChangedNotificationHardwareKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2800
    .local v0, "hardwareVersion":Ljava/lang/String;
    const-string v3, "ARDrone3DeviceControllerSettingsStateProductGPSVersionChangedNotificationSoftwareKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2801
    .local v2, "softwareVersion":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2802
    const/4 v1, 0x1

    .line 2803
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsSoftwareVersion:Ljava/lang/String;

    .line 2806
    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsHardwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2807
    const/4 v1, 0x1

    .line 2808
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsHardwareVersion:Ljava/lang/String;

    .line 2811
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

    .line 1885
    const/4 v0, 0x0

    .line 1886
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1887
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeChangedNotificationLatitudeKey"

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 1888
    .local v2, "latitude":D
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeChangedNotificationLongitudeKey"

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1889
    .local v4, "longitude":D
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateHomeChangedNotificationAltitudeKey"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 1890
    .local v6, "altitude":D
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mHomePosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateLocation(DDDJ)Z

    move-result v0

    .line 1892
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    .end local v6    # "altitude":D
    :cond_0
    return v0
.end method

.method private updateHullProtectionState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "hullProtectionStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 3372
    const/4 v1, 0x0

    .line 3373
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 3374
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mHullProtectionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/util/ToggleState;->setAvailable(Z)V

    .line 3375
    const-string v2, "ARDrone3DeviceControllerSpeedSettingsStateHullProtectionChangedNotificationPresentKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-ne v2, v0, :cond_1

    .line 3376
    .local v0, "hullSet":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mHullProtectionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/util/ToggleState;->updateToggleState(Z)Z

    move-result v1

    .line 3378
    .end local v0    # "hullSet":Z
    :cond_0
    return v1

    .line 3375
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLastMotorsState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "lastMotorErrorBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3276
    const/4 v2, 0x0

    .line 3277
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 3278
    const-string v3, "ARDrone3DeviceControllerSettingsStateMotorErrorLastErrorChangedNotificationMotorErrorKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3280
    .local v0, "errorKey":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMotorState(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;)I

    move-result v1

    .line 3281
    .local v1, "lastError":I
    iget v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLastMotorError:I

    if-eq v1, v3, :cond_0

    .line 3282
    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLastMotorError:I

    .line 3283
    const/4 v2, 0x1

    .line 3286
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

    .line 2860
    const/4 v1, 0x0

    .line 2861
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2862
    const-string v4, "DeviceControllerCalibrationStateMagnetoCalibrationStartedChangedNotificationStartedKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 2863
    .local v0, "calibrationStarted":Z
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->updateMagnetoCalibrationProcedureState(I)Z

    move-result v1

    .line 2865
    .end local v0    # "calibrationStarted":Z
    :cond_0
    return v1

    :cond_1
    move v0, v3

    .line 2862
    goto :goto_0

    .restart local v0    # "calibrationStarted":Z
    :cond_2
    move v3, v2

    .line 2863
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

    .line 2815
    const/4 v2, 0x0

    .line 2816
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2817
    const-string v4, "DeviceControllerCalibrationStateMagnetoCalibrationRequiredStateNotificationRequiredKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 2818
    .local v0, "calibrationRequired":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2819
    .local v1, "calibrationStatus":I
    :goto_1
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->updateMagnetoCalibrationStatus(I)Z

    move-result v2

    .line 2820
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCalibrationState:Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/CalibrationState;->isDroneCalibrated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2821
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addFpvAlert(I)Z

    .line 2826
    .end local v0    # "calibrationRequired":Z
    .end local v1    # "calibrationStatus":I
    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v3

    .line 2817
    goto :goto_0

    .restart local v0    # "calibrationRequired":Z
    :cond_2
    move v1, v3

    .line 2818
    goto :goto_1

    .line 2823
    .restart local v1    # "calibrationStatus":I
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

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
    .line 2175
    const/4 v6, 0x0

    .line 2177
    .local v6, "shouldUpdate":Z
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMassStorageIdKey:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 2178
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMassStorageIdKey:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 2179
    .local v1, "massStorageContentForKey":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 2180
    iget-boolean v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMassStorageContentCmdSupported:Z

    if-nez v7, :cond_0

    .line 2181
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMassStorageContentCmdSupported:Z

    .line 2184
    :cond_0
    const-string v7, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotificationNbPudsKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPudCount:I

    .line 2185
    const-string v7, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotificationNbCrashLogsKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCrashLogCount:I

    .line 2186
    const-string v7, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotificationNbPhotosKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v4

    .line 2187
    .local v4, "newPhotoCount":S
    const-string v7, "DeviceControllerCommonStateDeprecatedMassStorageContentChangedNotificationNbVideosKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v5

    .line 2189
    .local v5, "newVideoCount":S
    add-int v3, v4, v5

    .line 2190
    .local v3, "newMediaCount":I
    iget v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPhotoCount:I

    iget v8, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoCount:I

    add-int v0, v7, v8

    .line 2191
    .local v0, "lastMediaCount":I
    sub-int v2, v3, v0

    .line 2193
    .local v2, "mediaCountDifference":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isOnTheGround()Z

    move-result v7

    if-nez v7, :cond_1

    if-lez v2, :cond_1

    .line 2195
    iget v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMediaCountTakenDuringRun:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMediaCountTakenDuringRun:I

    .line 2198
    :cond_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPhotoCount:I

    .line 2199
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoCount:I

    .line 2200
    const/4 v6, 0x1

    .line 2203
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
    .line 2140
    const/4 v3, 0x0

    .line 2142
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2143
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2145
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2146
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2147
    .local v1, "massStorageIdKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2149
    .local v2, "massStorageStateForKey":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 2150
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMassStorageIdKey:Ljava/lang/String;

    .line 2151
    const-string v4, "DeviceControllerCommonStateMassStorageStateListChangedNotificationNameKey"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMassStorageName:Ljava/lang/String;

    .line 2152
    const/4 v3, 0x1

    .line 2156
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
    .line 2160
    const/4 v2, 0x0

    .line 2162
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMassStorageIdKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2163
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMassStorageIdKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 2165
    .local v1, "massStorageInfoForKey":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 2166
    const-string v3, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationMassStorageIdKey"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 2167
    .local v0, "idKey":I
    const-string v3, "%s_%03d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMassStorageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMassStoragePath:Ljava/lang/String;

    .line 2168
    const/4 v2, 0x1

    .line 2171
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
    .line 2339
    const/4 v11, 0x0

    .line 2340
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2341
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 2342
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 2343
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxAltitudeChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2344
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 2346
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
    .line 2361
    const/4 v11, 0x0

    .line 2362
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2363
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxDistanceChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 2364
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxDistanceChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 2365
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxDistanceChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2366
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxDistanceState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 2368
    .end local v0    # "currentValue":F
    .end local v9    # "maxValue":F
    .end local v10    # "minValue":F
    :cond_0
    return v11
.end method

.method private updateMaxPitchSpeedState(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "maxPitchSpeedStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2383
    const/4 v11, 0x0

    .line 2384
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2385
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxPitchRollRotationSpeedChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 2386
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxPitchRollRotationSpeedChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 2387
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxPitchRollRotationSpeedChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2388
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxPitchSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 2390
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
    .line 2372
    const/4 v11, 0x0

    .line 2373
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2374
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 2375
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxTiltChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 2376
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPilotingSettingsStateMaxTiltChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2377
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxPitchState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 2379
    .end local v0    # "currentValue":F
    .end local v9    # "maxValue":F
    .end local v10    # "minValue":F
    :cond_0
    return v11
.end method

.method private updateMaxRotationSpeedState(Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "maxRotationSpeedBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2405
    const/4 v10, 0x0

    .line 2406
    .local v10, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2407
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 2408
    .local v9, "minValue":F
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 2409
    .local v8, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxRotationSpeedChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2410
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v8

    float-to-double v6, v9

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    move-result v10

    .line 2412
    .end local v0    # "currentValue":F
    .end local v8    # "maxValue":F
    .end local v9    # "minValue":F
    :cond_0
    return v10
.end method

.method private updateMaxVerticalSpeedState(Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "maxVerticalSpeedBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2394
    const/4 v10, 0x0

    .line 2395
    .local v10, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2396
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 2397
    .local v9, "minValue":F
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 2398
    .local v8, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerSpeedSettingsStateMaxVerticalSpeedChangedNotificationCurrentKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2399
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v8

    float-to-double v6, v9

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    move-result v10

    .line 2401
    .end local v0    # "currentValue":F
    .end local v8    # "maxValue":F
    .end local v9    # "minValue":F
    :cond_0
    return v10
.end method

.method private updateMemoryInfo(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "memoryBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2118
    const/4 v3, 0x0

    .line 2119
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 2121
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

    .line 2122
    .local v1, "massStorageIdKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2123
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2124
    .local v0, "infoDict":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2125
    const-string v6, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationSizeKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2126
    .local v2, "memorySizeInMBytes":I
    const-string v6, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationUsedSizeKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2127
    .local v4, "usedMemorySizeInMBytes":I
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mUsedMemorySizeInMByte:I

    if-ne v4, v6, :cond_1

    iget v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMemorySizeInMByte:I

    if-eq v2, v6, :cond_0

    .line 2128
    :cond_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mUsedMemorySizeInMByte:I

    .line 2129
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMemorySizeInMByte:I

    .line 2130
    const/4 v3, 0x1

    goto :goto_0

    .line 2136
    .end local v0    # "infoDict":Landroid/os/Bundle;
    .end local v1    # "massStorageIdKey":Ljava/lang/String;
    .end local v2    # "memorySizeInMBytes":I
    .end local v4    # "usedMemorySizeInMBytes":I
    :cond_2
    return v3
.end method

.method private updateMotionDetection(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "motionDetectionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 2426
    const/4 v1, 0x0

    .line 2427
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2428
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionDetectionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/util/ToggleState;->setAvailable(Z)V

    .line 2429
    const-string v2, "ARDrone3DeviceControllerPilotingSettingsStateMotionDetectionNotificationEnabledKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2430
    .local v0, "motionDetectionEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionDetectionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/util/ToggleState;->updateToggleState(Z)Z

    move-result v1

    .line 2432
    .end local v0    # "motionDetectionEnabled":Z
    :cond_0
    return v1

    .line 2429
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMotionState(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "motionStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1968
    const/4 v4, 0x0

    .line 1969
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1970
    const-string v5, "ARDrone3DeviceControllerPilotingStateMotionStateNotificationStateKey"

    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOTIONSTATE_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOTIONSTATE_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOTIONSTATE_STATE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOTIONSTATE_STATE_ENUM;->getValue()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1971
    .local v1, "motionStateValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOTIONSTATE_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOTIONSTATE_STATE_ENUM;

    move-result-object v0

    .line 1972
    .local v0, "motionState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOTIONSTATE_STATE_ENUM;
    iget v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionState:I

    .line 1974
    .local v3, "previousState":I
    sget-object v5, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOTIONSTATE_STATE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOTIONSTATE_STATE_ENUM;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1984
    const/4 v2, 0x0

    .line 1987
    .local v2, "newState":I
    :goto_0
    if-eq v3, v2, :cond_0

    .line 1988
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionState:I

    .line 1989
    const/4 v4, 0x1

    .line 1992
    .end local v0    # "motionState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOTIONSTATE_STATE_ENUM;
    .end local v1    # "motionStateValue":I
    .end local v2    # "newState":I
    .end local v3    # "previousState":I
    :cond_0
    return v4

    .line 1976
    .restart local v0    # "motionState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOTIONSTATE_STATE_ENUM;
    .restart local v1    # "motionStateValue":I
    .restart local v3    # "previousState":I
    :pswitch_0
    const/4 v2, 0x0

    .line 1977
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1979
    .end local v2    # "newState":I
    :pswitch_1
    const/4 v2, 0x1

    .line 1980
    .restart local v2    # "newState":I
    goto :goto_0

    .line 1974
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateMotorState(III)Z
    .locals 4
    .param p1, "motorIndex"    # I
    .param p2, "motorIds"    # I
    .param p3, "motorState"    # I

    .prologue
    .line 3325
    const/4 v1, 0x0

    .line 3326
    .local v1, "shouldUpdate":Z
    shr-int v2, p2, p1

    and-int/lit8 v0, v2, 0x1

    .line 3327
    .local v0, "motorConcerned":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3328
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotorsState:[I

    aget v2, v2, p1

    if-eq p3, v2, :cond_0

    .line 3329
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotorsState:[I

    aput p3, v2, p1

    .line 3330
    const/4 v1, 0x1

    .line 3336
    :cond_0
    :goto_0
    return v1

    .line 3332
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotorsState:[I

    aget v2, v2, p1

    if-eqz v2, :cond_0

    .line 3333
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotorsState:[I

    const/4 v3, 0x0

    aput v3, v2, p1

    .line 3334
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateMotorsSoftwareVersion(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "motorsSoftwareVersionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3313
    const/4 v0, 0x0

    .line 3314
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 3315
    const-string v2, "ARDrone3DeviceControllerSettingsStateMotorSoftwareVersionChangedNotificationVersionKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3316
    .local v1, "softwareVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotorSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3317
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotorSoftwareVersion:Ljava/lang/String;

    .line 3318
    const/4 v0, 0x1

    .line 3321
    .end local v1    # "softwareVersion":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private updateMotorsState(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "motorStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    .line 3255
    const/4 v3, 0x0

    .line 3256
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 3257
    const-string v4, "ARDrone3DeviceControllerSettingsStateMotorErrorStateChangedNotificationMotorIdsKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    and-int/lit16 v1, v4, 0xff

    .line 3258
    .local v1, "motorIds":I
    const-string v4, "ARDrone3DeviceControllerSettingsStateMotorErrorStateChangedNotificationMotorErrorKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;

    move-result-object v0

    .line 3260
    .local v0, "error":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMotorState(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;)I

    move-result v2

    .line 3261
    .local v2, "motorState":I
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotorState(III)Z

    move-result v3

    .line 3262
    invoke-direct {p0, v7, v1, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotorState(III)Z

    move-result v4

    or-int/2addr v3, v4

    .line 3263
    const/4 v4, 0x3

    invoke-direct {p0, v4, v1, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotorState(III)Z

    move-result v4

    or-int/2addr v3, v4

    .line 3264
    const/4 v4, 0x2

    invoke-direct {p0, v4, v1, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->updateMotorState(III)Z

    move-result v4

    or-int/2addr v3, v4

    .line 3266
    and-int/lit8 v4, v1, 0xf

    if-lez v4, :cond_1

    if-eqz v2, :cond_1

    .line 3267
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    const/16 v5, 0x9

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMotorErrorStringId(I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addMotorAlert(III)Z

    move-result v4

    or-int/2addr v3, v4

    .line 3272
    .end local v0    # "error":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;
    .end local v1    # "motorIds":I
    .end local v2    # "motorState":I
    :cond_0
    :goto_0
    return v3

    .line 3269
    .restart local v0    # "error":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_SETTINGSSTATE_MOTORERRORSTATECHANGED_MOTORERROR_ENUM;
    .restart local v1    # "motorIds":I
    .restart local v2    # "motorState":I
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeMotorAlert()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0
.end method

.method private updateMoveToChanged(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "moveToStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v10, 0x0

    .line 1813
    const/4 v0, 0x0

    .line 1814
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1815
    const/4 v0, 0x1

    .line 1816
    const-string v1, "ARDrone3DeviceControllerPilotingStateMoveToChangedNotificationLatitudeKey"

    invoke-virtual {p1, v1, v10, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 1817
    .local v2, "latitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStateMoveToChangedNotificationLongitudeKey"

    invoke-virtual {p1, v1, v10, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1818
    .local v4, "longitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStateMoveToChangedNotificationAltitudeKey"

    invoke-virtual {p1, v1, v10, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 1819
    .local v6, "altitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStateMoveToChangedNotificationStatusKey"

    sget-object v9, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOVETOCHANGED_STATUS_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOVETOCHANGED_STATUS_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOVETOCHANGED_STATUS_ENUM;

    invoke-virtual {v9}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOVETOCHANGED_STATUS_ENUM;->getValue()I

    move-result v9

    invoke-virtual {p1, v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1820
    .local v8, "statusValue":I
    sget-object v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOVETOCHANGED_STATUS_ENUM:[I

    invoke-static {v8}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOVETOCHANGED_STATUS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOVETOCHANGED_STATUS_ENUM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_MOVETOCHANGED_STATUS_ENUM;->ordinal()I

    move-result v9

    aget v1, v1, v9

    packed-switch v1, :pswitch_data_0

    .line 1838
    :goto_0
    new-instance v1, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>(DDD)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMoveToLocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 1840
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    .end local v6    # "altitude":D
    .end local v8    # "statusValue":I
    :cond_0
    return v0

    .line 1822
    .restart local v2    # "latitude":D
    .restart local v4    # "longitude":D
    .restart local v6    # "altitude":D
    .restart local v8    # "statusValue":I
    :pswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMoveToStatus:I

    goto :goto_0

    .line 1825
    :pswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMoveToStatus:I

    goto :goto_0

    .line 1828
    :pswitch_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMoveToStatus:I

    goto :goto_0

    .line 1831
    :pswitch_3
    const/4 v1, 0x3

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMoveToStatus:I

    goto :goto_0

    .line 1835
    :pswitch_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMoveToStatus:I

    goto :goto_0

    .line 1820
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private updatePOIChanged(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "poiStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v10, 0x0

    .line 1844
    const/4 v0, 0x0

    .line 1845
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1846
    const/4 v0, 0x1

    .line 1847
    const-string v1, "ARDrone3DeviceControllerPilotingStatePilotedPOINotificationAltitudeKey"

    invoke-virtual {p1, v1, v10, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 1848
    .local v6, "altitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStatePilotedPOINotificationLatitudeKey"

    invoke-virtual {p1, v1, v10, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 1849
    .local v2, "latitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStatePilotedPOINotificationLongitudeKey"

    invoke-virtual {p1, v1, v10, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1850
    .local v4, "longitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStatePilotedPOINotificationStatusKey"

    sget-object v9, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_PILOTEDPOI_STATUS_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_PILOTEDPOI_STATUS_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_PILOTEDPOI_STATUS_ENUM;

    invoke-virtual {v9}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_PILOTEDPOI_STATUS_ENUM;->getValue()I

    move-result v9

    invoke-virtual {p1, v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1851
    .local v8, "statusValue":I
    sget-object v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_PILOTEDPOI_STATUS_ENUM:[I

    invoke-static {v8}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_PILOTEDPOI_STATUS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_PILOTEDPOI_STATUS_ENUM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_PILOTEDPOI_STATUS_ENUM;->ordinal()I

    move-result v9

    aget v1, v1, v9

    packed-switch v1, :pswitch_data_0

    .line 1869
    :goto_0
    new-instance v1, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>(DDD)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOILocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .line 1871
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    .end local v6    # "altitude":D
    .end local v8    # "statusValue":I
    :cond_0
    return v0

    .line 1853
    .restart local v2    # "latitude":D
    .restart local v4    # "longitude":D
    .restart local v6    # "altitude":D
    .restart local v8    # "statusValue":I
    :pswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOIStatus:I

    goto :goto_0

    .line 1856
    :pswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOIStatus:I

    goto :goto_0

    .line 1859
    :pswitch_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOIStatus:I

    goto :goto_0

    .line 1862
    :pswitch_3
    const/4 v1, 0x3

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOIStatus:I

    goto :goto_0

    .line 1866
    :pswitch_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOIStatus:I

    goto :goto_0

    .line 1851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private updatePhotoRecordEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "photoRecordEventBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2498
    if-eqz p1, :cond_0

    .line 2499
    const-string v2, "ARDrone3DeviceControllerMediaRecordEventPictureEventChangedNotificationEventKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->eARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    .line 2500
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->getValue()I

    move-result v3

    .line 2499
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2501
    .local v1, "eventValue":I
    const-string v2, "ARDrone3DeviceControllerMediaRecordEventPictureEventChangedNotificationErrorKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->eARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    .line 2502
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->getValue()I

    move-result v3

    .line 2501
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2503
    .local v0, "errorValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    move-result-object v2

    .line 2504
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    move-result-object v3

    .line 2503
    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->onPhotoEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;)V

    .line 2506
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
    .line 2509
    if-eqz p1, :cond_0

    .line 2510
    const-string v2, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedV2NotificationStateKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->getValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2511
    .local v1, "stateValue":I
    const-string v2, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedV2NotificationErrorKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->getValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2512
    .local v0, "errorValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    move-result-object v2

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->onPhotoStateChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_ERROR_ENUM;)Z

    move-result v2

    .line 2514
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

    .line 2992
    const/4 v3, 0x0

    .line 2993
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2994
    const-string v6, "ARDrone3DeviceControllerPictureSettingsStatePictureFormatChangedNotificationTypeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2995
    .local v1, "pictureFormatValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    move-result-object v0

    .line 2996
    .local v0, "pictureFormat":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPictureFormat:I

    .line 2997
    .local v2, "previousPictureFormat":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 3012
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPictureFormat:I

    .line 3015
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPictureFormat:I

    if-eq v2, v6, :cond_1

    move v3, v4

    .line 3017
    .end local v0    # "pictureFormat":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    .end local v1    # "pictureFormatValue":I
    .end local v2    # "previousPictureFormat":I
    :cond_0
    :goto_1
    return v3

    .line 2999
    .restart local v0    # "pictureFormat":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    .restart local v1    # "pictureFormatValue":I
    .restart local v2    # "previousPictureFormat":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPictureFormat:I

    goto :goto_0

    .line 3002
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPictureFormat:I

    goto :goto_0

    .line 3005
    :pswitch_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPictureFormat:I

    goto :goto_0

    .line 3008
    :pswitch_3
    const/4 v6, 0x3

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPictureFormat:I

    goto :goto_0

    :cond_1
    move v3, v5

    .line 3015
    goto :goto_1

    .line 2997
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
    .locals 5
    .param p1, "pilotingStateAlert"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3130
    if-eqz p1, :cond_1

    .line 3131
    const-string v3, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3136
    .local v0, "alertState":I
    sget-object v3, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3159
    const/4 v2, 0x0

    .line 3160
    .local v2, "type":I
    const/4 v1, 0x0

    .line 3164
    .local v1, "message":I
    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v1, v4}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addPermanentAlert(III)Z

    move-result v3

    .line 3166
    .end local v0    # "alertState":I
    .end local v1    # "message":I
    .end local v2    # "type":I
    :goto_1
    return v3

    .line 3138
    .restart local v0    # "alertState":I
    :pswitch_0
    const/4 v2, 0x1

    .line 3139
    .restart local v2    # "type":I
    const v1, 0x7f110012

    .line 3140
    .restart local v1    # "message":I
    goto :goto_0

    .line 3142
    .end local v1    # "message":I
    .end local v2    # "type":I
    :pswitch_1
    const/4 v2, 0x2

    .line 3143
    .restart local v2    # "type":I
    const v1, 0x7f110013

    .line 3144
    .restart local v1    # "message":I
    goto :goto_0

    .line 3146
    .end local v1    # "message":I
    .end local v2    # "type":I
    :pswitch_2
    const/4 v2, 0x3

    .line 3147
    .restart local v2    # "type":I
    const v1, 0x7f110014

    .line 3148
    .restart local v1    # "message":I
    goto :goto_0

    .line 3150
    .end local v1    # "message":I
    .end local v2    # "type":I
    :pswitch_3
    const/4 v2, 0x4

    .line 3151
    .restart local v2    # "type":I
    const v1, 0x7f110015

    .line 3152
    .restart local v1    # "message":I
    goto :goto_0

    .line 3154
    .end local v1    # "message":I
    .end local v2    # "type":I
    :pswitch_4
    const/4 v2, 0x5

    .line 3155
    .restart local v2    # "type":I
    const v1, 0x7f110745

    .line 3156
    .restart local v1    # "message":I
    goto :goto_0

    .line 3164
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removePermanentAlert()Z

    move-result v3

    goto :goto_1

    .line 3166
    .end local v0    # "alertState":I
    .end local v1    # "message":I
    .end local v2    # "type":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 3136
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

.method private updatePositionState(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "positionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide v8, 0x407f400000000000L    # 500.0

    .line 2256
    const/4 v0, 0x0

    .line 2257
    .local v0, "shouldUpdate":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsFixed:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2258
    const-string v1, "ARDrone3DeviceControllerPilotingStatePositionChangedNotificationLatitudeKey"

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 2259
    .local v2, "latitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStatePositionChangedNotificationLongitudeKey"

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 2260
    .local v4, "longitude":D
    const-string v1, "ARDrone3DeviceControllerPilotingStatePositionChangedNotificationAltitudeKey"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v1, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 2261
    .local v6, "altitude":D
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPosition:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateLocation(DDDJ)Z

    move-result v0

    .line 2262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocationWithGpsFixed:Z

    .line 2264
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
    .line 2003
    const/4 v1, 0x0

    .line 2004
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 2005
    const-string v2, "DeviceControllerSettingsStateProductNameChangedNotificationNameKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2006
    .local v0, "productName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2007
    const/4 v1, 0x1

    .line 2008
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mProductName:Ljava/lang/String;

    .line 2010
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiNameState:Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateWifiName(Ljava/lang/String;)Z

    .line 2012
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
    .line 2780
    const/4 v2, 0x0

    .line 2781
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 2782
    const-string v3, "DeviceControllerSettingsStateProductVersionChangedNotificationSoftwareKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2783
    .local v1, "productSoftwareVersion":Ljava/lang/String;
    const-string v3, "DeviceControllerSettingsStateProductVersionChangedNotificationHardwareKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2784
    .local v0, "productHardwareVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2785
    const/4 v2, 0x1

    .line 2786
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSoftwareVersion:Ljava/lang/String;

    .line 2788
    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mHardwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2789
    const/4 v2, 0x1

    .line 2790
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mHardwareVersion:Ljava/lang/String;

    .line 2793
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

    .line 2943
    const/4 v3, 0x0

    .line 2944
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2945
    const-string v6, "ARDrone3DeviceControllerPictureSettingsStateVideoRecordingModeChangedNotificationModeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2946
    .local v2, "recordingModeValue":I
    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;

    move-result-object v1

    .line 2947
    .local v1, "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRecordingMode:I

    .line 2948
    .local v0, "previousMode":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2957
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRecordingMode:I

    .line 2960
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRecordingMode:I

    if-eq v0, v6, :cond_1

    move v3, v4

    .line 2962
    .end local v0    # "previousMode":I
    .end local v1    # "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    .end local v2    # "recordingModeValue":I
    :cond_0
    :goto_1
    return v3

    .line 2950
    .restart local v0    # "previousMode":I
    .restart local v1    # "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    .restart local v2    # "recordingModeValue":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRecordingMode:I

    goto :goto_0

    .line 2953
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRecordingMode:I

    goto :goto_0

    :cond_1
    move v3, v5

    .line 2960
    goto :goto_1

    .line 2948
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
    .line 2097
    const/4 v9, 0x0

    .line 2098
    .local v9, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2099
    const-string v1, "ARDrone3DeviceControllerGPSSettingsStateReturnHomeDelayChangedNotificationDelayKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 2100
    .local v0, "returnHomeDelay":S
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeDelay:Lcom/parrot/freeflight/util/DoubleBoundedState;

    int-to-double v2, v0

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v9

    .line 2102
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

    .line 2016
    const/4 v3, 0x0

    .line 2017
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2018
    const-string v6, "ARDrone3DeviceControllerPilotingStateNavigateHomeStateChangedNotificationStateKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2019
    .local v2, "returnHomeStatusValue":I
    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;

    move-result-object v1

    .line 2020
    .local v1, "returnHomeStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeStatus:I

    .line 2021
    .local v0, "oldStatus":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2033
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeStatus:I

    .line 2036
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeStatus:I

    if-eq v0, v6, :cond_1

    move v3, v4

    .line 2038
    .end local v0    # "oldStatus":I
    .end local v1    # "returnHomeStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;
    .end local v2    # "returnHomeStatusValue":I
    :cond_0
    :goto_1
    return v3

    .line 2023
    .restart local v0    # "oldStatus":I
    .restart local v1    # "returnHomeStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_NAVIGATEHOMESTATECHANGED_STATE_ENUM;
    .restart local v2    # "returnHomeStatusValue":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeStatus:I

    goto :goto_0

    .line 2028
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeStatus:I

    goto :goto_0

    :cond_1
    move v3, v5

    .line 2036
    goto :goto_1

    .line 2021
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
    .line 2068
    const/4 v3, 0x0

    .line 2069
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2070
    const-string v4, "ARDrone3DeviceControllerGPSStateHomeTypeChosenChangedNotificationTypeKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2071
    .local v2, "returnHomeTypeValue":I
    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;

    move-result-object v1

    .line 2074
    .local v1, "returnHomeTypeDroneEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2085
    const/4 v0, -0x1

    .line 2088
    .local v0, "returnHomeTypeDrone":I
    :goto_0
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeTypeDrone:I

    if-eq v0, v4, :cond_0

    .line 2089
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeTypeDrone:I

    .line 2090
    const/4 v3, 0x1

    .line 2093
    .end local v0    # "returnHomeTypeDrone":I
    .end local v1    # "returnHomeTypeDroneEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;
    .end local v2    # "returnHomeTypeValue":I
    :cond_0
    return v3

    .line 2076
    .restart local v1    # "returnHomeTypeDroneEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSTATE_HOMETYPECHOSENCHANGED_TYPE_ENUM;
    .restart local v2    # "returnHomeTypeValue":I
    :pswitch_0
    const/4 v0, 0x1

    .line 2077
    .restart local v0    # "returnHomeTypeDrone":I
    goto :goto_0

    .line 2079
    .end local v0    # "returnHomeTypeDrone":I
    :pswitch_1
    const/4 v0, 0x0

    .line 2080
    .restart local v0    # "returnHomeTypeDrone":I
    goto :goto_0

    .line 2082
    .end local v0    # "returnHomeTypeDrone":I
    :pswitch_2
    const/4 v0, 0x2

    .line 2083
    .restart local v0    # "returnHomeTypeDrone":I
    goto :goto_0

    .line 2074
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
    .line 2042
    const/4 v3, 0x0

    .line 2043
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2044
    const-string v4, "ARDrone3DeviceControllerGPSSettingsStateHomeTypeChangedNotificationTypeKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2045
    .local v2, "returnHomeTypeValue":I
    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;

    move-result-object v1

    .line 2048
    .local v1, "returnHomeTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM:[I

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2056
    const/4 v0, -0x1

    .line 2059
    .local v0, "returnHomeType":I
    :goto_0
    iget v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeType:I

    if-eq v0, v4, :cond_0

    .line 2060
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeType:I

    .line 2061
    const/4 v3, 0x1

    .line 2064
    .end local v0    # "returnHomeType":I
    .end local v1    # "returnHomeTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;
    .end local v2    # "returnHomeTypeValue":I
    :cond_0
    return v3

    .line 2050
    .restart local v1    # "returnHomeTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;
    .restart local v2    # "returnHomeTypeValue":I
    :pswitch_0
    const/4 v0, 0x1

    .line 2051
    .restart local v0    # "returnHomeType":I
    goto :goto_0

    .line 2053
    .end local v0    # "returnHomeType":I
    :pswitch_1
    const/4 v0, 0x0

    .line 2054
    .restart local v0    # "returnHomeType":I
    goto :goto_0

    .line 2048
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
    .line 2207
    const/4 v1, 0x0

    .line 2208
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2209
    const-string v2, "DeviceControllerCommonStateWifiSignalChangedNotificationRssiKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 2210
    .local v0, "rssi":S
    iget-short v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRssi:S

    if-eq v0, v2, :cond_0

    .line 2211
    iput-short v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRssi:S

    .line 2212
    const/4 v1, 0x1

    .line 2215
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
    .line 1876
    const/4 v0, 0x0

    .line 1877
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1878
    const-string v1, "DeviceControllerRunStateRunIdChangedNotificationRunIdKey"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRunId:Ljava/lang/String;

    .line 1879
    const/4 v0, 0x1

    .line 1881
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
    .line 2896
    const/4 v11, 0x0

    .line 2897
    .local v11, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2898
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateSaturationChangedNotificationMinKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 2899
    .local v10, "minValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateSaturationChangedNotificationMaxKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 2900
    .local v9, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateSaturationChangedNotificationValueKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2901
    .local v0, "currentValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSaturationState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v9

    float-to-double v6, v10

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v11

    .line 2903
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
    .line 3170
    const/4 v7, 0x0

    .line 3171
    .local v7, "update":Z
    if-eqz p1, :cond_4

    .line 3172
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;

    move-result-object v5

    .line 3174
    .local v5, "sensorsNameArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_4

    .line 3175
    aget-object v3, v5, v1

    .line 3177
    .local v3, "sensorEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;
    sget-object v8, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 3194
    const/4 v0, 0x0

    .line 3198
    .local v0, "alertType":I
    :goto_1
    if-eqz v0, :cond_1

    .line 3199
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 3200
    .local v2, "sensorBundle":Landroid/os/Bundle;
    const/4 v6, 0x1

    .line 3201
    .local v6, "stateOK":Z
    if-eqz v2, :cond_0

    .line 3202
    const-string v8, "DeviceControllerCommonStateSensorsStatesListChangedNotificationSensorStateKey"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    .line 3204
    .local v4, "sensorState":B
    if-eqz v4, :cond_2

    const/4 v6, 0x1

    .line 3206
    .end local v4    # "sensorState":B
    :cond_0
    :goto_2
    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v8, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeSensorAlert(I)Z

    move-result v8

    :goto_3
    or-int/2addr v7, v8

    .line 3174
    .end local v2    # "sensorBundle":Landroid/os/Bundle;
    .end local v6    # "stateOK":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3179
    .end local v0    # "alertType":I
    :pswitch_0
    const/16 v0, 0xa

    .line 3180
    .restart local v0    # "alertType":I
    goto :goto_1

    .line 3182
    .end local v0    # "alertType":I
    :pswitch_1
    const/16 v0, 0xb

    .line 3183
    .restart local v0    # "alertType":I
    goto :goto_1

    .line 3185
    .end local v0    # "alertType":I
    :pswitch_2
    const/16 v0, 0xc

    .line 3186
    .restart local v0    # "alertType":I
    goto :goto_1

    .line 3188
    .end local v0    # "alertType":I
    :pswitch_3
    const/16 v0, 0xd

    .line 3189
    .restart local v0    # "alertType":I
    goto :goto_1

    .line 3191
    .end local v0    # "alertType":I
    :pswitch_4
    const/16 v0, 0xe

    .line 3192
    .restart local v0    # "alertType":I
    goto :goto_1

    .line 3204
    .restart local v2    # "sensorBundle":Landroid/os/Bundle;
    .restart local v4    # "sensorState":B
    .restart local v6    # "stateOK":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 3206
    .end local v4    # "sensorState":B
    :cond_3
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v8, v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addSensorAlert(I)Z

    move-result v8

    goto :goto_3

    .line 3210
    .end local v0    # "alertType":I
    .end local v1    # "i":I
    .end local v2    # "sensorBundle":Landroid/os/Bundle;
    .end local v3    # "sensorEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;
    .end local v5    # "sensorsNameArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_SENSORSSTATESLISTCHANGED_SENSORNAME_ENUM;
    .end local v6    # "stateOK":Z
    :cond_4
    return v7

    .line 3177
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

    .line 2446
    const/4 v2, 0x0

    .line 2447
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2448
    const-string v3, "ARDrone3DeviceControllerPilotingStateSpeedChangedNotificationSpeedXKey"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeedX:F

    .line 2449
    const-string v3, "ARDrone3DeviceControllerPilotingStateSpeedChangedNotificationSpeedYKey"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeedY:F

    .line 2450
    const-string v3, "ARDrone3DeviceControllerPilotingStateSpeedChangedNotificationSpeedZKey"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeedZ:F

    .line 2451
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeed:D

    .line 2453
    .local v0, "oldSpeed":D
    iget v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeedX:F

    float-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeedY:F

    float-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    iget v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeedZ:F

    float-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeed:D

    .line 2454
    iget-wide v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeed:D

    cmpl-double v3, v0, v4

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2456
    .end local v0    # "oldSpeed":D
    :cond_0
    :goto_0
    return v2

    .line 2454
    .restart local v0    # "oldSpeed":D
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateTargetImageDetectionState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "targetImageDetectionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2309
    const/4 v1, 0x0

    .line 2310
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2311
    const-string v3, "FollowMeDeviceControllerTargetImageDetectionStateNotificationStateKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2314
    .local v2, "targetImageDetectionEnumValue":I
    sget-object v3, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_FOLLOW_ME_IMAGE_DETECTION_STATUS_ENUM:[I

    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_IMAGE_DETECTION_STATUS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_IMAGE_DETECTION_STATUS_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_IMAGE_DETECTION_STATUS_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2326
    const/4 v0, -0x1

    .line 2330
    .local v0, "newTargetImageDetectionState":I
    :goto_0
    iget v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTargetImageDetectionState:I

    if-eq v0, v3, :cond_0

    .line 2331
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTargetImageDetectionState:I

    .line 2332
    const/4 v1, 0x1

    .line 2335
    .end local v0    # "newTargetImageDetectionState":I
    .end local v2    # "targetImageDetectionEnumValue":I
    :cond_0
    return v1

    .line 2316
    .restart local v2    # "targetImageDetectionEnumValue":I
    :pswitch_0
    const/4 v0, 0x0

    .line 2317
    .restart local v0    # "newTargetImageDetectionState":I
    goto :goto_0

    .line 2319
    .end local v0    # "newTargetImageDetectionState":I
    :pswitch_1
    const/4 v0, 0x1

    .line 2320
    .restart local v0    # "newTargetImageDetectionState":I
    goto :goto_0

    .line 2322
    .end local v0    # "newTargetImageDetectionState":I
    :pswitch_2
    const/4 v0, 0x2

    .line 2323
    .restart local v0    # "newTargetImageDetectionState":I
    goto :goto_0

    .line 2314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateTargetTrajectoryState(Landroid/os/Bundle;)Z
    .locals 20
    .param p1, "targetTrajectoryBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2290
    const/4 v4, 0x0

    .line 2291
    .local v4, "shouldUpdate":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsFixed:Z

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    .line 2292
    const-string v5, "FollowMeDeviceControllerTargetTrajectoryNotificationLatitudeKey"

    const-wide v18, 0x407f400000000000L    # 500.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 2293
    .local v6, "latitude":D
    const-string v5, "FollowMeDeviceControllerTargetTrajectoryNotificationLongitudeKey"

    const-wide v18, 0x407f400000000000L    # 500.0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 2294
    .local v8, "longitude":D
    const-string v5, "FollowMeDeviceControllerTargetTrajectoryNotificationAltitudeKey"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    float-to-double v10, v5

    .line 2295
    .local v10, "altitude":D
    const-string v5, "FollowMeDeviceControllerTargetTrajectoryNotificationNorthSpeedKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    float-to-double v12, v5

    .line 2296
    .local v12, "northSpeed":D
    const-string v5, "FollowMeDeviceControllerTargetTrajectoryNotificationEastSpeedKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    float-to-double v14, v5

    .line 2297
    .local v14, "eastSpeed":D
    const-string v5, "FollowMeDeviceControllerTargetTrajectoryNotificationDownSpeedKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v16, v0

    .line 2298
    .local v16, "downSpeed":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    if-nez v5, :cond_1

    .line 2299
    new-instance v5, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    invoke-direct/range {v5 .. v17}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;-><init>(DDDDDD)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    .line 2300
    const/4 v4, 0x1

    .line 2305
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v10    # "altitude":D
    .end local v12    # "northSpeed":D
    .end local v14    # "eastSpeed":D
    .end local v16    # "downSpeed":D
    :cond_0
    :goto_0
    return v4

    .line 2302
    .restart local v6    # "latitude":D
    .restart local v8    # "longitude":D
    .restart local v10    # "altitude":D
    .restart local v12    # "northSpeed":D
    .restart local v14    # "eastSpeed":D
    .restart local v16    # "downSpeed":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    invoke-virtual/range {v5 .. v17}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->update(DDDDDD)Z

    move-result v4

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

    .line 3113
    const/4 v12, 0x0

    .line 3114
    .local v12, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 3115
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotificationEnabledKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    if-eqz v1, :cond_2

    move v9, v8

    .line 3117
    .local v9, "enabled":Z
    :goto_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTimeLapseEnabled:Z

    if-eq v1, v9, :cond_0

    .line 3118
    iput-boolean v9, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTimeLapseEnabled:Z

    .line 3119
    const/4 v12, 0x1

    .line 3121
    :cond_0
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotificationIntervalKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 3122
    .local v0, "currentValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotificationMaxIntervalKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 3123
    .local v10, "maxValue":F
    const-string v1, "ARDrone3DeviceControllerPictureSettingsStateTimelapseChangedNotificationMinIntervalKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    .line 3124
    .local v11, "minValue":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTimeLapseInterval:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, v0

    float-to-double v4, v10

    float-to-double v6, v11

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v1

    or-int/2addr v12, v1

    .line 3126
    .end local v0    # "currentValue":F
    .end local v9    # "enabled":Z
    .end local v10    # "maxValue":F
    .end local v11    # "minValue":F
    :cond_1
    return v12

    .line 3115
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
    .line 2478
    if-eqz p1, :cond_0

    .line 2479
    const-string v2, "ARDrone3DeviceControllerMediaRecordEventVideoEventChangedNotificationEventKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;->eARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;

    .line 2480
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;->getValue()I

    move-result v3

    .line 2479
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2481
    .local v1, "eventValue":I
    const-string v2, "ARDrone3DeviceControllerMediaRecordEventVideoEventChangedNotificationErrorKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;->eARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;

    .line 2482
    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;->getValue()I

    move-result v3

    .line 2481
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2483
    .local v0, "errorValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;

    move-result-object v2

    .line 2484
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;

    move-result-object v3

    .line 2483
    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->onVideoEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_EVENT_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDEVENT_VIDEOEVENTCHANGED_ERROR_ENUM;)V

    .line 2486
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
    .line 2489
    if-eqz p1, :cond_0

    .line 2490
    const-string v2, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedV2NotificationStateKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;->getValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2491
    .local v1, "stateValue":I
    const-string v2, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedV2NotificationErrorKey"

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;->eARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;->getValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2492
    .local v0, "errorValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;

    move-result-object v2

    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->onVideoStateChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_STATE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGEDV2_ERROR_ENUM;)Z

    move-result v2

    .line 2494
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

    .line 3021
    const/4 v1, 0x0

    .line 3022
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 3023
    const-string v6, "ARDrone3DeviceControllerPictureSettingsStateVideoResolutionsChangedNotificationTypeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3024
    .local v3, "videoResolutionsValue":I
    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;

    move-result-object v2

    .line 3025
    .local v2, "videoResolutions":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoResolutions:I

    .line 3026
    .local v0, "previousMode":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 3035
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoResolutions:I

    .line 3038
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoResolutions:I

    if-eq v0, v6, :cond_1

    move v1, v4

    .line 3040
    .end local v0    # "previousMode":I
    .end local v2    # "videoResolutions":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;
    .end local v3    # "videoResolutionsValue":I
    :cond_0
    :goto_1
    return v1

    .line 3028
    .restart local v0    # "previousMode":I
    .restart local v2    # "videoResolutions":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;
    .restart local v3    # "videoResolutionsValue":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoResolutions:I

    goto :goto_0

    .line 3031
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoResolutions:I

    goto :goto_0

    :cond_1
    move v1, v5

    .line 3038
    goto :goto_1

    .line 3026
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

    .line 3044
    const/4 v1, 0x0

    .line 3045
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 3046
    const-string v6, "ARDrone3DeviceControllerMediaStreamingStateVideoStreamModeChangedNotificationModeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3047
    .local v3, "videoStreamModeValue":I
    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;

    move-result-object v2

    .line 3048
    .local v2, "videoStreamMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoStreamMode:I

    .line 3049
    .local v0, "previousMode":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 3064
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoStreamMode:I

    if-eq v0, v6, :cond_1

    move v1, v4

    .line 3067
    .end local v0    # "previousMode":I
    .end local v2    # "videoStreamMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;
    .end local v3    # "videoStreamModeValue":I
    :cond_0
    :goto_1
    return v1

    .line 3051
    .restart local v0    # "previousMode":I
    .restart local v2    # "videoStreamMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;
    .restart local v3    # "videoStreamModeValue":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoStreamMode:I

    goto :goto_0

    .line 3054
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoStreamMode:I

    goto :goto_0

    .line 3057
    :pswitch_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoStreamMode:I

    goto :goto_0

    .line 3060
    :pswitch_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoStreamMode:I

    goto :goto_0

    :cond_1
    move v1, v5

    .line 3064
    goto :goto_1

    .line 3049
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

    .line 2907
    const/4 v1, 0x0

    .line 2908
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2909
    const-string v6, "ARDrone3DeviceControllerPictureSettingsStateAutoWhiteBalanceChangedNotificationTypeKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2910
    .local v3, "whiteBalanceModeValue":I
    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    move-result-object v2

    .line 2911
    .local v2, "whiteBalanceMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWhiteBalanceState:I

    .line 2912
    .local v0, "previousState":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2934
    const/4 v6, -0x1

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWhiteBalanceState:I

    .line 2937
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWhiteBalanceState:I

    if-eq v0, v6, :cond_1

    move v1, v4

    .line 2939
    .end local v0    # "previousState":I
    .end local v2    # "whiteBalanceMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    .end local v3    # "whiteBalanceModeValue":I
    :cond_0
    :goto_1
    return v1

    .line 2914
    .restart local v0    # "previousState":I
    .restart local v2    # "whiteBalanceMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    .restart local v3    # "whiteBalanceModeValue":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWhiteBalanceState:I

    goto :goto_0

    .line 2918
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWhiteBalanceState:I

    goto :goto_0

    .line 2922
    :pswitch_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWhiteBalanceState:I

    goto :goto_0

    .line 2926
    :pswitch_3
    const/4 v6, 0x3

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWhiteBalanceState:I

    goto :goto_0

    .line 2930
    :pswitch_4
    const/4 v6, 0x4

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWhiteBalanceState:I

    goto :goto_0

    :cond_1
    move v1, v5

    .line 2937
    goto :goto_1

    .line 2912
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
    .line 2682
    const/4 v1, 0x0

    .line 2683
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2684
    const-string v2, "DeviceControllerSettingsStateAutoCountryChangedNotificationAutomaticKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2685
    .local v0, "autoCountry":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateWifiAutoCountryMode(Z)Z

    move-result v1

    .line 2686
    if-eqz v1, :cond_0

    .line 2687
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->restartNetworkAuthorizedCountryScan()V

    .line 2690
    .end local v0    # "autoCountry":Z
    :cond_0
    return v1

    .line 2684
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiCommandsAvailability(Z)V
    .locals 1
    .param p1, "availability"    # Z

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiNameState:Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateAvailability(Z)Z

    .line 1998
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateAvailability(Z)Z

    .line 1999
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateAvailability(Z)Z

    .line 2000
    return-void
.end method

.method private updateWifiCountryState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "wifiCountryBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2669
    const/4 v2, 0x0

    .line 2670
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2671
    const-string v3, "DeviceControllerSettingsStateCountryChangedNotificationCodeKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2672
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0    # "code":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/WifiCountry;->getWifiCountry(Ljava/lang/String;)Lcom/parrot/freeflight/piloting/model/WifiCountry;

    move-result-object v1

    .line 2673
    .local v1, "currentCountry":Lcom/parrot/freeflight/piloting/model/WifiCountry;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateWifiCountryId(Lcom/parrot/freeflight/piloting/model/WifiCountry;)Z

    move-result v2

    .line 2674
    if-eqz v2, :cond_0

    .line 2675
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->restartNetworkAuthorizedCountryScan()V

    .line 2678
    .end local v1    # "currentCountry":Lcom/parrot/freeflight/piloting/model/WifiCountry;
    :cond_0
    return v2

    .line 2672
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
    .line 2694
    const/4 v2, 0x0

    .line 2695
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2696
    const-string v3, "DeviceControllerWifiSettingsStateOutdoorSettingsChangedNotificationOutdoorKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    .line 2697
    .local v1, "outdoorState":B
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2698
    .local v0, "outdoorMode":Z
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiLocalisationState:Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateOutdoorMode(Z)Z

    move-result v2

    .line 2699
    if-eqz v2, :cond_0

    .line 2700
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->filterAuthorizedChannels()V

    .line 2701
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAuthChannelFinalList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateAuthorizedWifiBandList(Ljava/util/List;)Z

    .line 2704
    .end local v0    # "outdoorMode":Z
    .end local v1    # "outdoorState":B
    :cond_0
    return v2

    .line 2697
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
    .line 2743
    if-eqz p1, :cond_2

    .line 2744
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2745
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

    .line 2746
    .local v6, "ssid":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2747
    .local v3, "networkData":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 2748
    const-string v7, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationSsidKey"

    .line 2749
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2750
    const-string v7, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationBandKey"

    .line 2751
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2752
    .local v0, "band":I
    const-string v7, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationRssiKey"

    .line 2753
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v5

    .line 2754
    .local v5, "rssi":S
    const-string v7, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationChannelKey"

    .line 2755
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    .line 2757
    .local v2, "channelByte":B
    and-int/lit16 v1, v2, 0xff

    .line 2759
    .local v1, "channel":I
    if-eqz v1, :cond_0

    .line 2760
    new-instance v4, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;

    int-to-float v9, v5

    if-eqz v6, :cond_1

    move-object v7, v6

    :goto_1
    invoke-direct {v4, v0, v1, v9, v7}, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;-><init>(IIFLjava/lang/String;)V

    .line 2761
    .local v4, "networkStatus":Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2760
    .end local v4    # "networkStatus":Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;
    :cond_1
    const-string v7, ""

    goto :goto_1

    .line 2766
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
    .line 2638
    const/4 v2, 0x0

    .line 2639
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 2640
    const-string v4, "ARDrone3DeviceControllerNetworkSettingsStateWifiSecurityNotificationTypeKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;

    move-result-object v3

    .line 2642
    .local v3, "wifiSecurity":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;
    sget-object v4, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2652
    const/4 v1, -0x1

    .line 2655
    .local v1, "security":I
    :goto_0
    const/4 v0, 0x0

    .line 2656
    .local v0, "passphrase":Ljava/lang/String;
    const-string v4, "ARDrone3DeviceControllerNetworkSettingsStateWifiSecurityNotificationKeyTypeKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_KEYTYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_KEYTYPE_PLAIN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_KEYTYPE_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_KEYTYPE_ENUM;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 2657
    const-string v4, "ARDrone3DeviceControllerNetworkSettingsStateWifiSecurityNotificationKeyKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2659
    :cond_0
    if-nez v0, :cond_1

    .line 2660
    const-string v0, ""

    .line 2662
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiNameState:Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateWifiSecurity(I)Z

    move-result v2

    .line 2663
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiNameState:Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateWpa2Passphrase(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 2665
    .end local v0    # "passphrase":Ljava/lang/String;
    .end local v1    # "security":I
    .end local v3    # "wifiSecurity":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;
    :cond_2
    return v2

    .line 2644
    .restart local v3    # "wifiSecurity":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISECURITY_TYPE_ENUM;
    :pswitch_0
    const/4 v1, 0x0

    .line 2645
    .restart local v1    # "security":I
    goto :goto_0

    .line 2648
    .end local v1    # "security":I
    :pswitch_1
    const/4 v1, 0x1

    .line 2649
    .restart local v1    # "security":I
    goto :goto_0

    .line 2642
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
    .line 2584
    const/4 v2, 0x0

    .line 2585
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 2586
    const-string v7, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationBandKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    move-result-object v3

    .line 2589
    .local v3, "wifiBand":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    sget-object v7, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 2599
    const/4 v0, 0x2

    .line 2602
    .local v0, "band":I
    :goto_0
    const-string v7, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationTypeKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;

    move-result-object v4

    .line 2605
    .local v4, "wifiBandType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;
    sget-object v7, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$6;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM:[I

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 2623
    const/4 v1, -0x1

    .line 2626
    .local v1, "bandType":I
    :goto_1
    const-string v7, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationChannelKey"

    .line 2627
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v6

    .line 2629
    .local v6, "wifiChannelByte":B
    and-int/lit16 v5, v6, 0xff

    .line 2630
    .local v5, "wifiChannel":I
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v7, v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiBand(I)Z

    move-result v2

    .line 2631
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v7, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiType(I)Z

    move-result v7

    or-int/2addr v2, v7

    .line 2632
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v7, v5}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiChannel(I)Z

    move-result v7

    or-int/2addr v2, v7

    .line 2634
    .end local v0    # "band":I
    .end local v1    # "bandType":I
    .end local v3    # "wifiBand":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .end local v4    # "wifiBandType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;
    .end local v5    # "wifiChannel":I
    .end local v6    # "wifiChannelByte":B
    :cond_0
    return v2

    .line 2591
    .restart local v3    # "wifiBand":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    :pswitch_0
    const/4 v0, 0x0

    .line 2592
    .restart local v0    # "band":I
    goto :goto_0

    .line 2595
    .end local v0    # "band":I
    :pswitch_1
    const/4 v0, 0x1

    .line 2596
    .restart local v0    # "band":I
    goto :goto_0

    .line 2607
    .restart local v4    # "wifiBandType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;
    :pswitch_2
    const/4 v1, 0x0

    .line 2608
    .restart local v1    # "bandType":I
    goto :goto_1

    .line 2611
    .end local v1    # "bandType":I
    :pswitch_3
    const/4 v1, 0x1

    .line 2612
    .restart local v1    # "bandType":I
    goto :goto_1

    .line 2615
    .end local v1    # "bandType":I
    :pswitch_4
    const/4 v1, 0x2

    .line 2616
    .restart local v1    # "bandType":I
    goto :goto_1

    .line 2619
    .end local v1    # "bandType":I
    :pswitch_5
    const/4 v1, 0x3

    .line 2620
    .restart local v1    # "bandType":I
    goto :goto_1

    .line 2589
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2605
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public areAnimationsAvailable()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAreAnimationsAvailable:Z

    return v0
.end method

.method public cancelInHandTakeOff()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedCancelInHandTakeOff()V

    .line 485
    :cond_0
    return-void
.end method

.method public cancelLanding()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedTakeOff()V

    .line 500
    :cond_0
    return-void
.end method

.method public cancelMoveTo()V
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestCancelMoveTo()V

    .line 1242
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->close()V

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 273
    return-void
.end method

.method public connectionProtocolEnded()Z
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->connectionProtocolEnded()Z

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
    .line 504
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedEmergency()V

    .line 507
    :cond_0
    return-void
.end method

.method public getAnimationsAvailability()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAnimationsAvailability:I

    return v0
.end method

.method public abstract getBankedTurnedPreset()Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getBankedTurnedState()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getBehaviorMode()I
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeContainer:Lcom/parrot/freeflight/followme/FollowMeContainer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeContainer;->getBehaviorMode()I

    move-result v0

    return v0
.end method

.method public getCpuId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCpuId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCpuId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    const-string v0, "P7000000000000000000"

    .line 1435
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCpuId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentAnimation()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCurrentAnimation:I

    return v0
.end method

.method public getCurrentAnimationProgress()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCurrentAnimationProgress:I

    return v0
.end method

.method public getCurrentFlipDirection()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCurrentFlipDirection:I

    return v0
.end method

.method protected getDefaultVideoResolutions()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getFlightPlanReturnHomePreset()Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getFlightPlanReturnHomeState()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getFollowMeImprovementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeContainer:Lcom/parrot/freeflight/followme/FollowMeContainer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeContainer;->getImprovementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    move-result-object v0

    return-object v0
.end method

.method public getFollowMeRequirementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeContainer:Lcom/parrot/freeflight/followme/FollowMeContainer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeContainer;->getRequirementContainer()Lcom/parrot/freeflight/followme/FollowMeDroneRequests;

    move-result-object v0

    return-object v0
.end method

.method public getFollowMeState()I
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/FollowMeManager;->getState()I

    move-result v0

    return v0
.end method

.method public getGpsLocation()Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mGpsLocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method public abstract getHullProtectionPreset()Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getHullProtectionState()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mHullProtectionState:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public abstract getMaxPitchSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getMaxPitchSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxPitchSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public abstract getMaxRotationSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getMaxRotationSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public abstract getMaxVerticalSpeedPreset()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getMaxVerticalSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public abstract getMotionDetectionPreset()Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getMotionDetectionState()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionDetectionState:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getMotionState()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionState:I

    return v0
.end method

.method public getMotorsState()[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotorsState:[I

    return-object v0
.end method

.method public getMoveToLocation()Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMoveToLocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method public getMoveToStatus()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMoveToStatus:I

    return v0
.end method

.method public getPilotedPOILocation()Lcom/parrot/freeflight/core/model/DroneModel$Position;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOILocation:Lcom/parrot/freeflight/core/model/DroneModel$Position;

    return-object v0
.end method

.method public getPilotedPOIStatus()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOIStatus:I

    return v0
.end method

.method public getPilotingMode()I
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeContainer:Lcom/parrot/freeflight/followme/FollowMeContainer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/FollowMeContainer;->getPilotingMode()I

    move-result v0

    return v0
.end method

.method public abstract getRecordingModePreset()I
.end method

.method public abstract getRollStabilizationPreset()Lcom/parrot/freeflight/util/ToggleState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getRollStabilizationState()Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRollStabilizationState:Lcom/parrot/freeflight/util/ToggleState;

    return-object v0
.end method

.method public getTargetImageDetectionState()I
    .locals 1

    .prologue
    .line 1467
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTargetImageDetectionState:I

    return v0
.end method

.method public getTargetTrajectory()Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTargetTrajectory:Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    return-object v0
.end method

.method public getWantedCameraTilt()F
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWantedCameraTilt:F

    return v0
.end method

.method protected abstract isFollowMeCorrectlySupportedByFirmware()Z
.end method

.method public isFollowMeSupported()Z
    .locals 1

    .prologue
    .line 1393
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeSupported:Z

    return v0
.end method

.method public isInMoveToMode()Z
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMoveToStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInPilotedPOIMode()Z
    .locals 2

    .prologue
    .line 307
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOIStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 400
    iget v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPilotedPOIModeAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 311
    iget v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOIStatus:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPilotedPOIStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRTHModeInProgress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 299
    iget v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRollStabilizationSupported()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public isSteady()Z
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public land()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedLanding()V

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyAppCommandListener(I)V

    .line 493
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
    .line 1547
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 1549
    .local v1, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    if-eqz p2, :cond_0

    .line 1550
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1551
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeedBridleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "DeviceControllerFlightPlanEventSpeedBridleEventNotification"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1552
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "ARDrone3DeviceControllerMediaRecordEventVideoEventChangedNotification"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1553
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "ARDrone3DeviceControllerMediaRecordEventPictureEventChangedNotification"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1554
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMediaRecordEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1560
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 1556
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1557
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSpeedBridleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1558
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMediaRecordEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public loadFromStore()V
    .locals 4

    .prologue
    .line 252
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->loadFromStore()V

    .line 253
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/LocalStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 254
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "max_pitch_speed_state"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxPitchSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 255
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "max_vertical_speed_state"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 256
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "max_rotation_speed_state"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadDoubleBoundedState(Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 257
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "motors_state"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotorsState:[I

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadIntegerArray(Ljava/lang/String;[I)V

    .line 258
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "banked_turn_state"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadToggleState(Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 259
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "flighplan_return_home_state"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadToggleState(Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 260
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v2, "roll_stabilization_state"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRollStabilizationState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadToggleState(Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 261
    const-string v1, "follow_me_supported"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeSupported:Z

    .line 262
    const-string v1, "cpu_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCpuId:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "hull_protection_state"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mHullProtectionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadToggleState(Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 264
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v2, "motion_detection_state"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionDetectionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;->loadToggleState(Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 265
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mOfflineEngine:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->reset()V

    .line 266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mHasBeenLoadedFromStore:Z

    .line 267
    return-void
.end method

.method public lynxDataAt(FFFBBJ)V
    .locals 8
    .param p1, "azimuth"    # F
    .param p2, "elevation"    # F
    .param p3, "changeOfScale"    # F
    .param p4, "confidenceIndex"    # B
    .param p5, "isNewSelection"    # B
    .param p6, "timestampMs"    # J

    .prologue
    .line 811
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userChangedLynxData(FFFBBJ)V

    .line 814
    :cond_0
    return-void
.end method

.method public moveTo(DDDIF)V
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D
    .param p7, "orientationMode"    # I
    .param p8, "heading"    # F

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isFlying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMoveToStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isInPilotedPOIMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isRTHModeInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1214
    const/4 v8, 0x0

    .line 1215
    .local v8, "orientationModeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;
    packed-switch p7, :pswitch_data_0

    .line 1229
    :goto_0
    if-eqz v8, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestMoveTo(DDDLcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;F)V

    .line 1236
    .end local v8    # "orientationModeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;
    :cond_0
    :goto_1
    return-void

    .line 1217
    .restart local v8    # "orientationModeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;
    :pswitch_0
    sget-object v8, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_HEADING_DURING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;

    .line 1218
    goto :goto_0

    .line 1220
    :pswitch_1
    sget-object v8, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_HEADING_START:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;

    .line 1221
    goto :goto_0

    .line 1223
    :pswitch_2
    sget-object v8, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_NONE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;

    .line 1224
    goto :goto_0

    .line 1226
    :pswitch_3
    sget-object v8, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_TO_TARGET:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;

    goto :goto_0

    .line 1233
    .end local v8    # "orientationModeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drone not in a valid state for sending a MOVE_TO command"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public panCameraAt(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 805
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userChangedCameraPan(F)V

    .line 808
    :cond_0
    return-void
.end method

.method public pauseMavlink()V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestMavlinkPause()V

    .line 1189
    :cond_0
    return-void
.end method

.method public pitchAt(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 651
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->pitchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 653
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLastPitch:F

    .line 654
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userPitchChanged(F)V

    .line 656
    :cond_0
    monitor-exit v1

    .line 657
    return-void

    .line 656
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
    .line 1178
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;->ARCOMMANDS_COMMON_MAVLINK_START_TYPE_FLIGHTPLAN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;

    invoke-virtual {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestMavlinkPlay(Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;)V

    .line 1182
    :cond_0
    return-void
.end method

.method public reboot()V
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestReboot()V

    .line 1053
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->disconnectDrone()V

    .line 1055
    :cond_0
    return-void
.end method

.method public requestCommandsActivationChanged(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 776
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userCommandsActivationChanged(Z)V

    .line 779
    :cond_0
    return-void
.end method

.method public requestFlip()V
    .locals 1

    .prologue
    .line 1284
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCurrentFlipDirection:I

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->requestFlip(I)V

    .line 1285
    return-void
.end method

.method public requestFlip(I)V
    .locals 2
    .param p1, "flipDirection"    # I

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1263
    packed-switch p1, :pswitch_data_0

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1265
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;->ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_FRONT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;)V

    goto :goto_0

    .line 1268
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;->ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_BACK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;)V

    goto :goto_0

    .line 1271
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;->ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_LEFT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;)V

    goto :goto_0

    .line 1274
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;->ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_RIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;)V

    goto :goto_0

    .line 1263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public requestFollowMeReframing(II)V
    .locals 1
    .param p1, "centerXPercent"    # I
    .param p2, "centerYPercent"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedReframing(II)V

    .line 290
    :cond_0
    return-void
.end method

.method public resetCamera()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDefaultCameraPan:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userChangedCameraPan(F)V

    .line 785
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    iget v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDefaultCameraTilt:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userChangedCameraTilt(F)V

    .line 787
    :cond_0
    return-void
.end method

.method public restartNetworkAuthorizedCountryScan()V
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cleanNetworkStateWifiAuthChannelListChangedNotificationDictionary()V

    .line 1150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsWifiAuthChannel()V

    .line 1152
    :cond_0
    return-void
.end method

.method public restartNetworkScan()V
    .locals 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->setScanningState(Z)V

    .line 1141
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cleanNetworkStateWifiScanListChangedNotificationDictionary()V

    .line 1142
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ALL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsNetworkWifiScan(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;)V

    .line 1144
    :cond_0
    return-void
.end method

.method public rollAt(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 661
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->rollLock:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 663
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLastRoll:F

    .line 664
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRollChanged(F)V

    .line 666
    :cond_0
    monitor-exit v1

    .line 667
    return-void

    .line 666
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
    .line 232
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mHasBeenLoadedFromStore:Z

    if-nez v2, :cond_0

    .line 248
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/DroneModel;->saveToStore()V

    .line 234
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/LocalStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 235
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_pitch_speed_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxPitchSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 237
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_vertical_speed_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxVerticalSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 238
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "max_rotation_speed_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxRotationSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveDoubleBoundedState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/DoubleBoundedState;)V

    .line 239
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "motors_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMotorsState()[I

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveIntegerArray(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;[I)V

    .line 240
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "banked_turn_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getBankedTurnedState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveToggleState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 241
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "flighplan_return_home_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getFlightPlanReturnHomeState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveToggleState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 242
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string/jumbo v3, "roll_stabilization_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getRollStabilizationState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveToggleState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 243
    const-string v2, "follow_me_supported"

    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeSupported:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string v2, "cpu_id"

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCpuId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "hull_protection_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getHullProtectionState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveToggleState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 246
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    const-string v3, "motion_detection_state"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMotionDetectionState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/parrot/freeflight/core/model/LocalStorage;->saveToggleState(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/parrot/freeflight/util/ToggleState;)V

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public setAntiFlickeringMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 962
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v1, :cond_0

    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 978
    :goto_0
    if-eqz v0, :cond_0

    .line 979
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedAntiflickeringMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;)V

    .line 982
    .end local v0    # "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAntiFlickeringMode:I

    .line 983
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 984
    return-void

    .line 966
    .restart local v0    # "antiFlickeringMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_AUTO:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;

    .line 967
    goto :goto_0

    .line 969
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_FIXEDFIFTYHERTZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;

    .line 970
    goto :goto_0

    .line 972
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_FIXEDSIXTYHERTZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;

    .line 973
    goto :goto_0

    .line 964
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
    .line 988
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsVideoAutorecordSelection(ZB)V

    .line 991
    :cond_0
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mAutoRecordEnabled:Z

    .line 992
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 993
    return-void
.end method

.method public setBankTurn(Z)V
    .locals 2
    .param p1, "activate"    # Z

    .prologue
    .line 733
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPilotingSettingsBankedTurn(Z)V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mBankedTurnedState:Lcom/parrot/freeflight/util/ToggleState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    .line 737
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 738
    return-void
.end method

.method public setCameraStabilizationMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 1302
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1303
    packed-switch p1, :pswitch_data_0

    .line 1321
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRollStabilizationState:Lcom/parrot/freeflight/util/ToggleState;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    .line 1322
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 1323
    return-void

    .line 1305
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_NONE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsVideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V

    goto :goto_0

    .line 1308
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_PITCH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsVideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V

    goto :goto_0

    .line 1311
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ROLL_PITCH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsVideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V

    goto :goto_0

    .line 1314
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ROLL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsVideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V

    goto :goto_0

    .line 1321
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentFlipDirection(I)V
    .locals 0
    .param p1, "currentFlipDirection"    # I

    .prologue
    .line 432
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mCurrentFlipDirection:I

    .line 433
    return-void
.end method

.method public setFlightPlanReturnHome(Z)V
    .locals 2
    .param p1, "activate"    # Z

    .prologue
    .line 749
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedFlightPlanReturnHomeOnDisconnect(Z)V

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightPlanReturnHomeState:Lcom/parrot/freeflight/util/ToggleState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    .line 753
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 754
    return-void
.end method

.method public setFrameRate(I)V
    .locals 2
    .param p1, "frameRate"    # I

    .prologue
    .line 905
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v1, :cond_0

    .line 906
    const/4 v0, 0x0

    .line 907
    .local v0, "frameRateValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 921
    :goto_0
    if-eqz v0, :cond_0

    .line 922
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsVideoFramerate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;)V

    .line 925
    .end local v0    # "frameRateValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 926
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFrameRate:I

    .line 927
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 929
    :cond_1
    return-void

    .line 909
    .restart local v0    # "frameRateValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_24_FPS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;

    .line 910
    goto :goto_0

    .line 912
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_25_FPS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;

    .line 913
    goto :goto_0

    .line 915
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_30_FPS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;

    .line 916
    goto :goto_0

    .line 907
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setHullProtectionState(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSpeedSettingsHullProtection(Z)V

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mHullProtectionState:Lcom/parrot/freeflight/util/ToggleState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    .line 1018
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 1019
    return-void
.end method

.method public setImageExposition(F)V
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 833
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsExposition(F)V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mExpositionState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 837
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 838
    return-void
.end method

.method public setImageSaturation(F)V
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 824
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsSaturation(F)V

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mSaturationState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 828
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 829
    return-void
.end method

.method public setMaxAltitude(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 700
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPilotingSettingsMaxAltitude(F)V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxAltitudeState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 704
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 705
    return-void
.end method

.method public setMaxDistance(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 709
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPilotingSettingsMaxDistance(F)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxDistanceState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 713
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 714
    return-void
.end method

.method public setMaxPitch(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 691
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPilotingSettingsMaxTilt(F)V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxPitchState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 695
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 696
    return-void
.end method

.method public setMaxPitchSpeed(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 757
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPilotingSettingsPitchSpeed(F)V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxPitchSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 761
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 762
    return-void
.end method

.method public setMaxRotationSpeed(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 725
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSpeedSettingsMaxRotationSpeed(F)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxRotationSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 729
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 730
    return-void
.end method

.method public setMaxVerticalSpeed(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 717
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSpeedSettingsMaxVerticalSpeed(F)V

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMaxVerticalSpeedState:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 721
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 722
    return-void
.end method

.method public setMotionDetectionState(Z)V
    .locals 2
    .param p1, "activate"    # Z

    .prologue
    .line 741
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPilotingSettingsMotionDetection(Z)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionDetectionState:Lcom/parrot/freeflight/util/ToggleState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    .line 745
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 746
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsProductName(Ljava/lang/String;)V

    .line 1062
    :cond_0
    return-void
.end method

.method public setOutdoorMode(Z)V
    .locals 1
    .param p1, "isOutdoor"    # Z

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsWifiOutdoor(Z)V

    .line 1133
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSpeedSettingsOutdoor(Z)V

    .line 1135
    :cond_0
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 933
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v1, :cond_0

    .line 934
    const/4 v0, 0x0

    .line 935
    .local v0, "pictureFormatValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 952
    :goto_0
    if-eqz v0, :cond_0

    .line 953
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsPictureFormat(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;)V

    .line 956
    .end local v0    # "pictureFormatValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mPictureFormat:I

    .line 957
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 958
    return-void

    .line 937
    .restart local v0    # "pictureFormatValue":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_RAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    .line 938
    goto :goto_0

    .line 940
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_JPEG:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    .line 941
    goto :goto_0

    .line 943
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_SNAPSHOT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    .line 944
    goto :goto_0

    .line 946
    :pswitch_3
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_JPEG_FISHEYE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    .line 947
    goto :goto_0

    .line 935
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setRecordingMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 880
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v1, :cond_0

    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 893
    :goto_0
    if-eqz v0, :cond_0

    .line 894
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsVideoRecordingMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;)V

    .line 897
    .end local v0    # "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 898
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mRecordingMode:I

    .line 899
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 901
    :cond_1
    return-void

    .line 884
    .restart local v0    # "recordingMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_QUALITY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;

    .line 885
    goto :goto_0

    .line 887
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_TIME:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;

    .line 888
    goto :goto_0

    .line 882
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
    .line 580
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->gpsSettingsSendReturnHomeDelay(S)V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeDelay:Lcom/parrot/freeflight/util/DoubleBoundedState;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 584
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 585
    return-void
.end method

.method public setReturnHomeType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 554
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v1, :cond_0

    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "returnHomeType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 570
    :goto_0
    if-eqz v0, :cond_0

    .line 571
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->gpsSettingsSendHomeType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;)V

    .line 574
    .end local v0    # "returnHomeType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mReturnHomeType:I

    .line 575
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 576
    return-void

    .line 558
    .restart local v0    # "returnHomeType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_PILOT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;

    .line 559
    goto :goto_0

    .line 561
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_TAKEOFF:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;

    .line 562
    goto :goto_0

    .line 564
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_FOLLOWEE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;

    .line 565
    goto :goto_0

    .line 556
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setRollStabilization(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1294
    if-eqz p1, :cond_0

    .line 1295
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setCameraStabilizationMode(I)V

    .line 1299
    :goto_0
    return-void

    .line 1297
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setCameraStabilizationMode(I)V

    goto :goto_0
.end method

.method public setTimeLapse(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 997
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTimeLapseInterval:Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsTimelapsePictureFormat(ZF)V

    .line 1000
    :cond_0
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTimeLapseEnabled:Z

    .line 1001
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 1002
    return-void
.end method

.method public setTimeLapseInterval(F)V
    .locals 4
    .param p1, "interval"    # F

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTimeLapseEnabled:Z

    invoke-virtual {v0, v1, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsTimelapsePictureFormat(ZF)V

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mTimeLapseInterval:Lcom/parrot/freeflight/util/DoubleBoundedState;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateCurrentValue(D)Z

    .line 1010
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 1011
    return-void
.end method

.method public setVideoResolutions(I)V
    .locals 2
    .param p1, "videoResolutions"    # I

    .prologue
    .line 605
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 606
    packed-switch p1, :pswitch_data_0

    .line 618
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mVideoResolutions:I

    .line 620
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 622
    :cond_1
    return-void

    .line 608
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_REC1080_STREAM480:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsVideoResolutions(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;)V

    goto :goto_0

    .line 611
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_REC720_STREAM720:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsVideoResolutions(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;)V

    goto :goto_0

    .line 606
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
    .line 626
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 627
    packed-switch p1, :pswitch_data_0

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 629
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_LOW_LATENCY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedMediaStreamingVideoStreamMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;)V

    goto :goto_0

    .line 632
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_HIGH_RELIABILITY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedMediaStreamingVideoStreamMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;)V

    goto :goto_0

    .line 635
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_HIGH_RELIABILITY_LOW_FRAMERATE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedMediaStreamingVideoStreamMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;)V

    goto :goto_0

    .line 627
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
    .line 842
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v1, :cond_0

    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, "whiteBalanceSelection":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 870
    :goto_0
    if-eqz v0, :cond_0

    .line 871
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPictureSettingsWhiteBalance(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;)V

    .line 874
    .end local v0    # "whiteBalanceSelection":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWhiteBalanceState:I

    .line 875
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 876
    return-void

    .line 846
    .restart local v0    # "whiteBalanceSelection":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_AUTO:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .line 847
    goto :goto_0

    .line 850
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_TUNGSTEN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .line 851
    goto :goto_0

    .line 854
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_DAYLIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .line 855
    goto :goto_0

    .line 858
    :pswitch_3
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_CLOUDY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .line 859
    goto :goto_0

    .line 862
    :pswitch_4
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_COOL_WHITE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .line 863
    goto :goto_0

    .line 844
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

    .line 1094
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v2, :cond_0

    .line 1095
    packed-switch p1, :pswitch_data_0

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1097
    :pswitch_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_AUTO:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_2_4GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    invoke-virtual {v2, v3, v4, v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V

    goto :goto_0

    .line 1103
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_AUTO:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_5GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    invoke-virtual {v2, v3, v4, v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V

    goto :goto_0

    .line 1109
    :pswitch_2
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_AUTO:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ALL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    invoke-virtual {v2, v3, v4, v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V

    goto :goto_0

    .line 1115
    :pswitch_3
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiBand()I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    move-result-object v0

    .line 1116
    .local v0, "bandEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->eARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    if-eq v0, v2, :cond_0

    .line 1117
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWifiBandState:Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiChannel()I

    move-result v1

    .line 1118
    .local v1, "channel":I
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_MANUAL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;

    int-to-byte v4, v1

    invoke-virtual {v2, v3, v0, v4}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V

    goto :goto_0

    .line 1095
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
    .line 1156
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v1, :cond_0

    .line 1157
    const/4 v0, 0x0

    .line 1158
    .local v0, "bandEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    packed-switch p1, :pswitch_data_0

    .line 1169
    :goto_0
    if-eqz v0, :cond_0

    .line 1170
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_MANUAL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;

    int-to-byte v3, p2

    invoke-virtual {v1, v2, v0, v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V

    .line 1174
    .end local v0    # "bandEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    :cond_0
    return-void

    .line 1160
    .restart local v0    # "bandEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_2_4GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    .line 1161
    goto :goto_0

    .line 1163
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_5GHZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;

    .line 1164
    goto :goto_0

    .line 1158
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
    .line 1082
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1083
    sget-object v0, Lcom/parrot/freeflight/piloting/model/WifiCountry;->WIFI_COUNTRY_AUTO:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    if-eq p1, v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsWifiAutoCountry(Z)V

    .line 1085
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/WifiCountry;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsWifiCountry(Ljava/lang/String;)V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsWifiAutoCountry(Z)V

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
    .line 1066
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1067
    packed-switch p1, :pswitch_data_0

    .line 1074
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_OPEN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsWifiSecurity(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;Ljava/lang/String;)V

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1069
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_WPA2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;

    invoke-virtual {v0, v1, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedSettingsWifiSecurity(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;Ljava/lang/String;)V

    goto :goto_0

    .line 1067
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

    .line 766
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedPilotingSettingsNoFlyOverMaxDistance(Z)V

    .line 769
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFlightDistanceRestrictionStatus:I

    .line 770
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDistanceRestrictionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    .line 771
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->notifyListener()V

    .line 772
    return-void

    :cond_1
    move v0, v1

    .line 769
    goto :goto_0
.end method

.method public startAlertSound()V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStartAlertSound()V

    .line 1026
    :cond_0
    return-void
.end method

.method public startAnimation(IF)V
    .locals 1
    .param p1, "animation"    # I
    .param p2, "param"    # F

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1354
    sparse-switch p1, :sswitch_data_0

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1356
    :sswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStartPanoramaAnimation(F)V

    goto :goto_0

    .line 1359
    :sswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStartEpicAnimation(F)V

    goto :goto_0

    .line 1362
    :sswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStartHorizontalRevealAnimation(F)V

    goto :goto_0

    .line 1365
    :sswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStartRiseAnimation(F)V

    goto :goto_0

    .line 1368
    :sswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStartOrbitAnimation(F)V

    goto :goto_0

    .line 1371
    :sswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStartBoomerangAnimation(F)V

    goto :goto_0

    .line 1374
    :sswitch_6
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStartParabolaAnimation(F)V

    goto :goto_0

    .line 1377
    :sswitch_7
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStartTornadoAnimation(F)V

    goto :goto_0

    .line 1354
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x4 -> :sswitch_6
        0x8 -> :sswitch_7
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method public startFollowMeMode(I)V
    .locals 2
    .param p1, "pilotingMode"    # I

    .prologue
    .line 1327
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v1, :cond_0

    .line 1328
    packed-switch p1, :pswitch_data_0

    .line 1339
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->NONE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    .line 1342
    .local v0, "followMeMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStartFollowMeMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;)V

    .line 1344
    .end local v0    # "followMeMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;
    :cond_0
    return-void

    .line 1330
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->LOOK_AT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    .line 1331
    .restart local v0    # "followMeMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;
    goto :goto_0

    .line 1333
    .end local v0    # "followMeMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->GEOGRAPHIC:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    .line 1334
    .restart local v0    # "followMeMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;
    goto :goto_0

    .line 1336
    .end local v0    # "followMeMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->RELATIVE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    .line 1337
    .restart local v0    # "followMeMode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;
    goto :goto_0

    .line 1328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startMagnetoCalibration()V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestCalibration(B)V

    .line 1040
    :cond_0
    return-void
.end method

.method public startMediaRecording()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestRecordVideoV2Start()V

    .line 514
    :cond_0
    return-void
.end method

.method public startPilotedPOI(DDD)V
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isFlying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isPilotedPOIModeAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isInMoveToMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isRTHModeInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1248
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestStartPilotedPOI(DDD)V

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drone not in a valid state for sending a PILOTED_POI command"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startReturnHome()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedReturnHome(Z)V

    .line 535
    :cond_0
    return-void
.end method

.method public startVideoStreaming()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 589
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v1, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->enableVideoStreaming(Z)V

    .line 593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAlertSound()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStopAlertSound()V

    .line 1033
    :cond_0
    return-void
.end method

.method public stopAnimations()V
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStopAnimation()V

    .line 1387
    :cond_0
    return-void
.end method

.method public stopFollowMe()V
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedStopFollowMe()V

    .line 1350
    :cond_0
    return-void
.end method

.method public stopMagnetoCalibration()V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestCalibration(B)V

    .line 1047
    :cond_0
    return-void
.end method

.method public stopMavlink()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestMavlinkStop()V

    .line 1196
    :cond_0
    return-void
.end method

.method public stopMediaRecording()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestRecordVideoV2Stop()V

    .line 521
    :cond_0
    return-void
.end method

.method public stopPilotedPOI()V
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestStopPilotedPOI()V

    .line 1259
    :cond_0
    return-void
.end method

.method public stopReturnHome()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedReturnHome(Z)V

    .line 542
    :cond_0
    return-void
.end method

.method public stopVideoStreaming()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->enableVideoStreaming(Z)V

    .line 601
    :cond_0
    return-void
.end method

.method public takeOff()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mMotionDetectionState:Lcom/parrot/freeflight/util/ToggleState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/ToggleState;->getToggleState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedInHandTakeOff()V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedTakeOff()V

    goto :goto_0
.end method

.method public takePicture()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestRecordPictureV2()V

    .line 528
    :cond_0
    return-void
.end method

.method public throttleAt(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 681
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->gazLock:Ljava/lang/Object;

    monitor-enter v1

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 683
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLastGaz:F

    .line 684
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userGazChanged(F)V

    .line 686
    :cond_0
    monitor-exit v1

    .line 687
    return-void

    .line 686
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
    .line 797
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mWantedCameraTilt:F

    .line 798
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userChangedCameraTilt(F)V

    .line 801
    :cond_0
    return-void
.end method

.method public userChangedUserBaroData(FJ)V
    .locals 4
    .param p1, "pressure"    # F
    .param p2, "timestamp"    # J

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    long-to-double v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userChangedUserBaroData(FD)V

    .line 1496
    :cond_0
    return-void
.end method

.method public userChangedUserGPSData()V
    .locals 22

    .prologue
    .line 1472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/FollowMeManager;->isFollowMeRequested()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mFollowMeManager:Lcom/parrot/freeflight/core/FollowMeManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/FollowMeManager;->isInAnyFollowMeState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1473
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1474
    const/4 v9, 0x0

    .line 1475
    .local v9, "northSpeed":F
    const/4 v10, 0x0

    .line 1477
    .local v10, "eastSpeed":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getSpeed()F

    move-result v2

    .line 1478
    .local v2, "speed":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .line 1480
    .local v20, "bearingInRad":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float v9, v3, v2

    .line 1481
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float v10, v3, v2

    .line 1484
    .end local v20    # "bearingInRad":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    .line 1485
    invoke-virtual {v8}, Landroid/location/Location;->getAltitude()D

    move-result-wide v12

    double-to-float v8, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v15}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    const/high16 v16, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mControllerLocation:Landroid/location/Location;

    move-object/from16 v17, v0

    .line 1486
    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v17, v0

    .line 1484
    invoke-virtual/range {v3 .. v18}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userChangedUserGPSData(DDFFFFFFFFFD)V

    .line 1489
    .end local v2    # "speed":F
    .end local v9    # "northSpeed":F
    .end local v10    # "eastSpeed":F
    :cond_2
    return-void
.end method

.method public validateFlatTrim()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userRequestedFlatTrim()V

    .line 821
    :cond_0
    return-void
.end method

.method public yawTo(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 671
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->yawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    if-eqz v0, :cond_0

    .line 673
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mLastYaw:F

    .line 674
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->mDeviceController:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->userYawChanged(F)V

    .line 676
    :cond_0
    monitor-exit v1

    .line 677
    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
