.class public abstract Lcom/parrot/controller/devicecontrollers/DeviceController;
.super Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;
.source "DeviceController.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkManagerExtend;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;,
        Lcom/parrot/controller/devicecontrollers/DeviceController$LocalBinder;
    }
.end annotation


# static fields
.field public static final ARSTREAM2_CLIENT_CONTROL_PORT:I = 0xd6dd

.field public static final ARSTREAM2_CLIENT_STREAM_PORT:I = 0xd6dc

.field public static final DEVICECONTROLLER_EXTRA_DEVICECONTROLER_BRIDGE:Ljava/lang/String; = "com.parrot.freeflight3.DeviceController.extra.deviceController.bridge"

.field public static final DEVICECONTROLLER_EXTRA_DEVICESERVICE:Ljava/lang/String; = "com.parrot.freeflight3.DeviceController.extra.deviceservice"

.field public static final DEVICECONTROLLER_EXTRA_FASTRECONNECTION:Ljava/lang/String; = "com.parrot.freeflight3.DeviceController.extra.fastreconnection"

.field public static final DEVICECONTROLLER_SHARED_PREFERENCES_KEY:Ljava/lang/String; = "DEVICECONTROLLER_SHARED_PREFERENCES_KEY"

.field public static final DeviceControllerAllSettingsDidStartNotification:Ljava/lang/String; = "DeviceControllerAllSettingsDidStartNotification"

.field public static final DeviceControllerAllStatesDidStartNotification:Ljava/lang/String; = "DeviceControllerAllStatesDidStartNotification"

.field public static final DeviceControllerDidFailNotification:Ljava/lang/String; = "DeviceControllerDidFailNotification"

.field public static final DeviceControllerDidStartNotification:Ljava/lang/String; = "DeviceControllerDidStartNotification"

.field public static final DeviceControllerDidStopNotification:Ljava/lang/String; = "DeviceControllerDidStopNotification"

.field public static final DeviceControllerWillStartNotification:Ljava/lang/String; = "DeviceControllerWillStartNotification"

.field public static final DeviceControllerWillStopNotification:Ljava/lang/String; = "DeviceControllerWillStopNotification"

.field private static final ENABLE_ARNETWORK_BANWIDTH_MEASURE:Z = false

.field private static INITIAL_TIMEOUT_RETRIEVAL_MS:J = 0x0L

.field public static final INTENT_EXTRA_ERROR:Ljava/lang/String; = "INTENT_EXTRA_ERROR"

.field public static final INTENT_EXTRA_IS_SUBDEVICE:Ljava/lang/String; = "INTENT_EXTRA_IS_SUBDEVICE"

.field public static final INTENT_SOURCE_UUID:Ljava/lang/String; = "INTENT_SOURCE_UUID"

.field private static final NETWORKAL_DATA_DUMP_FILENAME:Ljava/lang/String; = "freeflight"

.field private static final NETWORKAL_DATA_DUMP_FOLDER:Ljava/lang/String; = "/sdcard/ar_data_dump"

.field private static final NETWORKAL_DATA_DUMP_TAG:B = 0x30t

.field private static final NUMBER_OF_RSSI_TO_SAVE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_STREAM:Ljava/lang/String; = "debug_stream"

.field private static final VIDEO_RECEIVE_TIMEOUT:I = 0x1f4


# instance fields
.field private alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

.field private allowCommands:Z

.field protected arCommandsVersionController:Ljava/lang/String;

.field protected arCommandsVersionDevice:Ljava/lang/String;

.field protected arCommandsVersionOlder:Ljava/lang/String;

.field protected arCommandsVersionSkyController:Ljava/lang/String;

.field private arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

.field private arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

.field private arstream2Resender:Lcom/parrot/arsdk/arstream2/ARStream2Resender;

.field private arstream2StartRequested:Z

.field private arstream2Started:Z

.field protected baseControllerCancelled:Z

.field private baseControllerStarted:Z

.field private beaverResendeDestControlPort:I

.field private beaverResenderDestAddress:Ljava/lang/String;

.field private beaverResenderDestStreamPort:I

.field private final binder:Landroid/os/IBinder;

.field private bridgeBound:Z

.field protected bridgeConnection:Landroid/content/ServiceConnection;

.field private bridgeConnectionSem:Ljava/util/concurrent/Semaphore;

.field private bridgeDeviceControllerDidStop:Landroid/content/BroadcastReceiver;

.field private bwThread:Ljava/lang/Thread;

.field private cmdGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

.field private cmdGetAllStatesSent:Ljava/util/concurrent/Semaphore;

.field private decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

.field protected deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

.field protected deviceControllerBridgeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/parrot/controller/devicecontrollers/DeviceController;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

.field private deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

.field private disconnectSent:Ljava/util/concurrent/Semaphore;

.field private discoverSemaphore:Ljava/util/concurrent/Semaphore;

.field private discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

.field private discoveryPort:I

.field fastReconnection:Z

.field private indexOfRssiArray:I

.field private initialized:Z

.field private intentCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private isDumping:Z

.field private isWaitingAllSettings:Z

.field private isWaitingAllStates:Z

.field protected loopInterval:J

.field private looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

.field protected mApplicationContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mConnectionProtocolEnded:Z

.field private mediaOpened:Z

.field private netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

.field private netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

.field protected notAService:Z

