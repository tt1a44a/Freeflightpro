.class public Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
.super Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;
.source "ARDrone3DeviceController.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;,
        Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;,
        Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;,
        Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;,
        Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;,
        Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;,
        Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
    }
.end annotation


# static fields
.field private static ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

.field public static ARDrone3DeviceControllerEmergencyState:Ljava/lang/String;

.field public static ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

.field public static ARDrone3DeviceControllerFlyingState:Ljava/lang/String;

.field public static ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

.field public static final FOLLOW_ME_MODE_NUMBER:I

.field private static LOOP_INTERVAL:D

.field private static TAG:Ljava/lang/String;


# instance fields
.field private cameraCommandCounter:I

.field private droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

.field private final droneStateLock:Ljava/util/concurrent/locks/Lock;

.field private final followMeModeInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

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

.field private pcmdCommandCounter:I

.field private pcmdCommandSeqNum:I

.field private shouldSendLynxData:Z

.field private shouldSendUserBaroData:Z

.field private shouldSendUserGPSData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "ARDrone3DeviceControllerFlyingStateChangedNotification"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    .line 50
    const-string v0, "ARDrone3DeviceControllerFlyingState"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingState:Ljava/lang/String;

    .line 51
    const-string v0, "ARDrone3DeviceControllerEmergencyStateChangedNotification"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    .line 52
    const-string v0, "ARDrone3DeviceControllerEmergencyState"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyState:Ljava/lang/String;

    .line 54
    const-class v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    .line 55
    const-wide v0, 0x3f9999999999999aL    # 0.025

    sput-wide v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->LOOP_INTERVAL:D

    .line 56
    const/16 v0, 0x64

    sput v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

    .line 58
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FOLLOW_ME_MODE_NUMBER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;-><init>()V

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    sget v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FOLLOW_ME_MODE_NUMBER:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->followMeModeInfo:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private declared-synchronized clearFollowMeModeInfo(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;SS)V
    .locals 5
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;
    .param p2, "clearedRequirements"    # S
    .param p3, "clearedImprovements"    # S

    .prologue
    .line 906
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->getValue()I

    move-result v3

    .line 907
    .local v3, "modeValue":I
    :goto_0
    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->followMeModeInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 908
    .local v2, "modeInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 910
    const-string v4, "FollowMeDeviceControllerModeInfoNotificationMissingRequirementsKey"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v4

    or-int/2addr v4, p2

    int-to-short v1, v4

    .line 912
    .local v1, "acquiredRequirements":S
    const-string v4, "FollowMeDeviceControllerModeInfoNotificationImprovementsKey"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v4

    or-int/2addr v4, p3

    int-to-short v0, v4

    .line 914
    .local v0, "acquiredImprovements":S
    invoke-virtual {p0, p1, v1, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->onFollowMeModeInfoUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;SS)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    .end local v0    # "acquiredImprovements":S
    .end local v1    # "acquiredRequirements":S
    :cond_0
    monitor-exit p0

    return-void

    .line 906
    .end local v2    # "modeInfo":Landroid/os/Bundle;
    .end local v3    # "modeValue":I
    :cond_1
    :try_start_1
    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->getValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "discoveryDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-direct {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;-><init>()V

    .line 74
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notAService:Z

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->mApplicationContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->onCreate()V

    .line 77
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    invoke-virtual {v0, v1, v3, v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->onStartCommand(Landroid/content/Intent;II)I

    .line 80
    return-object v0
.end method

.method public static createBridged(Landroid/content/Context;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "bridgeController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "discoveryDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-direct {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;-><init>()V

    .line 86
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notAService:Z

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->mApplicationContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->onCreate()V

    .line 89
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceController.bridge"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iput-object p1, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 93
    invoke-virtual {v0, v1, v4, v4}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->onStartCommand(Landroid/content/Intent;II)I

    .line 94
    return-object v0
.end method

.method public static hasProFeature(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;J)Z
    .locals 7
    .param p0, "feature"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;
    .param p1, "featuresSet"    # J

    .prologue
    const/4 v0, 0x0

    .line 1450
    if-nez p0, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;->getMask()J

    move-result-wide v2

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initARDrone3DeviceControllerIntents()V
    .locals 4

    .prologue
    .line 175
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->intentCache:Ljava/util/HashMap;

    .line 176
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->intentCache:Ljava/util/HashMap;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->intentCache:Ljava/util/HashMap;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method private postEmergencyStateNotification()V
    .locals 3

    .prologue
    .line 1105
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1107
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getARDrone3DeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1108
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1110
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerEmergencyState:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1111
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1118
    :goto_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1119
    return-void

    .line 1115
    :cond_0
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v2, "failed during getIntent"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postFlyingStateNotification()V
    .locals 3

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1125
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getARDrone3DeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1126
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1128
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceControllerFlyingState:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1129
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1136
    :goto_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1137
    return-void

    .line 1133
    :cond_0
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v2, "failed during getIntent"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public batteryLevel()I
    .locals 2

    .prologue
    .line 340
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 341
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2200(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)I

    move-result v0

    .line 342
    .local v0, "retval":I
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 343
    return v0
.end method

.method public changeElectricFrequency(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_ELECTRICFREQUENCY_FREQUENCY_ENUM;)V
    .locals 3
    .param p1, "electricFrequency"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_ELECTRICFREQUENCY_FREQUENCY_ENUM;

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendAntiflickeringElectricFrequency(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_ELECTRICFREQUENCY_FREQUENCY_ENUM;)Z

    .line 698
    return-void
.end method

.method public cleanNetworkStateWifiAuthChannelListChangedNotificationDictionary()V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 975
    :cond_0
    return-void
.end method

.method public cleanNetworkStateWifiScanListChangedNotificationDictionary()V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method public controllerLoop()V
    .locals 24

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    move-object/from16 v18, v0

    .line 195
    .local v18, "currentState":Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 197
    sget-object v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;->$SwitchMap$com$parrot$controller$devicecontrollers$DEVICE_CONTROLLER_STATE_ENUM:[I

    invoke-virtual/range {v18 .. v18}, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    move-result-object v23

    .line 204
    .local v23, "localState":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    move/from16 v19, v0

    .line 205
    .local v19, "localCameraCommandCounter":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    .line 206
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->shouldSendUserGPSData:Z

    move/from16 v22, v0

    .line 207
    .local v22, "localShouldSendUserGPSData":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->shouldSendUserGPSData:Z

    .line 208
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->shouldSendUserBaroData:Z

    move/from16 v21, v0

    .line 209
    .local v21, "localShouldSendUserBaroData":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->shouldSendUserBaroData:Z

    .line 210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->shouldSendLynxData:Z

    move/from16 v20, v0

    .line 211
    .local v20, "localShouldSendLynxData":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->shouldSendLynxData:Z

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dNackId()I

    move-result v3

    sget-object v4, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v5, 0x0

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    int-to-byte v6, v2

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$200(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F

    move-result v2

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    int-to-byte v7, v2

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F

    move-result v2

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v2, v8

    float-to-int v2, v2

    int-to-byte v8, v2

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$400(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F

    move-result v2

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v2, v9

    float-to-int v2, v2

    int-to-byte v9, v2

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$500(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F

    move-result v2

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    int-to-byte v10, v2

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getTimestampAndSeqNum()I

    move-result v11

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingPCMD(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BBBBBI)Z

    .line 216
    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandCounter:I

    .line 217
    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandCounter:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 219
    sget-object v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v3, "Did send 100 pcmd commands"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandCounter:I

    .line 222
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    .line 223
    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    const/16 v3, 0x100

    if-lt v2, v3, :cond_2

    .line 225
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    .line 228
    :cond_2
    if-lez v19, :cond_3

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dNackId()I

    move-result v3

    sget-object v4, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v5, 0x0

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->access$700(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;)F

    move-result v2

    float-to-int v2, v2

    int-to-byte v6, v2

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->access$800(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;)F

    move-result v2

    float-to-int v2, v2

    int-to-byte v7, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendCameraOrientation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BB)Z

    .line 233
    :cond_3
    if-eqz v22, :cond_4

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dNackId()I

    move-result v3

    sget-object v4, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v5, 0x0

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v2

    iget-wide v6, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->latitude:D

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v2

    iget-wide v8, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->longitude:D

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v2

    iget v10, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->altitude:F

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v2

    iget v11, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->horizontalAccuracy:F

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v2

    iget v12, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->verticalAccuracy:F

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v2

    iget v13, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->northSpeed:F

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v2

    iget v14, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->eastSpeed:F

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v2

    iget v15, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->verticalSpeed:F

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v2

    iget-wide v0, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->timestamp:D

    move-wide/from16 v16, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v17}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ControllerInfoDeviceController_SendGps(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;DDFFFFFFD)Z

    .line 238
    :cond_4
    if-eqz v21, :cond_5

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dNackId()I

    move-result v4

    sget-object v5, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v6, 0x0

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;->access$1100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;)F

    move-result v7

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;->access$1200(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;)D

    move-result-wide v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ControllerInfoDeviceController_SendBarometer(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;FD)Z

    .line 243
    :cond_5
    if-eqz v20, :cond_0

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dNackId()I

    move-result v4

    sget-object v5, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v6, 0x0

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1400(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)F

    move-result v7

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1500(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)F

    move-result v8

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)F

    move-result v9

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1700(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)B

    move-result v10

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1800(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)B

    move-result v11

    invoke-static/range {v23 .. v23}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)J

    move-result-wide v12

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v13}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendTargetImageDetection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;FFFBBJ)Z

    goto/16 :goto_0

    .line 214
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public emergencyState()Z
    .locals 2

    .prologue
    .line 331
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 332
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z

    move-result v0

    .line 333
    .local v0, "retval":Z
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 334
    return v0
