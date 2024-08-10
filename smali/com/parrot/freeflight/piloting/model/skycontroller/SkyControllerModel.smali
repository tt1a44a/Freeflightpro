.class public Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.super Lcom/parrot/freeflight/core/model/Model;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CoPilotingState;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationStateV2;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationState;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GpsFixStatus;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ProductVariant;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Type;,
        Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$SecurityListener;
    }
.end annotation


# static fields
.field public static final ASSESSING:I = 0x1

.field public static final BEBOP:I = 0x0

.field public static final BEBOP2:I = 0x1

.field public static final CALIBRATED:I = 0x0

.field public static final CALIBRATION_STATE_V2_CALIBRATED:I = 0x0

.field public static final CALIBRATION_STATE_V2_CALIBRATING_X:I = 0x1

.field public static final CALIBRATION_STATE_V2_CALIBRATING_Y:I = 0x2

.field public static final CALIBRATION_STATE_V2_CALIBRATING_Z:I = 0x3

.field public static final CALIBRATION_STATE_V2_NOT_CALIBRATED:I = 0x4

.field public static final CO_PILOTING_DISABLE:I = 0x1

.field public static final CO_PILOTING_ENABLE:I = 0x0

.field public static final CO_PILOTING_UNKNOWN:I = -0x1

.field public static final DEFAULT_GPS_VALUE:I = 0x1f4

.field public static final GPS_FIXED:I = 0x0

.field public static final GPS_NOT_FIXED:I = 0x1

.field public static final GPS_UNKNOWN:I = -0x1

.field private static final INDEX_LEFT_JOYSTICK_X_AXIS_VALUE:I = 0x0

.field private static final INDEX_LEFT_JOYSTICK_Y_AXIS_VALUE:I = 0x1

.field private static final INDEX_RIGHT_JOYSTICK_X_AXIS_VALUE:I = 0x2

.field private static final INDEX_RIGHT_JOYSTICK_Y_AXIS_VALUE:I = 0x3

.field private static final INDEX_TOP_LEFT_JOYSTICK_X_AXIS_VALUE:I = 0x4

.field private static final INDEX_TOP_LEFT_JOYSTICK_Y_AXIS_VALUE:I = 0x5

.field private static final INDEX_TOP_RIGHT_JOYSTICK_X_AXIS_VALUE:I = 0x6

.field private static final INDEX_TOP_RIGHT_JOYSTICK_Y_AXIS_VALUE:I = 0x7

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_HARDWARE:Ljava/lang/String; = "hardware"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_SERIAL:Ljava/lang/String; = "serial_number"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final MAX_JOYSTICK_VALUE:I = 0x64

.field public static final MIN_JOYSTICK_VALUE:I = -0x64

.field public static final SKYCONTROLLER:I = 0x0

.field public static final SKYCONTROLLER_2:I = 0x1

.field public static final SKYCONTROLLER_2P:I = 0x3

.field public static final SKYCONTROLLER_NG:I = 0x2

.field private static final SKYCONTROLLER_SETTINGS_BUTTON_ID:I = 0x0

.field public static final UNKNOWN:I = -0x1

.field public static final UNRELIABLE:I = 0x2


# instance fields
.field private final mAppEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mAttitude:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;

.field private final mAuthFailedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAxisMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryLevel:I

.field private final mButtonEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mButtonsMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCalibrationQuality:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

.field private mCalibrationState:I

.field private mCalibrationStateV2:I

.field private mCoPilotingState:I

.field private mConnectingDroneSsid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentDroneSsid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpoMapItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsFixStatus:I

.field private final mGrabbingState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;

.field protected mHardwareVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasBeenLoadedFromStore:Z

.field private final mJoystickEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mJoystickFilters:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final mPosition:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;

.field private final mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mProductName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProductVariant:I

.field private mRightJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSerial:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSoftwareVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSsid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStoreEmpty:Z

.field private mTopLeftJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTopRightJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mType:I

.field private mWifiChannelNewApi:Z

.field private final mWifiChannelState:Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mWifiSignalLevel:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 6
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

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 116
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/Model;-><init>()V

    .line 132
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mStoreEmpty:Z

    .line 195
    iput v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProductVariant:I

    .line 221
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    .line 240
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 248
    const-string v0, "0.0.0"

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSoftwareVersion:Ljava/lang/String;

    .line 261
    const-string v0, "HW_00"

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mHardwareVersion:Ljava/lang/String;

    .line 284
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mGpsFixStatus:I

    .line 301
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationState:I

    .line 333
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationQuality:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    .line 359
    const/4 v0, 0x4

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationStateV2:I

    .line 398
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mPosition:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;

    .line 465
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAttitude:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;

    .line 486
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonsMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    .line 506
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mExpoMapItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    .line 514
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    .line 522
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mJoystickFilters:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    .line 544
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mGrabbingState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;

    .line 576
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    .line 584
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    .line 602
    iput v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCoPilotingState:I

    .line 745
    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelNewApi:Z

    .line 747
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelState:Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    .line 777
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSerial:Ljava/lang/String;

    .line 785
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSsid:Ljava/lang/String;

    .line 823
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$1;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    .line 869
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$2;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 881
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$3;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1503
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mLeftJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    .line 1505
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mRightJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    .line 1507
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mTopLeftJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    .line 1509
    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mTopRightJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    .line 1530
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1532
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mJoystickEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1534
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAppEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1536
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAuthFailedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 117
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    .line 118
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 119
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_NG:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p2, v0, :cond_0

    .line 120
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    .line 128
    :goto_0
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 130
    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p2, v0, :cond_1

    .line 122
    iput v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    goto :goto_0

    .line 123
    :cond_1
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2P:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p2, v0, :cond_2

    .line 124
    const/4 v0, 0x3

    iput v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    goto :goto_0

    .line 126
    :cond_2
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateReceivedAppEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateDroneManagerAuthenticationFailed(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object p1
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCurrentDroneSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateConnectionState()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;)Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .param p1, "x1"    # Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->onSkyControllerNotificationDictionaryChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateSettingsButtonState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateGrabbedButtonStates(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateGrabbedJoystickStates(Landroid/os/Bundle;)V

    return-void
.end method