.field private readerThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteRssis:[I

.field private final rssis:[I

.field private rxThread:Ljava/lang/Thread;

.field startCancelled:Z

.field state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

.field final stateLock:Ljava/util/concurrent/locks/Lock;

.field private txThread:Ljava/lang/Thread;

.field private final uuid:Ljava/util/UUID;

.field protected videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

.field protected videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

.field private wifiUtils:Lcom/parrot/controller/utils/WifiUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-class v0, Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    .line 165
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->INITIAL_TIMEOUT_RETRIEVAL_MS:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;-><init>()V

    .line 105
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isDumping:Z

    .line 107
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$LocalBinder;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$LocalBinder;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->binder:Landroid/os/IBinder;

    .line 148
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->uuid:Ljava/util/UUID;

    .line 150
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionOlder:Ljava/lang/String;

    .line 151
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionDevice:Ljava/lang/String;

    .line 152
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    .line 153
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionController:Ljava/lang/String;

    .line 167
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    .line 168
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    .line 169
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->remoteRssis:[I

    .line 177
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeBound:Z

    .line 181
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$1;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$1;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnection:Landroid/content/ServiceConnection;

    .line 2101
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    .line 2102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    .line 208
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-direct {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
    .param p1, "x1"    # Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnectionSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/controller/devicecontrollers/DeviceController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 74
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryPort:I

    return v0
.end method

.method static synthetic access$800(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoverSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private ardiscoveryNetConnect()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 999
    sget-object v4, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 1000
    .local v4, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 1001
    .local v2, "discoveryConnectionError":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    new-instance v5, Ljava/util/concurrent/Semaphore;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoverSemaphore:Ljava/util/concurrent/Semaphore;

    .line 1003
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v5}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getInboundPort()I

    move-result v1

    .line 1004
    .local v1, "d2cPort":I
    new-instance v5, Lcom/parrot/controller/devicecontrollers/DeviceController$3;

    invoke-direct {v5, p0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$3;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;I)V

    iput-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    .line 1084
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;

    invoke-direct {v0, p0, v7}, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/controller/devicecontrollers/DeviceController$1;)V

    .line 1085
    .local v0, "connectionThread":Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->start()V

    .line 1089
    :try_start_0
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoverSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1090
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$NetConnectionThread;->getError()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1098
    :goto_0
    sget-object v5, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v4, v5, :cond_0

    .line 1101
    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_CONNECTION_BAD_ID:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-ne v2, v5, :cond_1

    .line 1103
    sget-object v4, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR_BAD_DEVICE:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 1112
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    invoke-virtual {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->dispose()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 1113
    iput-object v7, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    .line 1115
    return-object v4

    .line 1092
    :catch_0
    move-exception v3

    .line 1094
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1095
    sget-object v4, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto :goto_0

    .line 1105
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_1
    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-eq v2, v5, :cond_0

    .line 1107
    sget-object v4, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto :goto_1
.end method

.method private ardiscoveryUsbConnect()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 6

    .prologue
    .line 1119
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 1120
    .local v3, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 1121
    .local v1, "discoveryConnectionError":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    new-instance v4, Ljava/util/concurrent/Semaphore;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoverSemaphore:Ljava/util/concurrent/Semaphore;

    .line 1124
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 1125
    .local v0, "connectionThread":Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->start()V

    .line 1129
    :try_start_0
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoverSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1130
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$UsbConnectionThread;->getError()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1137
    :goto_0
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-eq v1, v4, :cond_0

    .line 1139
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 1141
    :cond_0
    return-object v3

    .line 1132
    :catch_0
    move-exception v2

    .line 1134
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1135
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto :goto_0
.end method

.method private initBroadcastReceivers()V
    .locals 1

    .prologue
    .line 2320
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$8;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$8;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeDeviceControllerDidStop:Landroid/content/BroadcastReceiver;

    .line 2333
    return-void
.end method

.method private initDeviceControllerIntents()V
    .locals 4

    .prologue
    .line 333
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    .line 334
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerWillStartNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerWillStartNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerDidStartNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerDidStartNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerWillStopNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerWillStopNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerDidStopNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerDidStopNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerDidFailNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerDidFailNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerAllSettingsDidStartNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerAllSettingsDidStartNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    const-string v1, "DeviceControllerAllStatesDidStartNotification"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "DeviceControllerAllStatesDidStartNotification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-void
.end method

.method private registerDeviceControllerEvents()V
    .locals 4

    .prologue
    .line 2306
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->unregisterDeviceControllerEvents()V

    .line 2308
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initBroadcastReceivers()V

    .line 2309
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeDeviceControllerDidStop:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerDidStopNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2310
    return-void
.end method

.method private sendControllerLibARCommandsVersion(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)V
    .locals 5
    .param p1, "bufferId"    # I
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p4, "version"    # Ljava/lang/String;

    .prologue
    .line 1443
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 1444
    .local v1, "cmdError":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;
    const/4 v2, 0x0

    .line 1445
    .local v2, "sentStatus":Z
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 1447
    .local v0, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    invoke-virtual {v0, p4}, Lcom/parrot/arsdk/arcommands/ARCommand;->setCommonARLibsVersionsStateControllerLibARCommandsVersion(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    move-result-object v1

    .line 1449
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;->ARCOMMANDS_GENERATOR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    if-ne v1, v3, :cond_0

    .line 1452
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    .line 1453
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1456
    :cond_0
    if-nez v2, :cond_1

    .line 1458
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v4, "Failed to send ControllerARLibVersion command."

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :cond_1
    return-void
.end method

.method private startBridge()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 690
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 691
    .local v1, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnectionSem:Ljava/util/concurrent/Semaphore;

    .line 693
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initBroadcastReceivers()V

    .line 694
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->registerDeviceControllerEvents()V

    .line 696
    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notAService:Z

    if-eqz v2, :cond_1

    .line 698
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getARCommandsVersionSkyController()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    .line 699
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceDiscoveryInfo()Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->copyFrom(Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;)V

    .line 700
    iput-boolean v6, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeBound:Z

    .line 701
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDecoder()Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .line 718
    :goto_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    if-nez v2, :cond_0

    .line 720
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "Could not get decoder from bridge controller"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 723
    :cond_0
    return-object v1

    .line 705
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 709
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnectionSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_1
    iput-boolean v6, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeBound:Z

    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private startLooperThread()V
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->createNewControllerLooperThread()Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    .line 685
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->start()V

    .line 686
    return-void
.end method

.method private startNetwork()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 14

    .prologue
    const/4 v4, 0x1

    .line 418
    sget-object v7, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 419
    .local v7, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 421
    .local v11, "netALError":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    const/4 v5, 0x0

    .line 424
    .local v5, "pingDelay":I
    new-instance v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-direct {v0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    .line 427
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v0, :cond_9

    .line 430
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v1, "alManager.ARDiscoveryDeviceNetService "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 432
    .local v12, "netDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v12}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->setIpAddress(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v12}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getPort()I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryPort:I

    .line 436
    invoke-virtual {v12}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v12}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 442
    .local v9, "jsonObject":Lorg/json/JSONObject;
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->setSerial(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->ardiscoveryNetConnect()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v7

    .line 455
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v7, v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    .line 460
    .local v8, "ipAddr":Ljava/lang/String;
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    const-string v1, "/sdcard/ar_data_dump"

    const-string v2, "freeflight"

    invoke-virtual {v0, v1, v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->enableDataDump(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v11

    .line 461
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-eq v11, v0, :cond_5

    .line 463
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while enabling data dump : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disabling dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isDumping:Z

    .line 471
    :goto_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getC2dPort()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getInboundPort()I

    move-result v2

    invoke-virtual {v0, v8, v1, v2, v4}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->initWifiNetwork(Ljava/lang/String;III)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v11

    .line 473
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-ne v11, v0, :cond_8

    .line 475
    iput-boolean v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    .line 477
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getQosMode()I

    move-result v0

    if-ne v0, v4, :cond_6

    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_CS6:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->setSendClassSelector(Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v11

    .line 478
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-eq v11, v0, :cond_1

    .line 480
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getQosMode()I

    move-result v0

    if-ne v0, v4, :cond_7

    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_CS6:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->setRecvClassSelector(Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v11

    .line 483
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-eq v11, v0, :cond_2

    .line 485
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .end local v8    # "ipAddr":Ljava/lang/String;
    .end local v12    # "netDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :cond_2
    :goto_4
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v7, v0, :cond_3

    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v0, :cond_3

    .line 570
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkManagerExtend;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dParams()[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v3

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getD2cParams()[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkManagerExtend;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    .line 572
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->isCorrectlyInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 574
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v1, "new ARNetworkManager failed"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    sget-object v7, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 579
    :cond_3
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v7, v0, :cond_4

    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v0, :cond_4

    .line 582
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v1, v1, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_receivingRunnable:Lcom/parrot/arsdk/arnetwork/ReceivingRunnable;

    const-string v2, "Network rx"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rxThread:Ljava/lang/Thread;

    .line 583
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rxThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 585
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    iget-object v1, v1, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->m_sendingRunnable:Lcom/parrot/arsdk/arnetwork/SendingRunnable;

    const-string v2, "Network tx"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->txThread:Ljava/lang/Thread;

    .line 586
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->txThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 588
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    invoke-direct {v0}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .line 591
    :cond_4
    return-object v7

    .line 468
    .restart local v8    # "ipAddr":Ljava/lang/String;
    .restart local v12    # "netDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :cond_5
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v1, "Enabling data dump into /sdcard/ar_data_dump"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iput-boolean v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isDumping:Z

    goto/16 :goto_1

    .line 477
    :cond_6
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_UNSPECIFIED:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    goto/16 :goto_2

    .line 482
    :cond_7
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_UNSPECIFIED:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    goto/16 :goto_3

    .line 490
    :cond_8
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v7, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto/16 :goto_4

    .line 497
    .end local v8    # "ipAddr":Ljava/lang/String;
    .end local v12    # "netDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :cond_9
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-eqz v0, :cond_b

    .line 500
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alManager.initBLENetwork netConfig.getBLENotificationIDs(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getBLENotificationIDs()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 502
    .local v6, "bleDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getBLENotificationIDs()[I

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->initBLENetwork(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I[I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v11

    .line 504
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-ne v11, v0, :cond_a

    .line 506
    iput-boolean v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    .line 507
    const/4 v5, -0x1

    goto/16 :goto_4

    .line 511
    :cond_a
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error occured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    sget-object v7, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto/16 :goto_4

    .line 516
    .end local v6    # "bleDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    :cond_b
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-eqz v0, :cond_e

    .line 518
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    .line 520
    .local v13, "usbDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v13}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->getSerial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->setSerial(Ljava/lang/String;)V

    .line 522
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->ardiscoveryUsbConnect()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v7

    .line 524
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v7, v0, :cond_2

    .line 526
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->getMux()Lcom/parrot/mux/Mux;

    move-result-object v10

    .line 527
    .local v10, "mux":Lcom/parrot/mux/Mux;
    if-eqz v10, :cond_c

    .line 529
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v0, v10}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->initMuxNetwork(Lcom/parrot/mux/Mux;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 536
    :goto_5
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-ne v11, v0, :cond_d

    .line 538
    iput-boolean v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    goto/16 :goto_4

    .line 533
    :cond_c
    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto :goto_5

    .line 542
    :cond_d
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    sget-object v7, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto/16 :goto_4

    .line 549
    .end local v10    # "mux":Lcom/parrot/mux/Mux;
    .end local v13    # "usbDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    :cond_e
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v1, "Unknow network media type."

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-object v7, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    goto/16 :goto_4

    .line 447
    .restart local v12    # "netDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private startReadThreads()V
    .locals 6

    .prologue
    .line 597
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getCommandsIOBuffers()[I

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 599
    .local v0, "bufferId":I
    new-instance v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;

    invoke-direct {v1, p0, v0}, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;I)V

    .line 600
    .local v1, "readerThread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    .end local v0    # "bufferId":I
    .end local v1    # "readerThread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    :cond_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;

    .line 606
    .restart local v1    # "readerThread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->start()V

    goto :goto_1

    .line 608
    .end local v1    # "readerThread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    :cond_1
    return-void
.end method

.method private stopBridge()V
    .locals 2

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeBound:Z

    if-eqz v0, :cond_1

    .line 988
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notAService:Z

    if-nez v0, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 991
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .line 992
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeBound:Z

    .line 993
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->unregisterDeviceControllerEvents()V

    .line 995
    :cond_1
    return-void
.end method

.method private stopLooperThread()V
    .locals 2

    .prologue
    .line 810
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->stopThread()V

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->looperThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopNetwork()V
    .locals 3

    .prologue
    .line 928
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    if-eqz v1, :cond_3

    .line 930
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->stop()V

    .line 934
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->txThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 935
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->txThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rxThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 938
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rxThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 941
    :cond_1
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    if-eqz v1, :cond_2

    .line 942
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->dispose()V

    .line 943
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->dispose()V

    .line 953
    :cond_3
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    if-eqz v1, :cond_5

    .line 955
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v1, :cond_6

    .line 957
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->closeWifiNetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 979
    :cond_4
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    .line 980
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->dispose()V

    .line 982
    :cond_5
    return-void

    .line 946
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 959
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-eqz v1, :cond_7

    .line 961
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->closeBLENetwork(Landroid/content/Context;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto :goto_1

    .line 963
    :cond_7
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-eqz v1, :cond_4

    .line 965
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->closeMuxNetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto :goto_1
.end method

.method private stopReaderThreads()V
    .locals 4

    .prologue
    .line 826
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 829
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;

    .line 831
    .local v1, "thread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->stopThread()V

    goto :goto_0

    .line 833
    .end local v1    # "thread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    :cond_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;

    .line 837
    .restart local v1    # "thread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    :try_start_0
    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 839
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 844
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "thread":Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
    :cond_1
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 846
    :cond_2
    return-void
.end method

.method private stopVideoResender()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Resender:Lcom/parrot/arsdk/arstream2/ARStream2Resender;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Resender:Lcom/parrot/arsdk/arstream2/ARStream2Resender;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Resender;->stop()V

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Resender:Lcom/parrot/arsdk/arstream2/ARStream2Resender;

    .line 924
    :cond_0
    return-void
.end method

.method private declared-synchronized stopVideoStreaming()V
    .locals 2

    .prologue
    .line 763
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStreaming()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    :goto_0
    monitor-exit p0

    return-void

    .line 769
    :cond_0
    :try_start_1
    const-string v0, "debug_stream"

    const-string/jumbo v1, "stopVideoStreaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoThread()V

    .line 771
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStream2Receiver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterDeviceControllerEvents()V
    .locals 2

    .prologue
    .line 2314
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->bridgeDeviceControllerDidStop:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2316
    return-void
.end method


# virtual methods
.method protected cancelBaseControllerStart()V
    .locals 2

    .prologue
    .line 1348
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v0, :cond_1

    .line 1350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    .line 1351
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v0, :cond_2

    .line 1353
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryConnection:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ControllerConnectionAbort()V

    .line 1369
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1370
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1373
    :cond_1
    return-void

    .line 1358
    :cond_2
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    if-eqz v0, :cond_3

    .line 1360
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->cancelBLENetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto :goto_0

    .line 1362
    :cond_3
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-eqz v0, :cond_4

    .line 1363
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->cancelConnect()V

    goto :goto_0

    .line 1367
    :cond_4
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v1, "Unknow network media type."

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected declared-synchronized clearNotifications()V
    .locals 1

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARBundle;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized closeVideoResender()V
    .locals 1

    .prologue
    .line 849
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoResender()V

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResenderDestAddress:Ljava/lang/String;

    .line 851
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResenderDestStreamPort:I

    .line 852
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->beaverResendeDestControlPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    monitor-exit p0

    return-void

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectionProtocolEnded()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mConnectionProtocolEnded:Z

    return v0
.end method

.method public abstract controllerLoop()V
.end method

.method protected createNewControllerLooperThread()Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;
    .locals 1

    .prologue
    .line 1484
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$ControllerLooperThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    return-object v0
.end method

.method protected doStart()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2032
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mConnectionProtocolEnded:Z

    .line 2034
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 2037
    .local v1, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initDeviceState()V

    .line 2039
    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v2, :cond_0

    .line 2041
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startBaseController()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v1

    .line 2043
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-eq v1, v2, :cond_0

    .line 2045
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start the base controller."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    :cond_0
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v2, :cond_1

    .line 2057
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2058
    .local v0, "currentDate":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendInitialDate(Ljava/util/Date;)V

    .line 2059
    invoke-virtual {p0, v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendInitialTime(Ljava/util/Date;)V

    .line 2062
    .end local v0    # "currentDate":Ljava/util/Date;
    :cond_1
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v2, :cond_2

    .line 2064
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    const-string v3, "DeviceControllerAllSettingsDidStartNotification"

    invoke-virtual {p0, v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2065
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getInitialSettings()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2067
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get the initial settings."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 2072
    :cond_2
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v1, v2, :cond_3

    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v2, :cond_3

    .line 2074
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    const-string v3, "DeviceControllerAllStatesDidStartNotification"

    invoke-virtual {p0, v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2075
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getInitialStates()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2077
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get the initial states."

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 2082
    :cond_3
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v1, v2, :cond_4

    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v2, :cond_4

    .line 2084
    iput-boolean v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mConnectionProtocolEnded:Z

    .line 2085
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->registerCurrentProduct()V

    .line 2088
    :cond_4
    sget-object v2, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v1, v2, :cond_5

    iget-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-ne v2, v4, :cond_5

    .line 2090
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR_CANCELED:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 2093
    :cond_5
    return-object v1
.end method

.method protected doStop()V
    .locals 0

    .prologue
    .line 2098
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopBaseController()V

    .line 2099
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    invoke-virtual {v0, p2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->dump(Ljava/io/PrintWriter;)V

    .line 254
    return-void
.end method

.method public getARCommandsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionOlder:Ljava/lang/String;

    return-object v0
.end method

.method public getARCommandsVersionSkyController()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2540
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mApplicationContext:Landroid/content/Context;

    .line 216
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method protected getBaseControllerCancelled()Z
    .locals 1

    .prologue
    .line 1377
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    return v0
.end method

.method public getDecoder()Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;
    .locals 1

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    return-object v0
.end method

.method protected getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->intentCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "INTENT_EXTRA_IS_SUBDEVICE"

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->isSubDeviceController()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 347
    return-object v0
.end method

.method public getDeviceDiscoveryInfo()Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    return-object v0
.end method

.method public getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method protected getInitialSettings()Z
    .locals 5

    .prologue
    .line 1383
    const/4 v1, 0x1

    .line 1385
    .local v1, "successful":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllSettings:Z

    .line 1386
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v2

    sget-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendSettingsAllSettings(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1391
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllSettings:Z

    .line 1406
    return v1

    .line 1393
    :catch_0
    move-exception v0

    .line 1395
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1396
    const/4 v1, 0x0

    .line 1397
    goto :goto_0

    .line 1401
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getInitialStates()Z
    .locals 5

    .prologue
    .line 1412
    const/4 v1, 0x1

    .line 1414
    .local v1, "successful":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllStates:Z

    .line 1415
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v2

    sget-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCommonAllStates(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1420
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllStates:Z

    .line 1434
    return v1

    .line 1422
    :catch_0
    move-exception v0

    .line 1424
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1425
    const/4 v1, 0x0

    .line 1426
    goto :goto_0

    .line 1430
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getLoopInterval()D
    .locals 2

    .prologue
    .line 1150
    iget-wide v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->loopInterval:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getNapSoftVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getNapSoftVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    return-object v0
.end method

.method protected getNetManager()Lcom/parrot/arsdk/arnetwork/ARNetworkManager;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;
    .locals 2

    .prologue
    .line 1623
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1624
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    .line 1625
    .local v0, "stateCopy":Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1627
    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method abstract initDeviceState()V
.end method

.method protected initialize()V
    .locals 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->initialized:Z

    if-nez v0, :cond_0

    .line 284
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->initialize()V

    .line 286
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->initDeviceControllerIntents()V

    .line 288
    new-instance v0, Lcom/parrot/controller/utils/WifiUtils;

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/controller/utils/WifiUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->wifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->initialized:Z

    .line 292
    :cond_0
    return-void
.end method

.method protected isInitialized()Z
    .locals 1

    .prologue
    .line 2280
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->initialized:Z

    return v0
.end method

.method public declared-synchronized isStream2StartRequested()Z
    .locals 1

    .prologue
    .line 909
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-boolean v0, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2StartRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2StartRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStream2Started()Z
    .locals 1

    .prologue
    .line 900
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-boolean v0, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSubDeviceController()Z
    .locals 1

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public declared-synchronized onCommonARLibsVersionsStateControllerLibARCommandsVersionUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 2338
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionController:Ljava/lang/String;

    .line 2340
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->updateOlderARCommandsVersion()V

    .line 2342
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonARLibsVersionsStateControllerLibARCommandsVersionUpdate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2343
    monitor-exit p0

    return-void

    .line 2338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCommonARLibsVersionsStateDeviceLibARCommandsVersionUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 2358
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionDevice:Ljava/lang/String;

    .line 2360
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->updateOlderARCommandsVersion()V

    .line 2362
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonARLibsVersionsStateDeviceLibARCommandsVersionUpdate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2363
    monitor-exit p0

    return-void

    .line 2358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCommonARLibsVersionsStateSkyControllerLibARCommandsVersionUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 2348
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    .line 2350
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->updateOlderARCommandsVersion()V

    .line 2352
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonARLibsVersionsStateSkyControllerLibARCommandsVersionUpdate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2353
    monitor-exit p0

    return-void

    .line 2348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCommonCommonStateAllStatesChangedUpdate()V
    .locals 1

    .prologue
    .line 1500
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonCommonStateAllStatesChangedUpdate()V

    .line 1501
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllStates:Z

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1505
    :cond_0
    return-void
.end method

.method public declared-synchronized onCommonCommonStateWifiSignalChangedUpdate(S)V
    .locals 3
    .param p1, "rssi"    # S

    .prologue
    .line 2490
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->wifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    invoke-virtual {v2}, Lcom/parrot/controller/utils/WifiUtils;->getWifiRssi()I

    move-result v2

    aput v2, v0, v1

    .line 2491
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->remoteRssis:[I

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    aput p1, v0, v1

    .line 2492
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    .line 2493
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    .line 2508
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSignalChanged remote rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " local rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->wifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    invoke-virtual {v2}, Lcom/parrot/controller/utils/WifiUtils;->getWifiRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonCommonStateWifiSignalChangedUpdate(S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2510
    monitor-exit p0

    return-void

    .line 2490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCommonSettingsStateAllSettingsChangedUpdate()V
    .locals 1

    .prologue
    .line 1490
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onCommonSettingsStateAllSettingsChangedUpdate()V

    .line 1491
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllSettings:Z

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1495
    :cond_0
    return-void
.end method

.method public declared-synchronized onDebugSettingsInfoUpdate(BSLjava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "listFlags"    # B
    .param p2, "id"    # S
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;
    .param p5, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;
    .param p6, "range_min"    # Ljava/lang/String;
    .param p7, "range_max"    # Ljava/lang/String;
    .param p8, "range_step"    # Ljava/lang/String;
    .param p9, "value"    # Ljava/lang/String;

    .prologue
    .line 2387
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v7, "DebugDeviceControllerSettingsInfoNotification"

    invoke-virtual {v6, v7}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 2388
    .local v4, "listDictionary":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_1

    .line 2390
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2393
    .restart local v4    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x0

    .line 2394
    .local v1, "entryBundle":Landroid/os/Bundle;
    and-int/lit8 v6, p1, 0x4

    if-nez v6, :cond_4

    .line 2396
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "entryBundle":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2397
    .restart local v1    # "entryBundle":Landroid/os/Bundle;
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationIdKey"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 2398
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationLabelKey"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    const-string v7, "DebugDeviceControllerSettingsInfoNotificationTypeKey"

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;->getValue()I

    move-result v6

    :goto_0
    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2400
    if-nez p4, :cond_2

    .line 2402
    sget-object v6, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v7, "Bad value for argument `type` in Info command from the device."

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    :cond_2
    const-string v7, "DebugDeviceControllerSettingsInfoNotificationModeKey"

    if-eqz p5, :cond_7

    invoke-virtual {p5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;->getValue()I

    move-result v6

    :goto_1
    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2405
    if-nez p5, :cond_3

    .line 2407
    sget-object v6, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v7, "Bad value for argument `mode` in Info command from the device."

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    :cond_3
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationRangeMinKey"

    move-object/from16 v0, p6

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationRangeMaxKey"

    move-object/from16 v0, p7

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationRangeStepKey"

    move-object/from16 v0, p8

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    const-string v6, "DebugDeviceControllerSettingsInfoNotificationValueKey"

    move-object/from16 v0, p9

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2416
    :cond_4
    iget-object v6, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v7, "DebugDeviceControllerSettingsInfoNotification"

    invoke-virtual {v6, v7, v4}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2419
    and-int/lit8 v6, p1, 0x6

    if-eqz v6, :cond_5

    .line 2421
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2422
    .local v5, "updateDictionary":Landroid/os/Bundle;
    const-string v6, "DebugDeviceControllerSettingsInfoNotification"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2425
    new-instance v3, Landroid/content/Intent;

    const-string v6, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2426
    .local v3, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2427
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2430
    new-instance v2, Landroid/content/Intent;

    const-string v6, "DebugDeviceControllerSettingsInfoNotification"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2431
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2432
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2434
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intentDicChanged":Landroid/content/Intent;
    .end local v5    # "updateDictionary":Landroid/os/Bundle;
    :cond_5
    monitor-exit p0

    return-void

    .line 2399
    :cond_6
    :try_start_1
    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_TYPE_ENUM;->getValue()I

    move-result v6

    goto/16 :goto_0

    .line 2404
    :cond_7
    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DEBUG_SETTING_MODE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    goto/16 :goto_1

    .line 2387
    .end local v1    # "entryBundle":Landroid/os/Bundle;
    .end local v4    # "listDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized onDebugSettingsListUpdate(SLjava/lang/String;)V
    .locals 9
    .param p1, "id"    # S
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2448
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2449
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2450
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "DebugDeviceControllerSettingsListNotificationIdKey"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 2451
    const-string v5, "DebugDeviceControllerSettingsListNotificationValueKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "DebugDeviceControllerSettingsListNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2454
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 2456
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2458
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_0
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2459
    move-object v3, v2

    .line 2461
    const-string v5, "DebugDeviceControllerSettingsListNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2464
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "DebugDeviceControllerSettingsListNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2467
    const-string v5, "DebugDeviceControllerSettingsListNotificationIdKey"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 2470
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2471
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2472
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2475
    new-instance v0, Landroid/content/Intent;

    const-string v5, "DebugDeviceControllerSettingsListNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2476
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2477
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2478
    monitor-exit p0

    return-void

    .line 2448
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 2555
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stop()V

    .line 2557
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onDestroy()V

    .line 2558
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 2546
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTaskRemoved ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "user removed app from recents, stop service"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopSelf()V

    .line 2549
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onTaskRemoved(Landroid/content/Intent;)V

    .line 2550
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public abstract pause(Z)V
.end method

.method public pauseVideoStream2Receiver()V
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->stop()V

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->pauseVideoStream2Receiver()V

    goto :goto_0
.end method

.method protected registerARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V
    .locals 0
    .param p1, "decoder"    # Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->registerARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 268
    return-void
.end method

.method protected registerCurrentProduct()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 1571
    const-string v8, "DEVICECONTROLLER_SHARED_PREFERENCES_KEY"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1572
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 1573
    .local v0, "bundle":Lcom/parrot/controller/devicecontrollers/ARBundle;
    if-eqz v0, :cond_0

    .line 1575
    const-string v8, "DeviceControllerSettingsStateProductSerialHighChangedNotification"

    invoke-virtual {v0, v8}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "DeviceControllerSettingsStateProductSerialLowChangedNotification"

    .line 1576
    invoke-virtual {v0, v8}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1578
    const-string v8, "DeviceControllerSettingsStateProductSerialLowChangedNotification"

    invoke-virtual {v0, v8}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 1579
    .local v7, "settingsStateProductSerialLowChangedNotification":Landroid/os/Bundle;
    const-string v8, "DeviceControllerSettingsStateProductSerialHighChangedNotification"

    invoke-virtual {v0, v8}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1580
    .local v6, "settingsStateProductSerialHighChangedNotification":Landroid/os/Bundle;
    const-string v8, "DeviceControllerSettingsStateProductSerialLowChangedNotificationLowKey"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1581
    .local v3, "lowSerial":Ljava/lang/String;
    const-string v8, "DeviceControllerSettingsStateProductSerialHighChangedNotificationHighKey"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1582
    .local v2, "highSerial":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1584
    .local v5, "serial":Ljava/lang/String;
    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 1586
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1587
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v8}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v8

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1588
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1592
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "highSerial":Ljava/lang/String;
    .end local v3    # "lowSerial":Ljava/lang/String;
    .end local v5    # "serial":Ljava/lang/String;
    .end local v6    # "settingsStateProductSerialHighChangedNotification":Landroid/os/Bundle;
    .end local v7    # "settingsStateProductSerialLowChangedNotification":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public restartVideoStream2Receiver()V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->start()V

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->restartVideoStream2Receiver()V

    goto :goto_0
.end method

.method protected sendARLibsVersions()V
    .locals 4

    .prologue
    .line 1465
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionController:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendControllerLibARCommandsVersion(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)V

    .line 1466
    return-void
.end method

.method protected sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z
    .locals 8
    .param p1, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p2, "bufferId"    # I
    .param p3, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p4, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 1287
    const/4 v7, 0x1

    .line 1289
    .local v7, "retVal":Z
    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->allowCommands:Z

    if-eqz v1, :cond_5

    .line 1291
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 1293
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v1, :cond_1

    .line 1295
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->sendData(Lcom/parrot/arsdk/arsal/ARNativeData;ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v7

    .line 1333
    :cond_0
    :goto_0
    return v7

    .line 1299
    :cond_1
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    const-string v2, "deviceControllerBridge == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const/4 v7, 0x0

    goto :goto_0

    .line 1306
    :cond_2
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 1308
    .local v0, "sendInfo":Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;
    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isDumping:Z

    if-eqz v1, :cond_3

    .line 1310
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->alManager:Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;

    const/16 v2, 0x30

    invoke-virtual {v1, p1, v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->dumpData(Lcom/parrot/arsdk/arsal/ARNativeData;B)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 1314
    :cond_3
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netManager:Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, p1, v0, v2}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->sendData(ILcom/parrot/arsdk/arsal/ARNativeData;Ljava/lang/Object;Z)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v6

    .line 1316
    .local v6, "netError":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    if-eq v6, v1, :cond_4

    .line 1318
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netManager.sendData() failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const/4 v7, 0x0

    goto :goto_0

    .line 1321
    :cond_4
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1323
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will send command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1330
    .end local v0    # "sendInfo":Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;
    .end local v6    # "netError":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected sendInitialDate(Ljava/util/Date;)V
    .locals 5
    .param p1, "currentDate"    # Ljava/util/Date;

    .prologue
    .line 1471
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1472
    .local v0, "formattedDate":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCommonCurrentDate(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 1473
    return-void
.end method

.method protected sendInitialTime(Ljava/util/Date;)V
    .locals 5
    .param p1, "currentDate"    # Ljava/util/Date;

    .prologue
    .line 1478
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'T\'HHmmssZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1479
    .local v0, "formattedTime":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCommonCurrentTime(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 1480
    return-void
.end method

.method protected setConfigurations(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;DLjava/lang/Class;)V
    .locals 3
    .param p1, "netConfig"    # Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;
    .param p2, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .param p3, "interval"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            "D",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parrot/controller/devicecontrollers/DeviceController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "dcBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    const/4 v2, 0x0

    .line 297
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    .line 299
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->disconnectSent:Ljava/util/concurrent/Semaphore;

    .line 300
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    .line 301
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->cmdGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    .line 302
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllSettings:Z

    .line 303
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->isWaitingAllStates:Z

    .line 305
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    .line 306
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerStarted:Z

    .line 307
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    .line 308
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->allowCommands:Z

    .line 310
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    .line 311
    iput-object p2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 312
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p3

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->loopInterval:J

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->readerThreads:Ljava/util/List;

    .line 314
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->mediaOpened:Z

    .line 317
    iput v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->discoveryPort:I

    .line 318
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->reset(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;)V

    .line 319
    iput-object p5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    .line 321
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionOlder:Ljava/lang/String;

    .line 322
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionDevice:Ljava/lang/String;

    .line 323
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionController:Ljava/lang/String;

    .line 324
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionSkyController:Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->clearNotifications()V

    .line 329
    return-void
.end method

.method public declared-synchronized setVideoStream2Listener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    .prologue
    .line 1158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1160
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1164
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->setVideoStream2Listener(Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract start()V
.end method

.method protected startBaseController()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 363
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 365
    .local v0, "error":Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;
    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerStarted:Z

    if-nez v1, :cond_2

    .line 367
    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v1, :cond_4

    .line 372
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startNetwork()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v0

    .line 381
    :cond_0
    :goto_0
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 384
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startReadThreads()V

    .line 387
    :cond_1
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v1, :cond_2

    .line 390
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startLooperThread()V

    .line 392
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->registerARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 396
    :cond_2
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-nez v1, :cond_5

    .line 399
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerStarted:Z

    .line 400
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->allowCommands:Z

    .line 408
    :goto_1
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_OK:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    if-ne v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerCancelled:Z

    if-eqz v1, :cond_3

    .line 410
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;->DEVICE_CONTROLLER_ERROR_CANCELED:Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    .line 413
    :cond_3
    return-object v0

    .line 377
    :cond_4
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startBridge()Lcom/parrot/controller/devicecontrollers/DeviceController$DEVICE_CONTROLLER_ERROR_ENUM;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_5
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopBaseController()V

    goto :goto_1
.end method

.method public final startThread()V
    .locals 3

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2111
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    if-ne v0, v1, :cond_0

    .line 2113
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    .line 2115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    .line 2117
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    const-string v1, "DeviceControllerWillStartNotification"

    invoke-virtual {p0, v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/controller/devicecontrollers/DeviceController$5;

    invoke-direct {v1, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$5;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    const-string v2, "deviceControllerConnection"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2189
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2192
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2193
    return-void
.end method

.method public declared-synchronized startVideoStream2Receiver()V
    .locals 3

    .prologue
    .line 1174
    monitor-enter p0

    :try_start_0
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startVideoStream2Receiver with manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arstream2Receiver is currently: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v0, :cond_3

    .line 1178
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    if-nez v0, :cond_1

    .line 1180
    const-string v0, "debug_stream"

    const-string/jumbo v1, "startVideoStream2Receiver, arstream2Manager is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1183
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    if-nez v0, :cond_2

    .line 1185
    const-string v0, "debug_stream"

    const-string/jumbo v1, "startVideoStream2Receiver, video stream listener is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1188
    :cond_2
    :try_start_2
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    new-instance v2, Lcom/parrot/controller/devicecontrollers/DeviceController$4;

    invoke-direct {v2, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$4;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;-><init>(Lcom/parrot/arsdk/arstream2/ARStream2Manager;Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    .line 1215
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arstream2Receiver is now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->start()V

    goto :goto_0

    .line 1220
    :cond_3
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoStream2Receiver()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized startVideoStreaming()V
    .locals 2

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Started:Z

    if-nez v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoStreaming()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :goto_0
    monitor-exit p0

    return-void

    .line 616
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    if-eqz v0, :cond_1

    .line 617
    const-string v0, "debug_stream"

    const-string/jumbo v1, "startVideoStreaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2StartRequested:Z

    .line 619
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoThread()V

    .line 620
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoStream2Receiver()V

    .line 621
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-interface {v0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;->onVideoAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 623
    :cond_1
    :try_start_2
    const-string v0, "debug_stream"

    const-string v1, "arstream2StartRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2StartRequested:Z

    goto :goto_0

    .line 628
    :cond_2
    const-string v0, "debug_stream"

    const-string/jumbo v1, "video stream already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized startVideoThread()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 634
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 642
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->netConfig:Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    if-nez v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 648
    .local v6, "canonicalName":Ljava/lang/String;
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-eqz v0, :cond_2

    .line 650
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    .line 651
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->getMux()Lcom/parrot/mux/Mux;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 653
    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getArStream2MaxPacketSize()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 654
    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v3

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;-><init>(Lcom/parrot/mux/Mux;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    .line 670
    :goto_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->start()V

    .line 671
    const-string v0, "debug_stream"

    const-string/jumbo v1, "stream 2 started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 634
    .end local v6    # "canonicalName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 658
    .restart local v6    # "canonicalName":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 659
    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 660
    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getArStream2ServerStreamPort()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 661
    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getArStream2ServerControlPort()I

    move-result v3

    const v4, 0xd6dc

    const v5, 0xd6dd

    iget-object v7, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 665
    invoke-virtual {v7}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getArStream2MaxPacketSize()I

    move-result v7

    iget-object v8, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceDiscoveryInfo:Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .line 666
    invoke-virtual {v8}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->getQosMode()I

    move-result v8

    if-ne v8, v9, :cond_3

    sget-object v8, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_CS4:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    :goto_2
    iget-object v9, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 667
    invoke-virtual {v9}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v9

    invoke-static {v9}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    goto :goto_1

    .line 666
    :cond_3
    sget-object v8, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->ARSAL_SOCKET_CLASS_SELECTOR_UNSPECIFIED:Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public abstract stop()V
.end method

.method protected stopBaseController()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 733
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->baseControllerStarted:Z

    .line 735
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->decoder:Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->unregisterARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 742
    :cond_0
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopLooperThread()V

    .line 744
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->allowCommands:Z

    .line 747
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopReaderThreads()V

    .line 750
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoThread()V

    .line 753
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStream2Receiver()V

    .line 756
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopNetwork()V

    .line 758
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopBridge()V

    .line 759
    return-void
.end method

.method public stopInstance()V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->onDestroy()V

    .line 232
    return-void
.end method

.method public final stopThread()V
    .locals 5

    .prologue
    .line 2200
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2201
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    sget-object v4, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    if-ne v3, v4, :cond_5

    .line 2204
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    iput-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    .line 2207
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/parrot/controller/devicecontrollers/DeviceController$6;

    invoke-direct {v4, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$6;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2228
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2230
    sget-boolean v3, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v3, :cond_4

    .line 2232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2233
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 2235
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 2237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - remote rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->remoteRssis:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2233
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2240
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->indexOfRssiArray:I

    if-ge v1, v3, :cond_3

    .line 2242
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    aget v3, v3, v1

    if-eqz v3, :cond_2

    .line 2244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->rssis:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - remote rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->remoteRssis:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2247
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2248
    .local v2, "rssiToLog":Ljava/lang/String;
    invoke-static {v2}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    .line 2270
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "rssiToLog":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2271
    return-void

    .line 2251
    :cond_5
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    sget-object v4, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    if-nez v3, :cond_4

    .line 2254
    sget-object v3, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    iput-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    .line 2256
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->startCancelled:Z

    .line 2259
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/parrot/controller/devicecontrollers/DeviceController$7;

    invoke-direct {v4, p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$7;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2267
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method public declared-synchronized stopVideoStream2Receiver()V
    .locals 1

    .prologue
    .line 1263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1265
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARStream2Receiver;->dispose()V

    .line 1268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Receiver:Lcom/parrot/arsdk/arstream2/ARStream2Receiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1273
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStream2Receiver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stopVideoStreamingNormally()V
    .locals 1

    .prologue
    .line 777
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStreamingNormally()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 783
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStreaming()V

    .line 784
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-interface {v0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;->onVideoStopped()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stopVideoStreamingWithError()V
    .locals 1

    .prologue
    .line 793
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStreamingWithError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 799
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoStreaming()V

    .line 800
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-interface {v0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;->onVideoError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stopVideoThread()V
    .locals 4

    .prologue
    .line 857
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridgeClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 896
    :goto_0
    monitor-exit p0

    return-void

    .line 865
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    if-eqz v1, :cond_1

    .line 867
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->stopThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 870
    :try_start_2
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 876
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoThread:Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;

    .line 880
    :cond_1
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 882
    :try_start_4
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    if-eqz v1, :cond_2

    .line 884
    sget-object v1, Lcom/parrot/controller/devicecontrollers/DeviceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceController "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stop arStream2Manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopVideoResender()V

    .line 888
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->stop()Z

    .line 889
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->dispose()Z

    .line 890
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Manager:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    .line 891
    const-string v1, "debug_video"

    const-string/jumbo v2, "stream 2 stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arstream2Started:Z

    .line 894
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 857
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 872
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2296
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method protected unregisterARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V
    .locals 0
    .param p1, "decoder"    # Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceControllerAndLibARCommands;->unregisterARCommandsListener(Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;)V

    .line 274
    return-void
.end method

.method protected updateOlderARCommandsVersion()V
    .locals 1

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionDevice:Ljava/lang/String;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController;->arCommandsVersionOlder:Ljava/lang/String;

    .line 2526
    return-void
.end method

.method public userRequesstSetDebugSettings(SLjava/lang/String;)V
    .locals 6
    .param p1, "id"    # S
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DebugDeviceController_SendSetSetting(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;SLjava/lang/String;)Z

    .line 1566
    return-void
.end method

.method public userRequestCalibration(B)V
    .locals 3
    .param p1, "calibrate"    # B

    .prologue
    .line 1534
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCalibrationMagnetoCalibration(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 1535
    return-void
.end method

.method public userRequestDebugSettingsInfo()V
    .locals 3

    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DebugDeviceController_SendGetAllSettings(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 1561
    return-void
.end method

.method public userRequestMavlinkPause()V
    .locals 3

    .prologue
    .line 1550
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendMavlinkPause(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 1551
    return-void
.end method

.method public userRequestMavlinkPlay(Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;)V
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;

    .prologue
    .line 1545
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendMavlinkStart(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_MAVLINK_START_TYPE_ENUM;)Z

    .line 1546
    return-void
.end method

.method public userRequestMavlinkStop()V
    .locals 3

    .prologue
    .line 1555
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendMavlinkStop(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 1556
    return-void
.end method

.method public userRequestPitotCalibration(B)V
    .locals 3
    .param p1, "calibrate"    # B

    .prologue
    .line 1539
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCalibrationPitotCalibration(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 1540
    return-void
.end method

.method public userRequestReboot()V
    .locals 3

    .prologue
    .line 1519
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendCommonReboot(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 1520
    return-void
.end method

.method public userRequestSendAccessoryConfig(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;)Z
    .locals 3
    .param p1, "accessory"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;

    .prologue
    .line 1524
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendAccessoryConfig(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORY_CONFIG_ACCESSORY_ENUM;)Z

    move-result v0

    return v0
.end method

.method public userRequestSendChargerSetMaxChargeRate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGER_SETMAXCHARGERATE_RATE_ENUM;)Z
    .locals 3
    .param p1, "rate"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGER_SETMAXCHARGERATE_RATE_ENUM;

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendChargerSetMaxChargeRate(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGER_SETMAXCHARGERATE_RATE_ENUM;)Z

    move-result v0

    return v0
.end method

.method public userRequestedSettingsProductName(Ljava/lang/String;)V
    .locals 3
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 1514
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendSettingsProductName(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 1515
    return-void
.end method

.method public userRequestedSettingsReset()V
    .locals 3

    .prologue
    .line 1509
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/DeviceController;->DeviceController_SendSettingsReset(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 1510
    return-void
.end method