.end method

.method public enableThermalCam(BZ)V
    .locals 4
    .param p1, "camId"    # B
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1370
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARDrone3DeviceController.enableThermalCam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    if-eqz p2, :cond_0

    .line 1372
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ThermalCamDeviceController_SendActivate(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 1378
    :goto_0
    return-void

    .line 1375
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    .line 1374
    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ThermalCamDeviceController_SendDeactivate(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    goto :goto_0
.end method

.method public enableVideoStreaming(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1364
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARDrone3DeviceController.enableVideoStreaming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaStreamingVideoEnable(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 1366
    return-void

    .line 1365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flyingState()Z
    .locals 2

    .prologue
    .line 322
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 323
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z

    move-result v0

    .line 324
    .local v0, "retval":Z
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 325
    return v0
.end method

.method protected getARDrone3DeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->intentCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getProFeaturesSet()J
    .locals 6

    .prologue
    .line 1430
    const-wide/16 v2, 0x0

    .line 1431
    .local v2, "features":J
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v4, "ARDrone3DeviceControllerPROStateFeaturesNotification"

    invoke-virtual {v1, v4}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1433
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v4, "ARDrone3DeviceControllerPROStateFeaturesNotification"

    invoke-virtual {v1, v4}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1434
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "ARDrone3DeviceControllerPROStateFeaturesNotificationFeaturesKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1436
    const-string v1, "ARDrone3DeviceControllerPROStateFeaturesNotificationFeaturesKey"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1439
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-wide v2
.end method

.method getTimestampAndSeqNum()I
    .locals 8

    .prologue
    .line 1146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1147
    .local v0, "current":J
    const-wide/32 v6, 0x1000000

    rem-long v2, v0, v6

    .line 1148
    .local v2, "iCurrent":J
    iget v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    shl-int/lit8 v5, v5, 0x18

    long-to-int v6, v2

    add-int v4, v5, v6

    .line 1149
    .local v4, "timestampAndSeqNum":I
    return v4
.end method

.method public gpsSettingsSendControllerGPS(DDDDD)V
    .locals 15
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D
    .param p7, "horizontalAccuracy"    # D
    .param p9, "verticalAccuracy"    # D

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v0 .. v13}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendGPSSettingsSendControllerGPS(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;DDDDD)Z

    .line 1388
    return-void
.end method

.method public gpsSettingsSendHomeType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;)V
    .locals 3
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendGPSSettingsHomeType(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;)Z

    .line 1393
    return-void
.end method

.method public gpsSettingsSendReturnHomeDelay(S)V
    .locals 3
    .param p1, "delay"    # S

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendGPSSettingsReturnHomeDelay(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;S)Z

    .line 1398
    return-void
.end method

.method public gpsSettingsSetHome(DDD)V
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D

    .prologue
    .line 1382
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v0 .. v9}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendGPSSettingsSetHome(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;DDD)Z

    .line 1383
    return-void
.end method

.method public hasProFeature(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;)Z
    .locals 3
    .param p1, "feature"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    .prologue
    .line 1420
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 1424
    :goto_0
    return v2

    .line 1422
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getProFeaturesSet()J

    move-result-wide v0

    .line 1424
    .local v0, "features":J
    invoke-static {p1, v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->hasProFeature(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;J)Z

    move-result v2

    goto :goto_0
.end method

.method initDeviceState()V
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1155
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .line 1156
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1157
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    .line 158
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandCounter:I

    .line 159
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->pcmdCommandSeqNum:I

    .line 160
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->initARDrone3DeviceControllerIntents()V

    .line 161
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;->initialize()V

    .line 163
    :cond_0
    return-void
.end method

.method public isVideoStreamingEnabled()Z
    .locals 3

    .prologue
    .line 1351
    const/4 v1, 0x1

    .line 1352
    .local v1, "retval":Z
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 1353
    .local v0, "dict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v2, "ARDrone3DeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1355
    const-string v2, "ARDrone3DeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1358
    :cond_0
    return v1
.end method

.method public networkDidCancelFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 314
    :cond_0
    return-void
.end method

.method public networkDidReceiveAck(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 298
    :cond_0
    return-void
.end method

.method public networkDidSendFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 289
    return-void
.end method

.method public networkTimeoutOccurred(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 304
    return-void
.end method

.method public declared-synchronized onARDrone3MediaStreamingStateVideoEnableChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;)V
    .locals 3
    .param p1, "enabled"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;

    .prologue
    .line 1037
    monitor-enter p0

    :try_start_0
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARDrone3DeviceController.onARDrone3MediaStreamingStateVideoEnableChangedUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;->onARDrone3MediaStreamingStateVideoEnableChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;)V

    .line 1039
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 1050
    :goto_0
    monitor-exit p0

    return-void

    .line 1041
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->startVideoStreaming()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1037
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1044
    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stopVideoStreamingNormally()V

    goto :goto_0

    .line 1047
    :pswitch_2
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stopVideoStreamingWithError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1039
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized onARDrone3NetworkStateWifiAuthChannelListChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;BB)V
    .locals 9
    .param p1, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .param p2, "channel"    # B
    .param p3, "in_or_out"    # B

    .prologue
    .line 932
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 933
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 934
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationBandKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    :goto_0
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    if-nez p1, :cond_0

    .line 937
    sget-object v5, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v6, "Bad value for argument `band` in WifiAuthChannelListChanged command from the device."

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_0
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationChannelKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 940
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationInOrOutKey"

    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 942
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 943
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 944
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 949
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :goto_1
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 950
    move-object v3, v2

    .line 952
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 955
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 958
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 959
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 960
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 964
    new-instance v0, Landroid/content/Intent;

    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 966
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    monitor-exit p0

    return-void

    .line 934
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    goto :goto_0

    .line 947
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    goto :goto_1

    .line 932
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized onARDrone3NetworkStateWifiScanListChangedUpdate(Ljava/lang/String;SLcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;B)V
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "rssi"    # S
    .param p3, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;
    .param p4, "channel"    # B

    .prologue
    .line 988
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 989
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 990
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationSsidKey"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationRssiKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 992
    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationBandKey"

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    :goto_0
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 993
    if-nez p3, :cond_0

    .line 995
    sget-object v5, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string v6, "Bad value for argument `band` in WifiScanListChanged command from the device."

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_0
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationChannelKey"

    invoke-virtual {v3, v5, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 999
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1000
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 1001
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1006
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :goto_1
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1007
    move-object v3, v2

    .line 1009
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1012
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1015
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1017
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1020
    new-instance v0, Landroid/content/Intent;

    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1022
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    monitor-exit p0

    return-void

    .line 992
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    goto :goto_0

    .line 1004
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    goto :goto_1

    .line 988
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized onFollowMeModeInfoUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;SS)V
    .locals 9
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;
    .param p2, "requirements_acquired"    # S
    .param p3, "improvements_acquired"    # S

    .prologue
    .line 1074
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->getValue()I

    move-result v4

    .line 1077
    .local v4, "modeValue":I
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1078
    .local v3, "modeInfo":Landroid/os/Bundle;
    const-string v8, "FollowMeDeviceControllerModeInfoNotificationModeKey"

    invoke-virtual {v3, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    const-string v8, "FollowMeDeviceControllerModeInfoNotificationMissingRequirementsKey"

    invoke-virtual {v3, v8, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 1080
    const-string v8, "FollowMeDeviceControllerModeInfoNotificationImprovementsKey"

    invoke-virtual {v3, v8, p3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 1081
    iget-object v8, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->followMeModeInfo:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1084
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1085
    .local v6, "modesInfoNotification":Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->followMeModeInfo:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 1086
    iget-object v8, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->followMeModeInfo:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1087
    .local v2, "keyMode":I
    iget-object v8, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->followMeModeInfo:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 1088
    .local v7, "objInfo":Landroid/os/Bundle;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1085
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1074
    .end local v0    # "i":I
    .end local v2    # "keyMode":I
    .end local v3    # "modeInfo":Landroid/os/Bundle;
    .end local v4    # "modeValue":I
    .end local v6    # "modesInfoNotification":Landroid/os/Bundle;
    .end local v7    # "objInfo":Landroid/os/Bundle;
    :cond_0
    sget-object v8, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    invoke-virtual {v8}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;->getValue()I

    move-result v4

    goto :goto_0

    .line 1092
    .restart local v0    # "i":I
    .restart local v3    # "modeInfo":Landroid/os/Bundle;
    .restart local v4    # "modeValue":I
    .restart local v6    # "modesInfoNotification":Landroid/os/Bundle;
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1093
    .local v5, "modesInfoExtras":Landroid/os/Bundle;
    const-string v8, "FollowMeDeviceControllerModeInfoNotification"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1094
    new-instance v1, Landroid/content/Intent;

    const-string v8, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1096
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    monitor-exit p0

    return-void

    .line 1074
    .end local v0    # "i":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "modeInfo":Landroid/os/Bundle;
    .end local v4    # "modeValue":I
    .end local v5    # "modesInfoExtras":Landroid/os/Bundle;
    .end local v6    # "modesInfoNotification":Landroid/os/Bundle;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 102
    sget-object v5, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "recreated by the system, don\'t need! stop it"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stopSelf()V

    .line 150
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    return v5

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->initialize()V

    .line 112
    :cond_1
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 114
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    sget-object v6, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    if-ne v5, v6, :cond_3

    .line 117
    const-string v5, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 118
    .local v3, "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    const-string v5, "com.parrot.freeflight3.DeviceController.extra.fastreconnection"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 119
    .local v4, "fastReconnection":Z
    const-string v5, "com.parrot.freeflight3.DeviceController.extra.deviceController.bridge"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "deviceControllerBridgeClassName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 121
    .local v1, "deviceControllerBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    if-eqz v2, :cond_2

    .line 125
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 127
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    move-object v1, v0

    .line 138
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    invoke-virtual {p0, v3, v4, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->setConfigurations(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;ZLjava/lang/Class;)V

    .line 140
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->start()V

    .line 146
    .end local v1    # "deviceControllerBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    .end local v2    # "deviceControllerBridgeClassName":Ljava/lang/String;
    .end local v3    # "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v4    # "fastReconnection":Z
    :goto_2
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 144
    :cond_3
    sget-object v5, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onStartCommand not effective because device controller is not stopped"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 132
    .restart local v1    # "deviceControllerBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    .restart local v2    # "deviceControllerBridgeClassName":Ljava/lang/String;
    .restart local v3    # "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .restart local v4    # "fastReconnection":Z
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public declared-synchronized onThermalCamCameraStateUpdate(BLcom/parrot/arsdk/arcommands/ARCOMMANDS_THERMAL_CAM_STATE_ENUM;B)V
    .locals 3
    .param p1, "cam_id"    # B
    .param p2, "state"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_THERMAL_CAM_STATE_ENUM;
    .param p3, "list_flags"    # B

    .prologue
    .line 1061
    monitor-enter p0

    :try_start_0
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARDrone3DeviceController.onThermalCamCameraStateUpdate cam"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;->onThermalCamCameraStateUpdate(BLcom/parrot/arsdk/arcommands/ARCOMMANDS_THERMAL_CAM_STATE_ENUM;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    monitor-exit p0

    return-void

    .line 1061
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pause(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 283
    return-void
.end method

.method public setConfigurations(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;ZLjava/lang/Class;)V
    .locals 7
    .param p1, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .param p2, "fastReconnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            "Z",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parrot/controller/devicecontrollers/DeviceController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p3, "dcBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    new-instance v2, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;

    invoke-direct {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;-><init>()V

    .line 169
    .local v2, "netConfig":Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;
    iput-boolean p2, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->fastReconnection:Z

    .line 170
    sget-wide v4, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->LOOP_INTERVAL:D

    move-object v1, p0

    move-object v3, p1

    move-object v6, p3

    invoke-super/range {v1 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceControllerAndLibARCommands;->setConfigurations(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;DLjava/lang/Class;)V

    .line 171
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->startThread()V

    .line 266
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->stopThread()V

    .line 275
    return-void
.end method

.method public supportsVideoStreamingControl()Z
    .locals 3

    .prologue
    .line 1338
    const/4 v1, 0x0

    .line 1339
    .local v1, "retval":Z
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 1340
    .local v0, "dict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v2, "ARDrone3DeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1342
    const/4 v1, 0x1

    .line 1345
    :cond_0
    return v1
.end method

.method public userChangedCameraPan(F)V
    .locals 1
    .param p1, "pan"    # F

    .prologue
    .line 391
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 392
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->access$802(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;F)F

    .line 393
    sget v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    .line 394
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 395
    return-void
.end method

.method public userChangedCameraTilt(F)V
    .locals 1
    .param p1, "tilt"    # F

    .prologue
    .line 383
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 384
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->access$702(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;F)F

    .line 385
    sget v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->cameraCommandCounter:I

    .line 386
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 387
    return-void
.end method

.method public userChangedLynxData(FFFBBJ)V
    .locals 2
    .param p1, "azimuth"    # F
    .param p2, "elevation"    # F
    .param p3, "changeOfScale"    # F
    .param p4, "confidenceIndex"    # B
    .param p5, "isNewSelection"    # B
    .param p6, "timestampMs"    # J

    .prologue
    .line 429
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 430
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1402(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;F)F

    .line 431
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1502(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;F)F

    .line 432
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1602(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;F)F

    .line 433
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1702(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;B)B

    .line 434
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1802(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;B)B

    .line 435
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v0

    invoke-static {v0, p6, p7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->access$1902(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;J)J

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->shouldSendLynxData:Z

    .line 438
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 439
    return-void
.end method

.method public userChangedUserBaroData(FD)V
    .locals 2
    .param p1, "pressure"    # F
    .param p2, "timestamp"    # D

    .prologue
    .line 419
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 420
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;->access$1102(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;F)F

    .line 421
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$1000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;->access$1202(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;D)D

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->shouldSendUserBaroData:Z

    .line 424
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 425
    return-void
.end method

.method public userChangedUserGPSData(DDFFFFFFFFFD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # F
    .param p6, "northSpeed"    # F
    .param p7, "eastSpeed"    # F
    .param p8, "verticalSpeed"    # F
    .param p9, "northAcc"    # F
    .param p10, "eastAcc"    # F
    .param p11, "verticalAcc"    # F
    .param p12, "horizontalAccuracy"    # F
    .param p13, "verticalAccuracy"    # F
    .param p14, "timestamp"    # D

    .prologue
    .line 399
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 400
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput-wide p1, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->latitude:D

    .line 401
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput-wide p3, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->longitude:D

    .line 402
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput p5, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->altitude:F

    .line 403
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput p6, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->northSpeed:F

    .line 404
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput p7, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->eastSpeed:F

    .line 405
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput p8, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->verticalSpeed:F

    .line 406
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput p9, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->northAcc:F

    .line 407
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput p10, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->eastAcc:F

    .line 408
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput p11, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->verticalAcc:F

    .line 409
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput p12, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->horizontalAccuracy:F

    .line 410
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput p13, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->verticalAccuracy:F

    .line 411
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    iput-wide p14, v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->timestamp:D

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->shouldSendUserGPSData:Z

    .line 414
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 415
    return-void
.end method

.method public userCommandsActivationChanged(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 348
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 349
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$102(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;Z)Z

    .line 350
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 351
    return-void
.end method

.method public userEnteredPilotingHud(Z)V
    .locals 4
    .param p1, "inHud"    # Z

    .prologue
    .line 661
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 662
    .local v0, "inHudByte":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->DeviceController_SendControllerIsPiloting(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 663
    return-void

    .line 661
    .end local v0    # "inHudByte":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userGazChanged(F)V
    .locals 1
    .param p1, "gaz"    # F

    .prologue
    .line 355
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 356
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$502(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F

    .line 357
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 358
    return-void
.end method

.method public userPitchChanged(F)V
    .locals 1
    .param p1, "pitch"    # F

    .prologue
    .line 362
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 363
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$302(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F

    .line 364
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 365
    return-void
.end method

.method public userRequestCancelMoveTo()V
    .locals 3

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingCancelMoveTo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 750
    return-void
.end method

.method public userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;)V
    .locals 3
    .param p1, "flipDirection"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendAnimationsFlip(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;)Z

    .line 550
    return-void
.end method

.method public userRequestMoveTo(DDDLcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;F)V
    .locals 13
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D
    .param p7, "orientation_mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;
    .param p8, "heading"    # F

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingMoveTo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;DDDLcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_MOVETO_ORIENTATION_MODE_ENUM;F)Z

    .line 746
    return-void
.end method

.method public userRequestRecordPicture(B)V
    .locals 3
    .param p1, "massStorageId"    # B

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordPicture(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 555
    return-void
.end method

.method public userRequestRecordPictureV2()V
    .locals 3

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordPictureV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 570
    return-void
.end method

.method public userRequestRecordVideoStart(B)V
    .locals 6
    .param p1, "massStorageId"    # B

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_START:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordVideo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;B)Z

    .line 560
    return-void
.end method

.method public userRequestRecordVideoStop(B)V
    .locals 6
    .param p1, "massStorageId"    # B

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_STOP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordVideo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;B)Z

    .line 565
    return-void
.end method

.method public userRequestRecordVideoV2Start()V
    .locals 4

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_START:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordVideoV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;)Z

    .line 575
    return-void
.end method

.method public userRequestRecordVideoV2Stop()V
    .locals 4

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_STOP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaRecordVideoV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;)Z

    .line 580
    return-void
.end method

.method public userRequestStartPilotedPOI(DDD)V
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v0 .. v9}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingStartPilotedPOI(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;DDD)Z

    .line 754
    return-void
.end method

.method public userRequestStopPilotedPOI()V
    .locals 3

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingStopPilotedPOI(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 758
    return-void
.end method

.method public userRequestedAntiflickeringMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "antiflickeringMode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendAntiflickeringSetMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;)Z

    .line 683
    return-void
.end method

.method public userRequestedCancelInHandTakeOff()V
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 535
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingUserTakeOff(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 540
    return-void
.end method

.method public userRequestedEmergency()V
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 474
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2102(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z

    .line 475
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2002(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z

    .line 478
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dEmergencyId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingEmergency(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 481
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->postEmergencyStateNotification()V

    .line 482
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->postFlyingStateNotification()V

    .line 484
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 485
    return-void
.end method

.method public userRequestedFlatTrim()V
    .locals 0

    .prologue
    .line 545
    return-void
.end method

.method public userRequestedFlightPlanReturnHomeOnDisconnect(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->DeviceController_SendFlightPlanSettingsReturnHomeOnDisconnect(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 728
    return-void

    .line 727
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedInHandTakeOff()V
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 522
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2102(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z

    .line 524
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingUserTakeOff(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 527
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->postEmergencyStateNotification()V

    .line 529
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 530
    return-void
.end method

.method public userRequestedLanding()V
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 506
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2002(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z

    .line 511
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingLanding(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 514
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->postFlyingStateNotification()V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 517
    return-void
.end method

.method public userRequestedMediaStreamingVideoStreamMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "videoStreamMode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendMediaStreamingVideoStreamMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;)Z

    .line 738
    return-void
.end method

.method public userRequestedPictureSettingsExposition(F)V
    .locals 3
    .param p1, "expositionValue"    # F

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsExpositionSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 610
    return-void
.end method

.method public userRequestedPictureSettingsPictureFormat(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;)V
    .locals 3
    .param p1, "format"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsPictureFormatSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;)Z

    .line 620
    return-void
.end method

.method public userRequestedPictureSettingsSaturation(F)V
    .locals 3
    .param p1, "saturationValue"    # F

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsSaturationSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 605
    return-void
.end method

.method public userRequestedPictureSettingsTimelapsePictureFormat(ZF)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "interval"    # F

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v4, v0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsTimelapseSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BF)Z

    .line 630
    return-void

    .line 629
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPictureSettingsVideoAutorecordSelection(ZB)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "massStorageId"    # B

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v4, v0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoAutorecordSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BB)Z

    .line 625
    return-void

    .line 624
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPictureSettingsVideoFramerate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;)V
    .locals 3
    .param p1, "framerate"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoFramerate(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;)Z

    .line 713
    return-void
.end method

.method public userRequestedPictureSettingsVideoRecordingMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "recordingMode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoRecordingMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;)Z

    .line 708
    return-void
.end method

.method public userRequestedPictureSettingsVideoResolutions(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;)V
    .locals 3
    .param p1, "videoResolutions"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoResolutions(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;)Z

    .line 733
    return-void
.end method

.method public userRequestedPictureSettingsVideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoStabilizationMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)Z

    .line 703
    return-void
.end method

.method public userRequestedPictureSettingsWhiteBalance(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;)V
    .locals 3
    .param p1, "wb"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPictureSettingsAutoWhiteBalanceSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;)Z

    .line 615
    return-void
.end method

.method public userRequestedPilotingSettingsAbsoluteControl(Z)V
    .locals 4
    .param p1, "absoluteControl"    # Z

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsAbsolutControl(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 469
    return-void

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPilotingSettingsBankedTurn(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsBankedTurn(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 718
    return-void

    .line 717
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPilotingSettingsMaxAltitude(F)V
    .locals 3
    .param p1, "maxAltitude"    # F

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsMaxAltitude(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 444
    return-void
.end method

.method public userRequestedPilotingSettingsMaxDistance(F)V
    .locals 3
    .param p1, "maxDistance"    # F

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsMaxDistance(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 449
    return-void
.end method

.method public userRequestedPilotingSettingsMaxTilt(F)V
    .locals 3
    .param p1, "maxTilt"    # F

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsMaxTilt(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 459
    return-void
.end method

.method public userRequestedPilotingSettingsMotionDetection(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsSetMotionDetectionMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 723
    return-void

    .line 722
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPilotingSettingsNoFlyOverMaxDistance(Z)V
    .locals 4
    .param p1, "noFlyOverMaxDistance"    # Z

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingSettingsNoFlyOverMaxDistance(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 454
    return-void

    .line 453
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPilotingSettingsPitchSpeed(F)V
    .locals 3
    .param p1, "pitchSpeed"    # F

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSpeedSettingsMaxPitchRollRotationSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 464
    return-void
.end method

.method public userRequestedReframing(II)V
    .locals 6
    .param p1, "centerXPercent"    # I
    .param p2, "centerYPercent"    # I

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    int-to-byte v4, p1

    int-to-byte v5, p2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendTargetFramingPosition(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BB)Z

    .line 902
    return-void
.end method

.method public userRequestedReturnHome(Z)V
    .locals 4
    .param p1, "start"    # Z

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingNavigateHome(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 635
    return-void

    .line 634
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedSettingsNetworkWifiScan(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;)V
    .locals 3
    .param p1, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendNetworkWifiScan(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;)Z

    .line 678
    return-void
.end method

.method public userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V
    .locals 7
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;
    .param p2, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    .param p3, "channel"    # B

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendNetworkSettingsWifiSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)Z

    .line 668
    return-void
.end method

.method public userRequestedSettingsWifiAuthChannel()V
    .locals 3

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendNetworkWifiAuthChannel(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 673
    return-void
.end method

.method public userRequestedSettingsWifiAutoCountry(Z)V
    .locals 4
    .param p1, "isAutomatic"    # Z

    .prologue
    .line 639
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 640
    .local v0, "automatic":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->DeviceController_SendSettingsAutoCountry(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 641
    return-void

    .line 639
    .end local v0    # "automatic":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userRequestedSettingsWifiCountry(Ljava/lang/String;)V
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->DeviceController_SendSettingsCountry(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 646
    return-void
.end method

.method public userRequestedSettingsWifiOutdoor(Z)V
    .locals 4
    .param p1, "isOutdoor"    # Z

    .prologue
    .line 650
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 651
    .local v0, "outdoor":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->DeviceController_SendWifiSettingsOutdoorSetting(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 652
    return-void

    .line 650
    .end local v0    # "outdoor":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userRequestedSettingsWifiSecurity(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_PLAIN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_ENUM;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendNetworkSettingsWifiSecurity(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_ENUM;)Z

    .line 657
    return-void
.end method

.method public userRequestedSpeedSettingsHullProtection(Z)V
    .locals 4
    .param p1, "hullProtection"    # Z

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSpeedSettingsHullProtection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 595
    return-void

    .line 594
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedSpeedSettingsMaxRotationSpeed(F)V
    .locals 3
    .param p1, "maxSpeed"    # F

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSpeedSettingsMaxRotationSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 590
    return-void
.end method

.method public userRequestedSpeedSettingsMaxVerticalSpeed(F)V
    .locals 3
    .param p1, "maxSpeed"    # F

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSpeedSettingsMaxVerticalSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 585
    return-void
.end method

.method public userRequestedSpeedSettingsOutdoor(Z)V
    .locals 4
    .param p1, "outdoor"    # Z

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSpeedSettingsOutdoor(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 600
    return-void

    .line 599
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedStartAlertSound()V
    .locals 3

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSoundStartAlertSound(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 688
    return-void
.end method

.method public userRequestedStartBoomerangAnimation()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 805
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_FOLLOW_ME_BOOMERANG_CONFIGURE_PARAM_SPEED:I

    sget v4, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_FOLLOW_ME_BOOMERANG_CONFIGURE_PARAM_DISTANCE:I

    or-int/2addr v0, v4

    int-to-byte v4, v0

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStartBoomerangAnim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFF)Z

    .line 807
    return-void
.end method

.method public userRequestedStartBoomerangAnimation(F)V
    .locals 8
    .param p1, "distance"    # F

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_ANIMATION_DRONIE_CONFIG_PARAM_DISTANCE:I

    sget v4, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_ANIMATION_DRONIE_CONFIG_PARAM_PLAY_MODE:I

    or-int/2addr v0, v4

    int-to-byte v4, v0

    const/4 v5, 0x0

    sget-object v7, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->ONCE_THEN_MIRRORED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;

    move-object v0, p0

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->AnimationDeviceController_SendStartDronie(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFFLcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;)Z

    .line 885
    return-void
.end method

.method public userRequestedStartCandleAnimation()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 814
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_FOLLOW_ME_CANDLE_CONFIGURE_PARAM_SPEED:I

    sget v4, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_FOLLOW_ME_CANDLE_CONFIGURE_PARAM_VERTICAL_DISTANCE:I

    or-int/2addr v0, v4

    int-to-byte v4, v0

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStartCandleAnim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFF)Z

    .line 816
    return-void
.end method

.method public userRequestedStartEpicAnimation(F)V
    .locals 8
    .param p1, "distance"    # F

    .prologue
    .line 835
    .line 836
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_ANIMATION_DRONIE_CONFIG_PARAM_DISTANCE:I

    int-to-byte v4, v0

    const/4 v5, 0x0

    sget-object v7, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;

    move-object v0, p0

    move v6, p1

    .line 835
    invoke-virtual/range {v0 .. v7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->AnimationDeviceController_SendStartDronie(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFFLcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;)Z

    .line 843
    return-void
.end method

.method public userRequestedStartFollowMeMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;)V
    .locals 3
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;

    .prologue
    .line 767
    const/4 v0, 0x1

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;->IMAGE_DETECTION:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;->getValue()I

    move-result v1

    shl-int/2addr v0, v1

    int-to-short v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->clearFollowMeModeInfo(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;SS)V

    .line 769
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStart(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_MODE_ENUM;)Z

    .line 770
    return-void
.end method

.method public userRequestedStartHelicoidAnimation()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 787
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_FOLLOW_ME_HELICOID_CONFIGURE_PARAM_SPEED:I

    int-to-byte v4, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStartHelicoidAnim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFFF)Z

    .line 789
    return-void
.end method

.method public userRequestedStartHorizontalRevealAnimation(F)V
    .locals 8
    .param p1, "distance"    # F

    .prologue
    .line 846
    .line 847
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_ANIMATION_HORIZONTAL_REVEAL_CONFIG_PARAM_DISTANCE:I

    int-to-byte v4, v0

    const/4 v5, 0x0

    sget-object v7, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;

    move-object v0, p0

    move v6, p1

    .line 846
    invoke-virtual/range {v0 .. v7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->AnimationDeviceController_SendStartHorizontalReveal(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFFLcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;)Z

    .line 854
    return-void
.end method

.method public userRequestedStartOrbitAnimation(F)V
    .locals 10
    .param p1, "revolutionNumber"    # F

    .prologue
    const/4 v5, 0x0

    .line 876
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_ANIMATION_SPIRAL_CONFIG_PARAM_REVOLUTION_NB:I

    sget v4, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_ANIMATION_SPIRAL_CONFIG_PARAM_VERTICAL_DISTANCE:I

    or-int/2addr v0, v4

    int-to-byte v4, v0

    sget-object v9, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;

    move-object v0, p0

    move v6, v5

    move v7, v5

    move v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->AnimationDeviceController_SendStartSpiral(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFFFFLcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;)Z

    .line 879
    return-void
.end method

.method public userRequestedStartPanoramaAnimation(F)V
    .locals 7
    .param p1, "angle"    # F

    .prologue
    .line 825
    .line 826
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_ANIMATION_HORIZONTAL_PANORAMA_CONFIG_PARAM_ROTATION_ANGLE:I

    int-to-byte v4, v0

    const/4 v6, 0x0

    move-object v0, p0

    move v5, p1

    .line 825
    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->AnimationDeviceController_SendStartHorizontalPanorama(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFF)Z

    .line 832
    return-void
.end method

.method public userRequestedStartParabolaAnimation(F)V
    .locals 8
    .param p1, "distance"    # F

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_ANIMATION_PARABOLA_CONFIG_PARAM_VERTICAL_DISTANCE:I

    int-to-byte v4, v0

    const/4 v5, 0x0

    sget-object v7, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;

    move-object v0, p0

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->AnimationDeviceController_SendStartParabola(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFFLcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;)Z

    .line 891
    return-void
.end method

.method public userRequestedStartRiseAnimation(F)V
    .locals 10
    .param p1, "height"    # F

    .prologue
    const/4 v5, 0x0

    .line 857
    .line 858
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_ANIMATION_VERTICAL_REVEAL_CONFIG_PARAM_VERTICAL_DISTANCE:I

    int-to-byte v4, v0

    sget-object v9, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;

    move-object v0, p0

    move v6, p1

    move v7, v5

    move v8, v5

    .line 857
    invoke-virtual/range {v0 .. v9}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->AnimationDeviceController_SendStartVerticalReveal(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFFFFLcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;)Z

    .line 867
    return-void
.end method

.method public userRequestedStartSwingAnimation()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 796
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_FOLLOW_ME_SWING_CONFIGURE_PARAM_SPEED:I

    sget v4, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_FOLLOW_ME_SWING_CONFIGURE_PARAM_VERTICAL_DISTANCE:I

    or-int/2addr v0, v4

    int-to-byte v4, v0

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStartSwingAnim(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFF)Z

    .line 798
    return-void
.end method

.method public userRequestedStartTornadoAnimation(F)V
    .locals 10
    .param p1, "height"    # F

    .prologue
    const/4 v5, 0x0

    .line 894
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget v0, Lcom/parrot/arsdk/arcommands/ARCommand;->ARCOMMANDS_FLAG_ANIMATION_SPIRAL_CONFIG_PARAM_VERTICAL_DISTANCE:I

    int-to-byte v4, v0

    sget-object v9, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;->UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;

    move-object v0, p0

    move v6, v5

    move v7, p1

    move v8, v5

    invoke-virtual/range {v0 .. v9}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->AnimationDeviceController_SendStartSpiral(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BFFFFLcom/parrot/arsdk/arcommands/ARCOMMANDS_ANIMATION_PLAY_MODE_ENUM;)Z

    .line 897
    return-void
.end method

.method public userRequestedStopAlertSound()V
    .locals 3

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendSoundStopAlertSound(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 693
    return-void
.end method

.method public userRequestedStopAnimation()V
    .locals 3

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStopAnimation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 780
    return-void
.end method

.method public userRequestedStopFollowMe()V
    .locals 3

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->FollowMeDeviceController_SendStop(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 775
    return-void
.end method

.method public userRequestedTakeOff()V
    .locals 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 490
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2102(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z

    .line 491
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$2002(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z

    .line 494
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->ARDrone3DeviceController_SendPilotingTakeOff(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 497
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->postEmergencyStateNotification()V

    .line 498
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->postFlyingStateNotification()V

    .line 500
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 501
    return-void
.end method

.method public userRollChanged(F)V
    .locals 1
    .param p1, "roll"    # F

    .prologue
    .line 369
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 370
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$202(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F

    .line 371
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 372
    return-void
.end method

.method public userYawChanged(F)V
    .locals 1
    .param p1, "yaw"    # F

    .prologue
    .line 376
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 377
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->access$402(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F

    .line 378
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 379
    return-void
.end method