.method private notifyAppEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;)V
    .locals 3
    .param p1, "appEvent"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1556
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAppEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;

    .line 1557
    .local v0, "listener":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;
    invoke-interface {v0, p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;->onAppEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1561
    .end local v0    # "listener":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;
    :cond_1
    return-void
.end method

.method private notifyButtonListeners(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 1540
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;

    .line 1541
    .local v0, "listener":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;
    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;->onKeyEvent(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1545
    .end local v0    # "listener":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;
    :cond_1
    return-void
.end method

.method private notifyJoystickEventListener()V
    .locals 8

    .prologue
    .line 1548
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mJoystickEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;

    .line 1549
    .local v0, "listener":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mLeftJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mRightJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mTopLeftJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mTopRightJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    const/16 v5, -0x64

    const/16 v6, 0x64

    invoke-interface/range {v0 .. v6}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;->onJoystickEvent(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1553
    .end local v0    # "listener":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;
    :cond_1
    return-void
.end method

.method private onSkyControllerNotificationDictionaryChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "dictionary"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 942
    const-string v1, "SkyControllerDeviceControllerSettingsStateProductVersionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateProductVersions(Landroid/os/Bundle;)Z

    move-result v0

    .line 943
    .local v0, "shouldUpdate":Z
    const-string v1, "SkyControllerDeviceControllerSkyControllerStateBatteryChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateBatteryLevel(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 944
    const-string v1, "SkyControllerDeviceControllerCalibrationStateMagnetoCalibrationStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateMagnetoCalibration(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 945
    const-string v1, "SkyControllerDeviceControllerCalibrationStateMagnetoCalibrationStateV2Notification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateMagnetoCalibrationV2(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 946
    const-string v1, "SkyControllerDeviceControllerSkyControllerStateGpsFixChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateGpsState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 947
    const-string v1, "SkyControllerDeviceControllerSkyControllerStateGpsPositionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updatePosition(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 948
    const-string v1, "SkyControllerDeviceControllerSkyControllerStateAttitudeChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateAttitude(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 949
    const-string v1, "SkyControllerDeviceControllerWifiStateWifiSignalChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateWifiSignal(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 950
    const-string v1, "SkyControllerDeviceControllerCoPilotingStatePilotingSourceNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateCoPilotingState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 951
    const-string v1, "SkyControllerDeviceControllerWifiStateWifiListNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateWifiList(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 952
    const-string v1, "SkyControllerDeviceControllerWifiStateConnexionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateCurrentWifi(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 953
    const-string v1, "DroneManagerDeviceControllerDroneListItemNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateDroneList(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 954
    const-string v1, "DroneManagerDeviceControllerConnectionStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateDroneManagerConnectionState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 955
    const-string v1, "SkyControllerDeviceControllerAxisMappingsStateCurrentAxisMappingsNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateAxisMappingState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 956
    const-string v1, "SkyControllerDeviceControllerButtonMappingsStateCurrentButtonMappingsNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateButtonsMappingState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 957
    const-string v1, "SkyControllerDeviceControllerAxisFiltersStateCurrentAxisFiltersNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateJoystickFiltersState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 958
    const-string v1, "SkyControllerDeviceControllerSettingsStateProductVariantChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateProductVariant(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 959
    const-string v1, "MapperDeviceControllerGrabStateNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateCommandGrabbingState(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 960
    const-string v1, "MapperDeviceControllerExpoMapItemNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateExpoMapItems(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 961
    const-string v1, "MapperDeviceControllerButtonMappingItemNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateButtonsMapping(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 962
    const-string v1, "MapperDeviceControllerAxisMappingItemNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateAxisMapping(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 963
    const-string v1, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateWifiAutoChannelList(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 964
    const-string v1, "SkyControllerDeviceControllerAccessPointSettingsStateAccessPointChannelChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateAccessPointChannel(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 965
    const-string v1, "SkyControllerDeviceControllerAccessPointSettingsStateWifiSelectionChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateWifiSelection(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 966
    const-string v1, "SkyControllerDeviceControllerSettingsStateProductSerialChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateSerial(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 967
    const-string v1, "SkyControllerDeviceControllerAccessPointSettingsStateAccessPointSSIDChangedNotification"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateSsid(Landroid/os/Bundle;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 969
    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->notifyListener()V

    .line 972
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 973
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->access$1202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Z)Z

    .line 974
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mJoystickFilters:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->access$1202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Z)Z

    .line 975
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonsMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->access$1202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Z)Z

    .line 976
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mExpoMapItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 977
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 978
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 979
    return-void
.end method

.method private updateAccessPointChannel(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "accessPointChannelBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1731
    const/4 v3, 0x0

    .line 1732
    .local v3, "update":Z
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelNewApi:Z

    if-nez v4, :cond_0

    .line 1733
    const-string v4, "SkyControllerDeviceControllerAccessPointSettingsStateAccessPointChannelChangedNotificationChannelKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 1734
    .local v0, "apChannel":Ljava/lang/Byte;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    and-int/lit16 v2, v4, 0xff

    .line 1735
    .local v2, "channel":I
    const/4 v1, 0x2

    .line 1736
    .local v1, "band":I
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelState:Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    invoke-virtual {v4, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->updateSelectedChannel(II)Z

    move-result v3

    .line 1738
    .end local v0    # "apChannel":Ljava/lang/Byte;
    .end local v1    # "band":I
    .end local v2    # "channel":I
    :cond_0
    return v3
.end method

.method private updateAttitude(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "attitudeBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1415
    const/4 v4, 0x0

    .line 1416
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1417
    const-string v5, "SkyControllerDeviceControllerSkyControllerStateAttitudeChangedNotificationQ0Key"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1418
    .local v0, "q0":F
    const-string v5, "SkyControllerDeviceControllerSkyControllerStateAttitudeChangedNotificationQ1Key"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 1419
    .local v1, "q1":F
    const-string v5, "SkyControllerDeviceControllerSkyControllerStateAttitudeChangedNotificationQ2Key"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 1420
    .local v2, "q2":F
    const-string v5, "SkyControllerDeviceControllerSkyControllerStateAttitudeChangedNotificationQ3Key"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 1421
    .local v3, "q3":F
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAttitude:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;->update(FFFF)Z

    move-result v4

    .line 1423
    .end local v0    # "q0":F
    .end local v1    # "q1":F
    .end local v2    # "q2":F
    .end local v3    # "q3":F
    :cond_0
    return v4
.end method

.method private updateAxisMapping(Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "axisMappingState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1002
    const/4 v8, 0x0

    .line 1003
    .local v8, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->clear()V

    .line 1005
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1006
    .local v7, "dataKey":Ljava/lang/String;
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1007
    .local v6, "data":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 1008
    const-string v0, "MapperDeviceControllerAxisMappingItemNotificationUidKey"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1009
    .local v1, "uid":I
    const-string v0, "MapperDeviceControllerAxisMappingItemNotificationProductKey"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v2

    .line 1010
    .local v2, "product":S
    const-string v0, "MapperDeviceControllerAxisMappingItemNotificationActionKey"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1011
    .local v3, "action":I
    const-string v0, "MapperDeviceControllerAxisMappingItemNotificationAxisKey"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1012
    .local v4, "axis":I
    const-string v0, "MapperDeviceControllerAxisMappingItemNotificationButtonsKey"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1014
    .local v5, "buttons":I
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    new-instance v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;-><init>(ISIII)V

    invoke-virtual {v10, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1017
    .end local v1    # "uid":I
    .end local v2    # "product":S
    .end local v3    # "action":I
    .end local v4    # "axis":I
    .end local v5    # "buttons":I
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "dataKey":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 1018
    const/4 v8, 0x1

    .line 1020
    :cond_2
    return v8
.end method

.method private updateAxisMappingState(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "axisMappingStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1107
    const/4 v4, 0x0

    .line 1108
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 1109
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->clear()V

    .line 1110
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1111
    .local v3, "dataKey":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1112
    .local v2, "data":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1113
    const-string v6, "SkyControllerDeviceControllerAxisMappingsStateCurrentAxisMappingsNotificationAxisIdKey"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1114
    .local v1, "axisId":I
    const-string v6, "SkyControllerDeviceControllerAxisMappingsStateCurrentAxisMappingsNotificationMappingUidKey"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, "actionName":Ljava/lang/String;
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-virtual {v6, v1, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 1118
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v1    # "axisId":I
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "dataKey":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->access$1202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Z)Z

    .line 1119
    const/4 v4, 0x1

    .line 1121
    :cond_2
    return v4
.end method

.method private updateBatteryLevel(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "batteryBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1142
    const/4 v1, 0x0

    .line 1143
    .local v1, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1144
    const-string v2, "SkyControllerDeviceControllerSkyControllerStateBatteryChangedNotificationPercentKey"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1145
    .local v0, "batteryLevel":I
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mBatteryLevel:I

    if-eq v0, v2, :cond_0

    .line 1146
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mBatteryLevel:I

    .line 1147
    const/4 v1, 0x1

    .line 1150
    .end local v0    # "batteryLevel":I
    :cond_0
    return v1
.end method

.method private updateButtonsMapping(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "buttonsMappingState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1024
    const/4 v5, 0x0

    .line 1025
    .local v5, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 1026
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->clear()V

    .line 1027
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1028
    .local v3, "dataKey":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1029
    .local v2, "data":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1030
    const-string v8, "MapperDeviceControllerButtonMappingItemNotificationUidKey"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1031
    .local v6, "uid":I
    const-string v8, "MapperDeviceControllerButtonMappingItemNotificationProductKey"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v4

    .line 1032
    .local v4, "product":S
    const-string v8, "MapperDeviceControllerButtonMappingItemNotificationActionKey"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1033
    .local v0, "action":I
    const-string v8, "MapperDeviceControllerButtonMappingItemNotificationButtonsKey"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1035
    .local v1, "buttons":I
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    new-instance v9, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;

    invoke-direct {v9, v6, v4, v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;-><init>(ISII)V

    invoke-virtual {v8, v9}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1038
    .end local v0    # "action":I
    .end local v1    # "buttons":I
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "dataKey":Ljava/lang/String;
    .end local v4    # "product":S
    .end local v6    # "uid":I
    :cond_1
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 1039
    const/4 v5, 0x1

    .line 1041
    :cond_2
    return v5
.end method

.method private updateButtonsMappingState(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "buttonsMappingState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1089
    const/4 v4, 0x0

    .line 1090
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 1091
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonsMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->clear()V

    .line 1092
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1093
    .local v3, "dataKey":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1094
    .local v2, "data":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1095
    const-string v6, "SkyControllerDeviceControllerButtonMappingsStateCurrentButtonMappingsNotificationKeyIdKey"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1096
    .local v1, "buttonId":I
    const-string v6, "SkyControllerDeviceControllerButtonMappingsStateCurrentButtonMappingsNotificationMappingUidKey"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "actionName":Ljava/lang/String;
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonsMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-virtual {v6, v1, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 1100
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v1    # "buttonId":I
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "dataKey":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonsMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->access$1202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Z)Z

    .line 1101
    const/4 v4, 0x1

    .line 1103
    :cond_2
    return v4
.end method

.method private updateCoPilotingState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "coPilotingStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1692
    if-eqz p1, :cond_1

    .line 1693
    const-string v3, "SkyControllerDeviceControllerCoPilotingStatePilotingSourceNotificationSourceKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v0, v1

    .line 1695
    .local v0, "newCoPilotingState":I
    :goto_0
    iget v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCoPilotingState:I

    if-eq v0, v3, :cond_1

    .line 1696
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCoPilotingState:I

    .line 1700
    .end local v0    # "newCoPilotingState":I
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 1693
    goto :goto_0

    :cond_1
    move v2, v1

    .line 1700
    goto :goto_1
.end method

.method private updateCommandGrabbingState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "grabbingBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1436
    const/4 v2, 0x0

    .line 1437
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1438
    const-string v3, "MapperDeviceControllerGrabStateNotificationButtonsKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1439
    .local v1, "buttons":I
    const-string v3, "MapperDeviceControllerGrabStateNotificationAxesKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1440
    .local v0, "axes":I
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mGrabbingState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;

    invoke-virtual {v3, v1, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$GrabbingState;->update(II)Z

    move-result v2

    .line 1442
    .end local v0    # "axes":I
    .end local v1    # "buttons":I
    :cond_0
    return v2
.end method

.method private updateConnectionState()V
    .locals 0

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->notifyListener()V

    .line 900
    return-void
.end method

.method private updateCurrentWifi(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "currentWifiBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1183
    const/4 v0, 0x0

    .line 1184
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 1185
    const-string v5, "SkyControllerDeviceControllerWifiStateConnexionChangedNotificationSsidKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, "ssid":Ljava/lang/String;
    const-string v5, "SkyControllerDeviceControllerWifiStateConnexionChangedNotificationStatusKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1187
    .local v3, "statusKey":I
    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;

    move-result-object v2

    .line 1189
    .local v2, "status":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v5, v1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->getInfoForSsid(Ljava/util/List;Ljava/lang/String;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    move-result-object v4

    .line 1190
    .local v4, "wifiInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    if-eqz v4, :cond_0

    .line 1191
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->setState(I)V

    .line 1194
    :cond_0
    sget-object v5, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1208
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    .line 1210
    .end local v1    # "ssid":Ljava/lang/String;
    .end local v2    # "status":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;
    .end local v3    # "statusKey":I
    .end local v4    # "wifiInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    :cond_2
    return v0

    .line 1198
    .restart local v1    # "ssid":Ljava/lang/String;
    .restart local v2    # "status":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_CONNEXIONCHANGED_STATUS_ENUM;
    .restart local v3    # "statusKey":I
    .restart local v4    # "wifiInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    :pswitch_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCurrentDroneSsid:Ljava/lang/String;

    goto :goto_0

    .line 1201
    :pswitch_2
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCurrentDroneSsid:Ljava/lang/String;

    .line 1202
    if-eqz v4, :cond_1

    .line 1203
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->setSaved(Z)V

    goto :goto_0

    .line 1194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateDroneList(Landroid/os/Bundle;)Z
    .locals 19
    .param p1, "droneListBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1214
    const/16 v17, 0x0

    .line 1215
    .local v17, "shouldUpdate":Z
    if-eqz p1, :cond_6

    .line 1216
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .local v12, "droneList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1219
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 1220
    .local v11, "droneBundle":Landroid/os/Bundle;
    if-eqz v11, :cond_0

    .line 1221
    const-string v1, "DroneManagerDeviceControllerDroneListItemNotificationSerialKey"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1222
    .local v2, "serial":Ljava/lang/String;
    const-string v1, "DroneManagerDeviceControllerDroneListItemNotificationNameKey"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1223
    .local v3, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1224
    const-string v1, "DroneManagerDeviceControllerDroneListItemNotificationModelKey"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v15

    .line 1225
    .local v15, "model":S
    const-string v1, "DroneManagerDeviceControllerDroneListItemNotificationActiveKey"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const/4 v8, 0x1

    .line 1226
    .local v8, "active":Z
    :goto_1
    const-string v1, "DroneManagerDeviceControllerDroneListItemNotificationConnectionOrderKey"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v10

    .line 1227
    .local v10, "connectionOrder":I
    const-string v1, "DroneManagerDeviceControllerDroneListItemNotificationSecurityKey"

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;->NONE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;->getValue()I

    move-result v4

    invoke-virtual {v11, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1228
    .local v16, "securityValue":I
    const-string v1, "DroneManagerDeviceControllerDroneListItemNotificationVisibleKey"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v9, 0x1

    .line 1230
    .local v9, "visible":Z
    :goto_2
    sget-object v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM:[I

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_SECURITY_ENUM;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 1241
    const/4 v5, -0x1

    .line 1244
    .local v5, "security":I
    :goto_3
    const-string v1, "DroneManagerDeviceControllerDroneListItemNotificationHasSavedKeyKey"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    const/4 v14, 0x1

    .line 1245
    .local v14, "keySaved":Z
    :goto_4
    const-string v1, "DroneManagerDeviceControllerDroneListItemNotificationRssiKey"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    .line 1246
    .local v7, "rssi":I
    new-instance v1, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    invoke-static {v15}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    if-lez v10, :cond_4

    const/4 v6, 0x1

    :goto_5
    invoke-direct/range {v1 .. v9}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IZIZZ)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1225
    .end local v5    # "security":I
    .end local v7    # "rssi":I
    .end local v8    # "active":Z
    .end local v9    # "visible":Z
    .end local v10    # "connectionOrder":I
    .end local v14    # "keySaved":Z
    .end local v16    # "securityValue":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1228
    .restart local v8    # "active":Z
    .restart local v10    # "connectionOrder":I
    .restart local v16    # "securityValue":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 1232
    .restart local v9    # "visible":Z
    :pswitch_0
    const/4 v5, 0x1

    .line 1233
    .restart local v5    # "security":I
    goto :goto_3

    .line 1236
    .end local v5    # "security":I
    :pswitch_1
    const/4 v5, 0x0

    .line 1237
    .restart local v5    # "security":I
    goto :goto_3

    .line 1244
    :cond_3
    const/4 v14, 0x0

    goto :goto_4

    .line 1246
    .restart local v7    # "rssi":I
    .restart local v14    # "keySaved":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .line 1251
    .end local v2    # "serial":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "security":I
    .end local v7    # "rssi":I
    .end local v8    # "active":Z
    .end local v9    # "visible":Z
    .end local v10    # "connectionOrder":I
    .end local v11    # "droneBundle":Landroid/os/Bundle;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "keySaved":Z
    .end local v15    # "model":S
    .end local v16    # "securityValue":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->clear()V

    .line 1252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-virtual {v1, v12}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCurrentDroneSsid:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->sortList(Ljava/util/List;Ljava/lang/String;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 1255
    const/16 v17, 0x1

    .line 1257
    .end local v12    # "droneList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    :cond_6
    return v17

    .line 1230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDroneManagerAuthenticationFailed(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1677
    if-eqz p1, :cond_1

    .line 1678
    const-string v3, "DroneManagerDeviceControllerAuthenticationFailedNotificationSerialKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1680
    .local v2, "serial":Ljava/lang/String;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 1681
    .local v0, "info":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    invoke-virtual {v0}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getSerial()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1682
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAuthFailedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;

    .line 1683
    .local v1, "listener":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;
    invoke-interface {v1, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;->onAuthFailed(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V

    goto :goto_0

    .line 1689
    .end local v0    # "info":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .end local v1    # "listener":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;
    .end local v2    # "serial":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateDroneManagerConnectionState(Landroid/os/Bundle;)Z
    .locals 14
    .param p1, "droneManagerConnectionStateBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1261
    const/4 v6, 0x0

    .line 1262
    .local v6, "shouldUpdate":Z
    if-eqz p1, :cond_7

    .line 1263
    const-string v9, "DroneManagerDeviceControllerConnectionStateNotificationSerialKey"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1264
    .local v5, "serial":Ljava/lang/String;
    const-string v9, "DroneManagerDeviceControllerConnectionStateNotificationNameKey"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1265
    .local v2, "name":Ljava/lang/String;
    const-string v9, "DroneManagerDeviceControllerConnectionStateNotificationModelKey"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v1

    .line 1266
    .local v1, "model":S
    const-string v9, "DroneManagerDeviceControllerConnectionStateNotificationStateKey"

    sget-object v12, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    .line 1267
    invoke-virtual {v12}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->getValue()I

    move-result v12

    .line 1266
    invoke-virtual {p1, v9, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1269
    .local v8, "stateValue":I
    sget-object v9, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM:[I

    invoke-static {v8}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    move-result-object v12

    invoke-virtual {v12}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->ordinal()I

    move-result v12

    aget v9, v9, v12

    packed-switch v9, :pswitch_data_0

    .line 1287
    const/4 v7, 0x0

    .line 1290
    .local v7, "state":I
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1291
    if-ne v7, v13, :cond_2

    .line 1292
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCurrentDroneSsid:Ljava/lang/String;

    .line 1296
    :goto_1
    const-string v4, ""

    .line 1297
    .local v4, "previouslyActiveDroneSerial":Ljava/lang/String;
    const-string v3, ""

    .line 1298
    .local v3, "newActiveDroneSerial":Ljava/lang/String;
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-virtual {v9}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 1299
    .local v0, "info":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    invoke-virtual {v0}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isActive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1300
    invoke-virtual {v0}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getSerial()Ljava/lang/String;

    move-result-object v4

    .line 1302
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getSerial()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1303
    if-eq v7, v11, :cond_1

    if-ne v7, v13, :cond_3

    :cond_1
    move v9, v11

    :goto_3
    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->setActive(Z)V

    .line 1305
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v9, v11}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    goto :goto_2

    .line 1271
    .end local v0    # "info":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .end local v3    # "newActiveDroneSerial":Ljava/lang/String;
    .end local v4    # "previouslyActiveDroneSerial":Ljava/lang/String;
    .end local v7    # "state":I
    :pswitch_0
    const/4 v7, 0x1

    .line 1272
    .restart local v7    # "state":I
    goto :goto_0

    .line 1275
    .end local v7    # "state":I
    :pswitch_1
    const/4 v7, 0x2

    .line 1276
    .restart local v7    # "state":I
    goto :goto_0

    .line 1294
    :cond_2
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCurrentDroneSsid:Ljava/lang/String;

    goto :goto_1

    .restart local v0    # "info":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .restart local v3    # "newActiveDroneSerial":Ljava/lang/String;
    .restart local v4    # "previouslyActiveDroneSerial":Ljava/lang/String;
    :cond_3
    move v9, v10

    .line 1303
    goto :goto_3

    .line 1307
    :cond_4
    invoke-virtual {v0, v10}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->setActive(Z)V

    goto :goto_2

    .line 1310
    .end local v0    # "info":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1311
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v9, v11}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 1314
    .end local v3    # "newActiveDroneSerial":Ljava/lang/String;
    .end local v4    # "previouslyActiveDroneSerial":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x1

    .line 1316
    .end local v1    # "model":S
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "serial":Ljava/lang/String;
    .end local v7    # "state":I
    .end local v8    # "stateValue":I
    :cond_7
    return v6

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateExpoMapItems(Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "skycontroller2ExpoMapItemBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 982
    const/4 v5, 0x0

    .line 983
    .local v5, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 984
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mExpoMapItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->clear()V

    .line 985
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 986
    .local v2, "dataKey":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 987
    .local v1, "data":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 988
    const-string v7, "MapperDeviceControllerExpoMapItemNotificationProductKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v4

    .line 989
    .local v4, "product":S
    const-string v7, "MapperDeviceControllerExpoMapItemNotificationAxisKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 990
    .local v0, "axis":I
    const-string v7, "MapperDeviceControllerExpoMapItemNotificationExpoKey"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 992
    .local v3, "expo":I
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mExpoMapItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    new-instance v8, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;

    invoke-direct {v8, v4, v0, v3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;-><init>(SII)V

    invoke-virtual {v7, v8}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 995
    .end local v0    # "axis":I
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "dataKey":Ljava/lang/String;
    .end local v3    # "expo":I
    .end local v4    # "product":S
    :cond_1
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mExpoMapItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 996
    const/4 v5, 0x1

    .line 998
    :cond_2
    return v5
.end method

.method private updateGpsState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "gpsBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1390
    const/4 v2, 0x0

    .line 1391
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1392
    const-string v4, "SkyControllerDeviceControllerSkyControllerStateGpsFixChangedNotificationFixedKey"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-ne v4, v3, :cond_1

    move v1, v3

    .line 1393
    .local v1, "gpsFixed":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1394
    .local v0, "gpsFixStatus":I
    :goto_1
    iget v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mGpsFixStatus:I

    if-eq v3, v0, :cond_0

    .line 1395
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mGpsFixStatus:I

    .line 1396
    const/4 v2, 0x1

    .line 1399
    .end local v0    # "gpsFixStatus":I
    .end local v1    # "gpsFixed":Z
    :cond_0
    return v2

    :cond_1
    move v1, v0

    .line 1392
    goto :goto_0

    .restart local v1    # "gpsFixed":Z
    :cond_2
    move v0, v3

    .line 1393
    goto :goto_1
.end method

.method private updateGrabbedButtonStates(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "buttonStatesBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1655
    if-eqz p1, :cond_0

    .line 1656
    const-string v4, "MapperDeviceControllerGrabButtonEventNotificationButtonKey"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1657
    .local v0, "key":I
    const-string v4, "MapperDeviceControllerGrabButtonEventNotificationEventKey"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1659
    .local v1, "pressed":I
    if-ne v1, v2, :cond_1

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->notifyButtonListeners(IZ)V

    .line 1661
    .end local v0    # "key":I
    .end local v1    # "pressed":I
    :cond_0
    return-void

    .restart local v0    # "key":I
    .restart local v1    # "pressed":I
    :cond_1
    move v2, v3

    .line 1659
    goto :goto_0
.end method

.method private updateGrabbedJoystickStates(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "joystickStatesBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1613
    if-eqz p1, :cond_1

    .line 1614
    const-string v5, "MapperDeviceControllerGrabAxisEventNotificationAxisValues"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1615
    .local v0, "axisValues":[B
    if-eqz v0, :cond_1

    .line 1616
    const/4 v2, 0x0

    .line 1618
    .local v2, "joystickUpdated":Z
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v0

    .local v3, "length":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1619
    aget-byte v4, v0, v1

    .line 1620
    .local v4, "value":B
    packed-switch v1, :pswitch_data_0

    .line 1618
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1622
    :pswitch_0
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mLeftJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->updateXAxisValue(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1623
    goto :goto_1

    .line 1625
    :pswitch_1
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mLeftJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->updateYAxisValue(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1626
    goto :goto_1

    .line 1628
    :pswitch_2
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mRightJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->updateXAxisValue(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1629
    goto :goto_1

    .line 1631
    :pswitch_3
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mRightJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->updateYAxisValue(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1632
    goto :goto_1

    .line 1634
    :pswitch_4
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mTopLeftJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->updateXAxisValue(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1635
    goto :goto_1

    .line 1637
    :pswitch_5
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mTopLeftJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->updateYAxisValue(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1638
    goto :goto_1

    .line 1640
    :pswitch_6
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mTopRightJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->updateXAxisValue(I)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1641
    goto :goto_1

    .line 1643
    :pswitch_7
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mTopRightJoystickState:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;->updateYAxisValue(I)Z

    move-result v5

    or-int/2addr v2, v5

    goto :goto_1

    .line 1647
    .end local v4    # "value":B
    :cond_0
    if-eqz v2, :cond_1

    .line 1648
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->notifyJoystickEventListener()V

    .line 1652
    .end local v0    # "axisValues":[B
    .end local v1    # "i":I
    .end local v2    # "joystickUpdated":Z
    .end local v3    # "length":I
    :cond_1
    return-void

    .line 1620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private updateJoystickFiltersState(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "filterMappingState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1071
    const/4 v4, 0x0

    .line 1072
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 1073
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mJoystickFilters:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->clear()V

    .line 1074
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1075
    .local v1, "dataKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1076
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1077
    const-string v6, "SkyControllerDeviceControllerAxisFiltersStateCurrentAxisFiltersNotificationAxisIdKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1078
    .local v2, "filterId":I
    const-string v6, "SkyControllerDeviceControllerAxisFiltersStateCurrentAxisFiltersNotificationFilterUidOrBuilderKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1079
    .local v3, "filterString":Ljava/lang/String;
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mJoystickFilters:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-virtual {v6, v2, v3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 1082
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "dataKey":Ljava/lang/String;
    .end local v2    # "filterId":I
    .end local v3    # "filterString":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mJoystickFilters:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->access$1202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Z)Z

    .line 1083
    const/4 v4, 0x1

    .line 1085
    :cond_2
    return v4
.end method

.method private updateMagnetoCalibration(Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "magnetoCalibrationBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1320
    const/4 v6, 0x0

    .line 1321
    .local v6, "shouldUpdate":Z
    if-eqz p1, :cond_2

    .line 1322
    const-string v9, "SkyControllerDeviceControllerCalibrationStateMagnetoCalibrationStateNotificationStatusKey"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1323
    .local v4, "calibrationStatusValue":I
    invoke-static {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    move-result-object v3

    .line 1324
    .local v3, "calibrationStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    iget v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationState:I

    .line 1325
    .local v5, "oldCalibrationState":I
    sget-object v9, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1338
    :goto_0
    iget v9, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationState:I

    if-eq v9, v5, :cond_3

    move v6, v7

    .line 1339
    :goto_1
    const-string v7, "SkyControllerDeviceControllerCalibrationStateMagnetoCalibrationStateNotificationXQualityKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 1340
    .local v0, "calibrationQualityX":I
    const-string v7, "SkyControllerDeviceControllerCalibrationStateMagnetoCalibrationStateNotificationYQualityKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    and-int/lit16 v1, v7, 0xff

    .line 1341
    .local v1, "calibrationQualityY":I
    const-string v7, "SkyControllerDeviceControllerCalibrationStateMagnetoCalibrationStateNotificationZQualityKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    and-int/lit16 v2, v7, 0xff

    .line 1342
    .local v2, "calibrationQualityZ":I
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationQuality:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    iget v7, v7, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;->mQualityX:I

    if-eq v7, v0, :cond_0

    .line 1343
    const/4 v6, 0x1

    .line 1344
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationQuality:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    iput v0, v7, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;->mQualityX:I

    .line 1346
    :cond_0
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationQuality:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    iget v7, v7, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;->mQualityY:I

    if-eq v7, v1, :cond_1

    .line 1347
    const/4 v6, 0x1

    .line 1348
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationQuality:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    iput v1, v7, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;->mQualityY:I

    .line 1350
    :cond_1
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationQuality:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    iget v7, v7, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;->mQualityZ:I

    if-eq v7, v2, :cond_2

    .line 1351
    const/4 v6, 0x1

    .line 1352
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationQuality:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    iput v2, v7, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;->mQualityZ:I

    .line 1355
    .end local v0    # "calibrationQualityX":I
    .end local v1    # "calibrationQualityY":I
    .end local v2    # "calibrationQualityZ":I
    .end local v3    # "calibrationStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    .end local v4    # "calibrationStatusValue":I
    .end local v5    # "oldCalibrationState":I
    :cond_2
    return v6

    .line 1327
    .restart local v3    # "calibrationStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    .restart local v4    # "calibrationStatusValue":I
    .restart local v5    # "oldCalibrationState":I
    :pswitch_0
    iput v8, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationState:I

    goto :goto_0

    .line 1331
    :pswitch_1
    iput v7, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationState:I

    goto :goto_0

    .line 1335
    :pswitch_2
    const/4 v9, 0x2

    iput v9, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationState:I

    goto :goto_0

    :cond_3
    move v6, v8

    .line 1338
    goto :goto_1

    .line 1325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateMagnetoCalibrationV2(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "magnetoCalibrationBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1359
    const/4 v3, 0x0

    .line 1360
    .local v3, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1361
    const-string v6, "SkyControllerDeviceControllerCalibrationStateMagnetoCalibrationStateV2NotificationStateKey"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1362
    .local v1, "calibrationStatusValue":I
    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;

    move-result-object v0

    .line 1363
    .local v0, "calibrationStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationStateV2:I

    .line 1364
    .local v2, "oldCalibrationStateV2":I
    sget-object v6, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1384
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationStateV2:I

    if-eq v6, v2, :cond_1

    move v3, v4

    .line 1386
    .end local v0    # "calibrationStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;
    .end local v1    # "calibrationStatusValue":I
    .end local v2    # "oldCalibrationStateV2":I
    :cond_0
    :goto_1
    return v3

    .line 1366
    .restart local v0    # "calibrationStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATEV2_STATE_ENUM;
    .restart local v1    # "calibrationStatusValue":I
    .restart local v2    # "oldCalibrationStateV2":I
    :pswitch_0
    iput v5, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationStateV2:I

    goto :goto_0

    .line 1369
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationStateV2:I

    goto :goto_0

    .line 1372
    :pswitch_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationStateV2:I

    goto :goto_0

    .line 1375
    :pswitch_3
    const/4 v6, 0x3

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationStateV2:I

    goto :goto_0

    .line 1378
    :pswitch_4
    const/4 v6, 0x4

    iput v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationStateV2:I

    goto :goto_0

    :cond_1
    move v3, v5

    .line 1384
    goto :goto_1

    .line 1364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updatePosition(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "positionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide v8, 0x407f400000000000L    # 500.0

    .line 1403
    const/4 v5, 0x0

    .line 1404
    .local v5, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1405
    const-string v6, "SkyControllerDeviceControllerSkyControllerStateGpsPositionChangedNotificationLatitudeKey"

    invoke-virtual {p1, v6, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 1406
    .local v0, "lat":D
    const-string v6, "SkyControllerDeviceControllerSkyControllerStateGpsPositionChangedNotificationLongitudeKey"

    invoke-virtual {p1, v6, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 1407
    .local v2, "lng":D
    const-string v6, "SkyControllerDeviceControllerSkyControllerStateGpsPositionChangedNotificationHeadingKey"

    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 1408
    .local v4, "magneticHeading":F
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mPosition:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->updateLocation(DD)Z

    move-result v5

    .line 1409
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mPosition:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;

    invoke-virtual {v6, v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;->updateBearing(F)Z

    move-result v6

    or-int/2addr v5, v6

    .line 1411
    .end local v0    # "lat":D
    .end local v2    # "lng":D
    .end local v4    # "magneticHeading":F
    :cond_0
    return v5
.end method

.method private updateProductVariant(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "productVariantState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1045
    const/4 v4, 0x0

    .line 1046
    .local v4, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1047
    const-string v5, "SkyControllerDeviceControllerSettingsStateProductVariantChangedNotificationVariantKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1048
    .local v3, "productVariantInt":I
    invoke-static {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;

    move-result-object v2

    .line 1049
    .local v2, "productVariant":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;
    iget v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProductVariant:I

    .line 1051
    .local v1, "oldProductVariant":I
    sget-object v5, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$4;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1059
    const/4 v0, -0x1

    .line 1062
    .local v0, "newProductVariant":I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 1063
    iput v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProductVariant:I

    .line 1064
    const/4 v4, 0x1

    .line 1067
    .end local v0    # "newProductVariant":I
    .end local v1    # "oldProductVariant":I
    .end local v2    # "productVariant":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;
    .end local v3    # "productVariantInt":I
    :cond_0
    return v4

    .line 1053
    .restart local v1    # "oldProductVariant":I
    .restart local v2    # "productVariant":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_SETTINGSSTATE_PRODUCTVARIANTCHANGED_VARIANT_ENUM;
    .restart local v3    # "productVariantInt":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1054
    .restart local v0    # "newProductVariant":I
    goto :goto_0

    .line 1056
    .end local v0    # "newProductVariant":I
    :pswitch_1
    const/4 v0, 0x1

    .line 1057
    .restart local v0    # "newProductVariant":I
    goto :goto_0

    .line 1051
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateProductVersions(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "productVersionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1125
    const/4 v2, 0x0

    .line 1126
    .local v2, "shouldUpdate":Z
    if-eqz p1, :cond_1

    .line 1127
    const-string v3, "SkyControllerDeviceControllerSettingsStateProductVersionChangedNotificationSoftwareKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1128
    .local v1, "productSoftwareVersion":Ljava/lang/String;
    const-string v3, "SkyControllerDeviceControllerSettingsStateProductVersionChangedNotificationHardwareKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "productHardwareVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1130
    const/4 v2, 0x1

    .line 1131
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSoftwareVersion:Ljava/lang/String;

    .line 1133
    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mHardwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1134
    const/4 v2, 0x1

    .line 1135
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mHardwareVersion:Ljava/lang/String;

    .line 1138
    .end local v0    # "productHardwareVersion":Ljava/lang/String;
    .end local v1    # "productSoftwareVersion":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private updateReceivedAppEvent(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "applicationButtonStatesBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1670
    if-eqz p1, :cond_0

    .line 1671
    const-string v1, "MapperDeviceControllerApplicationButtonEventNotificationActionKey"

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;->getValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1672
    .local v0, "value":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->notifyAppEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;)V

    .line 1674
    .end local v0    # "value":I
    :cond_0
    return-void
.end method

.method private updateSerial(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "serialBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1754
    if-eqz p1, :cond_0

    .line 1755
    const-string v1, "SkyControllerDeviceControllerSettingsStateProductSerialChangedNotificationSerialNumberKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1756
    .local v0, "serial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSerial:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1757
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSerial:Ljava/lang/String;

    .line 1758
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSerial:Ljava/lang/String;

    invoke-static {v1}, Lcom/parrot/freeflight/util/dataCollect/DataCollection;->registerSerial(Ljava/lang/String;)Z

    .line 1759
    const/4 v1, 0x1

    .line 1762
    .end local v0    # "serial":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSettingsButtonState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "settingsButtonEventBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 1598
    if-eqz p1, :cond_0

    .line 1599
    invoke-direct {p0, v0, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->notifyButtonListeners(IZ)V

    .line 1601
    :cond_0
    return-void
.end method

.method private updateSsid(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1766
    if-eqz p1, :cond_0

    .line 1767
    const-string v1, "SkyControllerDeviceControllerAccessPointSettingsStateAccessPointSSIDChangedNotificationSsidKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1768
    .local v0, "ssid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1769
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSsid:Ljava/lang/String;

    .line 1770
    const/4 v1, 0x1

    .line 1773
    .end local v0    # "ssid":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateWifiAutoChannelList(Landroid/os/Bundle;)Z
    .locals 13
    .param p1, "wifiAutoChannelBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1704
    if-eqz p1, :cond_4

    .line 1705
    iget-object v11, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelState:Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    invoke-virtual {v11}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->getWifiChannelList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 1706
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

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1707
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 1708
    .local v8, "networkData":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 1709
    const-string v12, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotificationBandKey"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1710
    .local v2, "band":I
    const-string v12, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotificationChannelKey"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    .line 1711
    .local v4, "channelByte":B
    and-int/lit16 v3, v4, 0xff

    .line 1712
    .local v3, "channel":I
    if-eqz v3, :cond_0

    .line 1713
    const-string v12, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotificationInOrOutKey"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    .line 1714
    .local v5, "inOrOutInt":B
    shr-int/lit8 v12, v5, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    move v0, v9

    .line 1715
    .local v0, "allowedIn":Z
    :goto_1
    and-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_2

    move v1, v9

    .line 1717
    .local v1, "allowedOut":Z
    :goto_2
    new-instance v6, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-direct {v6, v2, v3}, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;-><init>(II)V

    .line 1718
    .local v6, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    iput-boolean v0, v6, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->indoorAllowed:Z

    .line 1719
    iput-boolean v1, v6, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->outdoorAllowed:Z

    .line 1721
    iget-object v12, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelState:Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    invoke-virtual {v12, v6}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->addWifiChannel(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;)V

    goto :goto_0

    .end local v0    # "allowedIn":Z
    .end local v1    # "allowedOut":Z
    .end local v6    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_1
    move v0, v10

    .line 1714
    goto :goto_1

    .restart local v0    # "allowedIn":Z
    :cond_2
    move v1, v10

    .line 1715
    goto :goto_2

    .line 1725
    .end local v0    # "allowedIn":Z
    .end local v2    # "band":I
    .end local v3    # "channel":I
    .end local v4    # "channelByte":B
    .end local v5    # "inOrOutInt":B
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "networkData":Landroid/os/Bundle;
    :cond_3
    iget-object v9, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelState:Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    invoke-virtual {v9}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->getWifiChannelList()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1727
    :cond_4
    return v10
.end method

.method private updateWifiList(Landroid/os/Bundle;)Z
    .locals 13
    .param p1, "wifiListBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1154
    const/4 v9, 0x0

    .line 1155
    .local v9, "shouldUpdate":Z
    if-eqz p1, :cond_4

    .line 1156
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1158
    .local v11, "wifiList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1159
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 1160
    .local v10, "wifiBundle":Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 1161
    const-string v0, "SkyControllerDeviceControllerWifiStateWifiListNotificationBssidKey"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1162
    .local v1, "bssid":Ljava/lang/String;
    const-string v0, "SkyControllerDeviceControllerWifiStateWifiListNotificationSsidKey"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1163
    .local v2, "ssid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    const-string v0, "SkyControllerDeviceControllerWifiStateWifiListNotificationSecuredKey"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    if-ne v0, v7, :cond_1

    move v3, v7

    .line 1165
    .local v3, "secured":Z
    :goto_1
    const-string v0, "SkyControllerDeviceControllerWifiStateWifiListNotificationSavedKey"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    if-ne v0, v7, :cond_2

    move v4, v7

    .line 1166
    .local v4, "saved":Z
    :goto_2
    const-string v0, "SkyControllerDeviceControllerWifiStateWifiListNotificationRssiKey"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1168
    .local v5, "rssi":I
    new-instance v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIZZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v3    # "secured":Z
    .end local v4    # "saved":Z
    .end local v5    # "rssi":I
    :cond_1
    move v3, v6

    .line 1164
    goto :goto_1

    .restart local v3    # "secured":Z
    :cond_2
    move v4, v6

    .line 1165
    goto :goto_2

    .line 1172
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "ssid":Ljava/lang/String;
    .end local v3    # "secured":Z
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "wifiBundle":Landroid/os/Bundle;
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->clear()V

    .line 1173
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-virtual {v0, v11}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1174
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v0, v7}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 1175
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCurrentDroneSsid:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->sortList(Ljava/util/List;Ljava/lang/String;)V

    .line 1177
    const/4 v9, 0x1

    .line 1179
    .end local v11    # "wifiList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    :cond_4
    return v9
.end method

.method private updateWifiSelection(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "wifiSelectionBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1742
    const/4 v3, 0x0

    .line 1743
    .local v3, "update":Z
    if-eqz p1, :cond_1

    .line 1744
    iget-boolean v4, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelNewApi:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelNewApi:Z

    .line 1745
    :cond_0
    const-string v4, "SkyControllerDeviceControllerAccessPointSettingsStateWifiSelectionChangedNotificationChannelKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 1746
    .local v0, "apChannel":Ljava/lang/Byte;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    and-int/lit16 v2, v4, 0xff

    .line 1747
    .local v2, "channel":I
    const-string v4, "SkyControllerDeviceControllerAccessPointSettingsStateWifiSelectionChangedNotificationBandKey"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1748
    .local v1, "band":I
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelState:Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    invoke-virtual {v4, v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->updateSelectedChannel(II)Z

    move-result v3

    .line 1750
    .end local v0    # "apChannel":Ljava/lang/Byte;
    .end local v1    # "band":I
    .end local v2    # "channel":I
    :cond_1
    return v3
.end method

.method private updateWifiSignal(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "wifiSignalBundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1427
    const/4 v0, 0x0

    .line 1428
    .local v0, "shouldUpdate":Z
    if-eqz p1, :cond_0

    .line 1429
    const-string v1, "SkyControllerDeviceControllerWifiStateWifiSignalChangedNotificationLevelKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiSignalLevel:I

    .line 1430
    const/4 v0, 0x1

    .line 1432
    :cond_0
    return v0
.end method


# virtual methods
.method public abortCalibrationV2()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedMagnetoCalibrationV2Abort()V

    .line 815
    :cond_0
    return-void
.end method

.method public addAppEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;)V
    .locals 1
    .param p1, "appEventListener"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAppEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 1581
    return-void
.end method

.method public addAuthFailedListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAuthFailedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 1589
    return-void
.end method

.method public addJoystickEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;)V
    .locals 1
    .param p1, "joystickEventListener"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mJoystickEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 1573
    return-void
.end method

.method public addKeyEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;)V
    .locals 1
    .param p1, "keyEventListener"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 1565
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/Model;->close()V

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 166
    return-void
.end method

.method public connectToDrone(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$SecurityListener;)V
    .locals 1
    .param p1, "selectedDrone"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$SecurityListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 686
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isSecured()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    invoke-interface {p2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$SecurityListener;->onPasswordNeeded()V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->connectToDrone(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connectToDrone(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "selectedDrone"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "passphrase"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 696
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v2, :cond_1

    .line 697
    if-nez p2, :cond_2

    const-string v1, ""

    .line 698
    .local v1, "phrase":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectingDroneSsid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->getInfoForSsid(Ljava/util/List;Ljava/lang/String;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    move-result-object v0

    .line 699
    .local v0, "droneInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->setState(I)V

    .line 701
    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->setActive(Z)V

    .line 703
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectingDroneSsid:Ljava/lang/String;

    .line 704
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->setState(I)V

    .line 705
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->setActive(Z)V

    .line 706
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v2, v5}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 707
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->notifyListener()V

    .line 708
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v2, v4}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 710
    iget v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    if-nez v2, :cond_3

    .line 711
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userConnectToWifi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 717
    .end local v0    # "droneInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .end local v1    # "phrase":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v1, p2

    .line 697
    goto :goto_0

    .line 713
    .restart local v0    # "droneInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .restart local v1    # "phrase":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userConnectToDrone(Ljava/lang/String;Ljava/lang/String;)Z

    .line 714
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestDroneList()Z

    goto :goto_1
.end method

.method public forgetDrone(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V
    .locals 3
    .param p1, "droneConnectionInfo"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 672
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 673
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    if-nez v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userForgetNetwork(Ljava/lang/String;)Z

    .line 678
    :goto_0
    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->setSaved(Z)V

    .line 679
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 680
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->notifyListener()V

    .line 681
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 683
    :cond_0
    return-void

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getSerial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userForgetDrone(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public getAttitude()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAttitude:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Attitude;

    return-object v0
.end method

.method public getAxisMapping()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    return-object v0
.end method

.method public getAxisMappingItems()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AxisMappingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mBatteryLevel:I

    return v0
.end method

.method public getButtonMappingItems()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ButtonMappingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    return-object v0
.end method

.method public getButtonsMapping()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonsMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    return-object v0
.end method

.method public getCalibrationQuality()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationQuality:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;

    return-object v0
.end method

.method public getCalibrationState()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationState:I

    return v0
.end method

.method public getCalibrationStateV2()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationStateV2:I

    return v0
.end method

.method public getCoPilotingState()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCoPilotingState:I

    return v0
.end method

.method public getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method

.method public getCurrentDroneSsid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCurrentDroneSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method public getDroneConnectionInfoList()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    return-object v0
.end method

.method public getExpoMapItems()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList",
            "<",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$ExpoMapItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mExpoMapItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    return-object v0
.end method

.method public getGpsFixStatus()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mGpsFixStatus:I

    return v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mHardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getJoystickFilters()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mJoystickFilters:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProductName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProductName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPosition()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mPosition:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$Position;

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method public getProductVariant()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProductVariant:I

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 782
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 254
    iget v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNapSoftVersion()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "napSoftVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 258
    .end local v0    # "napSoftVersion":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSoftwareVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getSsidName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    return v0
.end method

.method public getWifiChannelState()Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelState:Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    return-object v0
.end method

.method public getWifiSignalLevel()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiSignalLevel:I

    return v0
.end method

.method public grabCommand(II)V
    .locals 1
    .param p1, "buttonsToGrab"    # I
    .param p2, "axisToGrab"    # I

    .prologue
    .line 611
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedGrabCommand(II)V

    .line 614
    :cond_0
    return-void
.end method

.method public is5GHzBandAllowed()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2P:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCalibrated()Z
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationStateV2:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listenEvents(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listen"    # Z

    .prologue
    .line 855
    if-eqz p2, :cond_0

    .line 856
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "skyControllerDeviceControllerNotificationDictionaryChanged"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 857
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SkyControllerDeviceControllerButtonEventsSettingsNotification"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 858
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "MapperDeviceControllerGrabButtonEventNotification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    const-string v1, "MapperDeviceControllerGrabAxisEventNotification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    const-string v1, "MapperDeviceControllerApplicationButtonEventNotification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    const-string v1, "DroneManagerDeviceControllerAuthenticationFailedNotification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 867
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mNotificationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 865
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public loadFromStore()V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/Model;->loadFromStore()V

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/LocalStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mProductName:Ljava/lang/String;

    .line 139
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSoftwareVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSoftwareVersion:Ljava/lang/String;

    .line 140
    const-string v1, "battery_level"

    iget v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mBatteryLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mBatteryLevel:I

    .line 141
    const-string v1, "hardware"

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mHardwareVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mHardwareVersion:Ljava/lang/String;

    .line 142
    const-string/jumbo v1, "serial_number"

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSerial:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSerial:Ljava/lang/String;

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mHasBeenLoadedFromStore:Z

    .line 145
    return-void
.end method

.method public needCalibration()Z
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCalibrationStateV2:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAppEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;)V
    .locals 1
    .param p1, "appEventListener"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAppEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1585
    return-void
.end method

.method public removeAuthFailedListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAuthFailedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1593
    return-void
.end method

.method public removeJoystickEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;)V
    .locals 1
    .param p1, "joystickEventListener"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mJoystickEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1577
    return-void
.end method

.method public removeKeyEventListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;)V
    .locals 1
    .param p1, "keyEventListener"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mKeyEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1569
    return-void
.end method

.method public requestCurrentWifi()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestCurrentWifi()Z

    .line 659
    :cond_0
    return-void
.end method

.method public requestDroneList()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 663
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    if-nez v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestWifiList()Z

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestDroneList()Z

    goto :goto_0
.end method

.method public requestResetPreferences()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedDefaultButtonMappings()V

    .line 740
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedDefaultAxisMappings()V

    .line 741
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedDefaultAxisFilters()V

    .line 743
    :cond_0
    return-void
.end method

.method public requestSetSsid(Ljava/lang/String;)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 772
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestSetAPSSID(Ljava/lang/String;)Z

    .line 775
    :cond_1
    return-void
.end method

.method public requestWifiAuthChannel()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedSettingsWifiAuthChannel()V

    .line 769
    :cond_1
    return-void
.end method

.method public resetSkyControllerMapping(S)V
    .locals 1
    .param p1, "product"    # S

    .prologue
    .line 617
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedResetMapping(S)V

    .line 620
    :cond_0
    return-void
.end method

.method public saveToStore()V
    .locals 4

    .prologue
    .line 149
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mHasBeenLoadedFromStore:Z

    if-nez v2, :cond_0

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/core/model/Model;->saveToStore()V

    .line 151
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mStoreEmpty:Z

    .line 152
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mLocalStorage:Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/LocalStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string/jumbo v2, "version"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string v2, "battery_level"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getBatteryLevel()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    const-string v2, "hardware"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getHardwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    const-string/jumbo v2, "serial_number"

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public selectWifiChannel(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;)V
    .locals 4
    .param p1, "channelInfo"    # Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 756
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 757
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mWifiChannelNewApi:Z

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_TYPE_ENUM;->ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_TYPE_MANUAL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_TYPE_ENUM;

    iget v2, p1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    invoke-static {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_BAND_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_BAND_ENUM;

    move-result-object v2

    iget v3, p1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    int-to-byte v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestSetWifiApChannel(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_BAND_ENUM;B)Z

    .line 763
    :cond_1
    :goto_0
    return-void

    .line 760
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    iget v1, p1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestSetWifiApChannel(B)Z

    goto :goto_0
.end method

.method public sendAxisMapping(SLcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;II)V
    .locals 1
    .param p1, "product"    # S
    .param p2, "action"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "axis"    # I
    .param p4, "buttons"    # I

    .prologue
    .line 629
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedAxisMappingChange(SLcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;II)V

    .line 632
    :cond_0
    return-void
.end method

.method public sendButtonMapping(SLcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;I)V
    .locals 1
    .param p1, "product"    # S
    .param p2, "action"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "buttons"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedButtonMappingChange(SLcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;I)V

    .line 626
    :cond_0
    return-void
.end method

.method public sendExpoChange(SILcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V
    .locals 1
    .param p1, "product"    # S
    .param p2, "axis"    # I
    .param p3, "expo"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 635
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedExpoChange(SILcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V

    .line 638
    :cond_0
    return-void
.end method

.method public setAxisFilter(ILjava/lang/String;)V
    .locals 1
    .param p1, "axisCode"    # I
    .param p2, "filter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 732
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userSetAxisFilter(ILjava/lang/String;)V

    .line 735
    :cond_0
    return-void
.end method

.method public setAxisMapping(ILjava/lang/String;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "actionName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 726
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userSetAxisMapping(ILjava/lang/String;)V

    .line 729
    :cond_0
    return-void
.end method

.method public setButtonsMapping(ILjava/lang/String;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "actionName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 720
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userSetButtonMapping(ILjava/lang/String;)V

    .line 723
    :cond_0
    return-void
.end method

.method public setCoPilotingState(I)V
    .locals 2
    .param p1, "coPilotingState"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 647
    if-nez p1, :cond_1

    .line 648
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;->ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_CONTROLLER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestPilotingFromSource(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;->ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_SKYCONTROLLER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestPilotingFromSource(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;)V

    goto :goto_0
.end method

.method public startCalibration()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedMagnetoCalibrationQualityUpdates(Z)V

    .line 797
    :cond_0
    return-void
.end method

.method public startCalibrationV2()V
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedMagnetoCalibrationV2Start()V

    .line 809
    :cond_0
    return-void
.end method

.method public stopCalibration()V
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->userRequestedMagnetoCalibrationQualityUpdates(Z)V

    .line 803
    :cond_0
    return-void
.end method

.method public switchCoPilotingState()V
    .locals 2

    .prologue
    .line 641
    iget v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mCoPilotingState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 642
    .local v0, "newCoPilotingState":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->setCoPilotingState(I)V

    .line 643
    return-void

    .line 641
    .end local v0    # "newCoPilotingState":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 903
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mSkyControllerDeviceController:Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 905
    .local v0, "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v1, "SkyControllerDeviceControllerSettingsStateProductVersionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateProductVersions(Landroid/os/Bundle;)Z

    .line 906
    const-string v1, "SkyControllerDeviceControllerSkyControllerStateBatteryChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateBatteryLevel(Landroid/os/Bundle;)Z

    .line 907
    const-string v1, "SkyControllerDeviceControllerCalibrationStateMagnetoCalibrationStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateMagnetoCalibration(Landroid/os/Bundle;)Z

    .line 908
    const-string v1, "SkyControllerDeviceControllerSkyControllerStateGpsFixChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateGpsState(Landroid/os/Bundle;)Z

    .line 909
    const-string v1, "SkyControllerDeviceControllerSkyControllerStateGpsPositionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updatePosition(Landroid/os/Bundle;)Z

    .line 910
    const-string v1, "SkyControllerDeviceControllerSkyControllerStateAttitudeChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateAttitude(Landroid/os/Bundle;)Z

    .line 911
    const-string v1, "SkyControllerDeviceControllerWifiStateWifiSignalChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateWifiSignal(Landroid/os/Bundle;)Z

    .line 912
    const-string v1, "SkyControllerDeviceControllerCoPilotingStatePilotingSourceNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateCoPilotingState(Landroid/os/Bundle;)Z

    .line 913
    const-string v1, "SkyControllerDeviceControllerWifiStateWifiListNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateWifiList(Landroid/os/Bundle;)Z

    .line 914
    const-string v1, "SkyControllerDeviceControllerWifiStateConnexionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateCurrentWifi(Landroid/os/Bundle;)Z

    .line 915
    const-string v1, "DroneManagerDeviceControllerDroneListItemNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateDroneList(Landroid/os/Bundle;)Z

    .line 916
    const-string v1, "DroneManagerDeviceControllerConnectionStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateDroneManagerConnectionState(Landroid/os/Bundle;)Z

    .line 917
    const-string v1, "SkyControllerDeviceControllerAxisMappingsStateCurrentAxisMappingsNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateAxisMappingState(Landroid/os/Bundle;)Z

    .line 918
    const-string v1, "SkyControllerDeviceControllerButtonMappingsStateCurrentButtonMappingsNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateButtonsMappingState(Landroid/os/Bundle;)Z

    .line 919
    const-string v1, "SkyControllerDeviceControllerAxisFiltersStateCurrentAxisFiltersNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateJoystickFiltersState(Landroid/os/Bundle;)Z

    .line 920
    const-string v1, "SkyControllerDeviceControllerSettingsStateProductVariantChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateProductVariant(Landroid/os/Bundle;)Z

    .line 921
    const-string v1, "MapperDeviceControllerGrabStateNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateCommandGrabbingState(Landroid/os/Bundle;)Z

    .line 922
    const-string v1, "MapperDeviceControllerExpoMapItemNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateExpoMapItems(Landroid/os/Bundle;)Z

    .line 923
    const-string v1, "MapperDeviceControllerButtonMappingItemNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateButtonsMapping(Landroid/os/Bundle;)Z

    .line 924
    const-string v1, "MapperDeviceControllerAxisMappingItemNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateAxisMapping(Landroid/os/Bundle;)Z

    .line 925
    const-string v1, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateWifiAutoChannelList(Landroid/os/Bundle;)Z

    .line 926
    const-string v1, "SkyControllerDeviceControllerAccessPointSettingsStateAccessPointChannelChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateAccessPointChannel(Landroid/os/Bundle;)Z

    .line 927
    const-string v1, "SkyControllerDeviceControllerAccessPointSettingsStateWifiSelectionChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateWifiSelection(Landroid/os/Bundle;)Z

    .line 928
    const-string v1, "SkyControllerDeviceControllerSettingsStateProductSerialChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateSerial(Landroid/os/Bundle;)Z

    .line 929
    const-string v1, "SkyControllerDeviceControllerAccessPointSettingsStateAccessPointSSIDChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->updateSsid(Landroid/os/Bundle;)Z

    .line 930
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->notifyListener()V

    .line 931
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mDroneConnectionInfoList:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 932
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->access$1202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Z)Z

    .line 933
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mJoystickFilters:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->access$1202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Z)Z

    .line 934
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonsMapping:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->access$1202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Z)Z

    .line 935
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mExpoMapItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 936
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mAxisMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 937
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->mButtonMappingItems:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z

    .line 939
    .end local v0    # "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    :cond_0
    return-void
.end method
