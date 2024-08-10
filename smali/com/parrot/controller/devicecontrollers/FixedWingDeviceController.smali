.class public Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
.super Lcom/parrot/controller/devicecontrollers/FixedWingDeviceControllerAndLibARCommands;
.source "FixedWingDeviceController.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStreamControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;,
        Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;,
        Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;,
        Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;
    }
.end annotation


# static fields
.field private static ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

.field public static ARDrone3DeviceControllerEmergencyState:Ljava/lang/String;

.field public static ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

.field public static ARDrone3DeviceControllerFlyingState:Ljava/lang/String;

.field public static ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

.field private static LOOP_INTERVAL:D

.field private static TAG:Ljava/lang/String;


# instance fields
.field private cameraCommandCounter:I

.field private droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

.field private final droneStateLock:Ljava/util/concurrent/locks/Lock;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "ARDrone3DeviceControllerFlyingStateChangedNotification"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    .line 49
    const-string v0, "ARDrone3DeviceControllerFlyingState"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerFlyingState:Ljava/lang/String;

    .line 50
    const-string v0, "ARDrone3DeviceControllerEmergencyStateChangedNotification"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    .line 51
    const-string v0, "ARDrone3DeviceControllerEmergencyState"

    sput-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerEmergencyState:Ljava/lang/String;

    .line 53
    const-class v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->TAG:Ljava/lang/String;

    .line 54
    const-wide v0, 0x3f9999999999999aL    # 0.025

    sput-wide v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->LOOP_INTERVAL:D

    .line 55
    const/16 v0, 0x64

    sput v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceControllerAndLibARCommands;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
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

    .line 66
    new-instance v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-direct {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;-><init>()V

    .line 67
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->mApplicationContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->onCreate()V

    .line 69
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    invoke-virtual {v0, v1, v3, v3}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->onStartCommand(Landroid/content/Intent;II)I

    .line 72
    return-object v0
.end method

.method public static createBridged(Landroid/content/Context;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
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

    .line 77
    new-instance v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-direct {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;-><init>()V

    .line 78
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->notAService:Z

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->mApplicationContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->onCreate()V

    .line 81
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceController.bridge"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iput-object p1, v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->deviceControllerBridge:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 85
    invoke-virtual {v0, v1, v4, v4}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->onStartCommand(Landroid/content/Intent;II)I

    .line 86
    return-object v0
.end method

.method public static hasProFeature(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;J)Z
    .locals 7
    .param p0, "feature"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;
    .param p1, "featuresSet"    # J

    .prologue
    const/4 v0, 0x0

    .line 1126
    if-nez p0, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;->getMask()J

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
    .line 167
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->intentCache:Ljava/util/HashMap;

    .line 168
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->intentCache:Ljava/util/HashMap;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->intentCache:Ljava/util/HashMap;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method private postEmergencyStateNotification()V
    .locals 3

    .prologue
    .line 857
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 859
    sget-object v1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerEmergencyStateChangedNotification:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getARDrone3DeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 860
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 862
    sget-object v1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerEmergencyState:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$1000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 863
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 870
    :goto_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 871
    return-void

    .line 867
    :cond_0
    sget-object v1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->TAG:Ljava/lang/String;

    const-string v2, "failed during getIntent"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postFlyingStateNotification()V
    .locals 3

    .prologue
    .line 875
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 877
    sget-object v1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerFlyingStateChangedNotification:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getARDrone3DeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 878
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 880
    sget-object v1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceControllerFlyingState:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 881
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 888
    :goto_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 889
    return-void

    .line 885
    :cond_0
    sget-object v1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->TAG:Ljava/lang/String;

    const-string v2, "failed during getIntent"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public batteryLevel()I
    .locals 2

    .prologue
    .line 311
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 312
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$1100(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)I

    move-result v0

    .line 313
    .local v0, "retval":I
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 314
    return v0
.end method

.method public changeElectricFrequency(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_ELECTRICFREQUENCY_FREQUENCY_ENUM;)V
    .locals 3
    .param p1, "electricFrequency"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_ELECTRICFREQUENCY_FREQUENCY_ENUM;

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendAntiflickeringElectricFrequency(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_ELECTRICFREQUENCY_FREQUENCY_ENUM;)Z

    .line 653
    return-void
.end method

.method public cleanNetworkStateWifiAuthChannelListChangedNotificationDictionary()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 772
    :cond_0
    return-void
.end method

.method public cleanNetworkStateWifiScanListChangedNotificationDictionary()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v1, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public controllerLoop()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    .line 185
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    iget-object v10, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    .line 187
    .local v10, "currentState":Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 189
    sget-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$1;->$SwitchMap$com$parrot$controller$devicecontrollers$DEVICE_CONTROLLER_STATE_ENUM:[I

    invoke-virtual {v10}, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 194
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 195
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    .line 196
    .local v12, "localState":Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;
    iget v11, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->cameraCommandCounter:I

    .line 197
    .local v11, "localCameraCommandCounter":I
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->cameraCommandCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->cameraCommandCounter:I

    .line 198
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 200
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dNackId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->access$100(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    int-to-byte v4, v0

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->access$200(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;)F

    move-result v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-byte v5, v0

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->access$300(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;)F

    move-result v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-byte v6, v0

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->access$400(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;)F

    move-result v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-byte v7, v0

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->access$500(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;)F

    move-result v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-byte v8, v0

    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getTimestampAndSeqNum()I

    move-result v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingPCMD(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BBBBBI)Z

    .line 202
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->pcmdCommandCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->pcmdCommandCounter:I

    .line 203
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->pcmdCommandCounter:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 205
    sget-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->TAG:Ljava/lang/String;

    const-string v1, "Did send 100 pcmd commands"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iput v13, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->pcmdCommandCounter:I

    .line 208
    :cond_1
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->pcmdCommandSeqNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->pcmdCommandSeqNum:I

    .line 209
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->pcmdCommandSeqNum:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_2

    .line 211
    iput v13, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->pcmdCommandSeqNum:I

    .line 214
    :cond_2
    if-lez v11, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dNackId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->access$700(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;)F

    move-result v0

    float-to-int v0, v0

    int-to-byte v4, v0

    invoke-static {v12}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->access$800(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;)F

    move-result v0

    float-to-int v0, v0

    int-to-byte v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendCameraOrientation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BB)Z

    goto/16 :goto_0

    :cond_3
    move v0, v13

    .line 200
    goto :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public emergencyState()Z
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 303
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$1000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Z

    move-result v0

    .line 304
    .local v0, "retval":Z
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    return v0
.end method

.method public enableVideoStreaming(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1051
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FixedWingDeviceController.enableVideoStreaming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendMediaStreamingVideoEnable(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 1054
    return-void

    .line 1052
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flyingState()Z
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 294
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$900(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Z

    move-result v0

    .line 295
    .local v0, "retval":Z
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 296
    return v0
.end method

.method protected getARDrone3DeviceControllerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->intentCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getProFeaturesSet()J
    .locals 6

    .prologue
    .line 1106
    const-wide/16 v2, 0x0

    .line 1107
    .local v2, "features":J
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v4, "ARDrone3DeviceControllerPROStateFeaturesNotification"

    invoke-virtual {v1, v4}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v4, "ARDrone3DeviceControllerPROStateFeaturesNotification"

    invoke-virtual {v1, v4}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1110
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "ARDrone3DeviceControllerPROStateFeaturesNotificationFeaturesKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1112
    const-string v1, "ARDrone3DeviceControllerPROStateFeaturesNotificationFeaturesKey"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1115
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-wide v2
.end method

.method getTimestampAndSeqNum()I
    .locals 8

    .prologue
    .line 898
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 899
    .local v0, "current":J
    const-wide/32 v6, 0x1000000

    rem-long v2, v0, v6

    .line 900
    .local v2, "iCurrent":J
    iget v5, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->pcmdCommandSeqNum:I

    shl-int/lit8 v5, v5, 0x18

    long-to-int v6, v2

    add-int v4, v5, v6

    .line 901
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
    .line 1063
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

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

    invoke-virtual/range {v0 .. v13}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendGPSSettingsSendControllerGPS(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;DDDDD)Z

    .line 1064
    return-void
.end method

.method public gpsSettingsSendHomeType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;)V
    .locals 3
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendGPSSettingsHomeType(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;)Z

    .line 1069
    return-void
.end method

.method public gpsSettingsSendReturnHomeDelay(S)V
    .locals 3
    .param p1, "delay"    # S

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendGPSSettingsReturnHomeDelay(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;S)Z

    .line 1074
    return-void
.end method

.method public gpsSettingsSetHome(DDD)V
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v0 .. v9}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendGPSSettingsSetHome(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;DDD)Z

    .line 1059
    return-void
.end method

.method public hasProFeature(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;)Z
    .locals 3
    .param p1, "feature"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    .prologue
    .line 1096
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 1100
    :goto_0
    return v2

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getProFeaturesSet()J

    move-result-wide v0

    .line 1100
    .local v0, "features":J
    invoke-static {p1, v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->hasProFeature(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;J)Z

    move-result v2

    goto :goto_0
.end method

.method initDeviceState()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 907
    new-instance v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;-><init>(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    .line 908
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 909
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->cameraCommandCounter:I

    .line 150
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->pcmdCommandCounter:I

    .line 151
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->pcmdCommandSeqNum:I

    .line 152
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->initARDrone3DeviceControllerIntents()V

    .line 153
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceControllerAndLibARCommands;->initialize()V

    .line 155
    :cond_0
    return-void
.end method

.method public isVideoStreamingEnabled()Z
    .locals 3

    .prologue
    .line 1038
    const/4 v1, 0x1

    .line 1039
    .local v1, "retval":Z
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 1040
    .local v0, "dict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v2, "ARDrone3DeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    const-string v2, "ARDrone3DeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1045
    :cond_0
    return v1
.end method

.method public networkDidCancelFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 285
    :cond_0
    return-void
.end method

.method public networkDidReceiveAck(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 269
    :cond_0
    return-void
.end method

.method public networkDidSendFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 260
    return-void
.end method

.method public networkTimeoutOccurred(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 275
    return-void
.end method

.method public declared-synchronized onARDrone3MediaStreamingStateVideoEnableChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;)V
    .locals 3
    .param p1, "enabled"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;

    .prologue
    .line 836
    monitor-enter p0

    :try_start_0
    const-string v0, "debug_stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FixedWingDeviceController.onARDrone3MediaStreamingStateVideoEnableChangedUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-super {p0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceControllerAndLibARCommands;->onARDrone3MediaStreamingStateVideoEnableChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;)V

    .line 838
    sget-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMINGSTATE_VIDEOENABLECHANGED_ENABLED_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 849
    :goto_0
    monitor-exit p0

    return-void

    .line 840
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->startVideoStreaming()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 836
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 843
    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->stopVideoStreamingNormally()V

    goto :goto_0

    .line 846
    :pswitch_2
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->stopVideoStreamingWithError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 838
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
    .line 729
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 731
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationBandKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    :goto_0
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 732
    if-nez p1, :cond_0

    .line 734
    sget-object v5, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->TAG:Ljava/lang/String;

    const-string v6, "Bad value for argument `band` in WifiAuthChannelListChanged command from the device."

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_0
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationChannelKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 737
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotificationInOrOutKey"

    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 739
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 740
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 741
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 746
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

    .line 747
    move-object v3, v2

    .line 749
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 752
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 755
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 757
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 761
    new-instance v0, Landroid/content/Intent;

    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiAuthChannelListChangedNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 763
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    monitor-exit p0

    return-void

    .line 731
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    goto :goto_0

    .line 744
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

    .line 729
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
    .line 785
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 786
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 787
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationSsidKey"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationRssiKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 789
    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationBandKey"

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    :goto_0
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    if-nez p3, :cond_0

    .line 792
    sget-object v5, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->TAG:Ljava/lang/String;

    const-string v6, "Bad value for argument `band` in WifiScanListChanged command from the device."

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_0
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotificationChannelKey"

    invoke-virtual {v3, v5, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 796
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 797
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 798
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 803
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

    .line 804
    move-object v3, v2

    .line 806
    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 809
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->notificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 812
    new-instance v1, Landroid/content/Intent;

    const-string v5, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 814
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 818
    new-instance v0, Landroid/content/Intent;

    const-string v5, "ARDrone3DeviceControllerNetworkStateWifiScanListChangedNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 820
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    monitor-exit p0

    return-void

    .line 789
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSTATE_WIFISCANLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    goto :goto_0

    .line 801
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

    .line 785
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 94
    sget-object v5, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "recreated by the system, don\'t need! stop it"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->stopSelf()V

    .line 142
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceControllerAndLibARCommands;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    return v5

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->initialize()V

    .line 104
    :cond_1
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    sget-object v6, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    if-ne v5, v6, :cond_3

    .line 109
    const-string v5, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 110
    .local v3, "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    const-string v5, "com.parrot.freeflight3.DeviceController.extra.fastreconnection"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 111
    .local v4, "fastReconnection":Z
    const-string v5, "com.parrot.freeflight3.DeviceController.extra.deviceController.bridge"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "deviceControllerBridgeClassName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 113
    .local v1, "deviceControllerBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    if-eqz v2, :cond_2

    .line 117
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 121
    move-object v1, v0

    .line 130
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    invoke-virtual {p0, v3, v4, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->setConfigurations(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;ZLjava/lang/Class;)V

    .line 132
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->start()V

    .line 138
    .end local v1    # "deviceControllerBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    .end local v2    # "deviceControllerBridgeClassName":Ljava/lang/String;
    .end local v3    # "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v4    # "fastReconnection":Z
    :goto_2
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 136
    :cond_3
    sget-object v5, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onStartCommand not effective because device controller is not stopped"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 124
    .restart local v1    # "deviceControllerBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    .restart local v2    # "deviceControllerBridgeClassName":Ljava/lang/String;
    .restart local v3    # "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .restart local v4    # "fastReconnection":Z
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public pause(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 254
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
    .line 159
    .local p3, "dcBridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parrot/controller/devicecontrollers/DeviceController;>;"
    new-instance v2, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;

    invoke-direct {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;-><init>()V

    .line 161
    .local v2, "netConfig":Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;
    iput-boolean p2, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->fastReconnection:Z

    .line 162
    sget-wide v4, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->LOOP_INTERVAL:D

    move-object v1, p0

    move-object v3, p1

    move-object v6, p3

    invoke-super/range {v1 .. v6}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceControllerAndLibARCommands;->setConfigurations(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;DLjava/lang/Class;)V

    .line 163
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->startThread()V

    .line 237
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->stopThread()V

    .line 246
    return-void
.end method

.method public supportsVideoStreamingControl()Z
    .locals 3

    .prologue
    .line 1025
    const/4 v1, 0x0

    .line 1026
    .local v1, "retval":Z
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 1027
    .local v0, "dict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v2, "ARDrone3DeviceControllerMediaStreamingStateVideoEnableChangedNotificationEnabledKey"

    invoke-virtual {v0, v2}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1029
    const/4 v1, 0x1

    .line 1032
    :cond_0
    return v1
.end method

.method public userChangedCameraPan(F)V
    .locals 1
    .param p1, "pan"    # F

    .prologue
    .line 362
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 363
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->access$802(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;F)F

    .line 364
    sget v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->cameraCommandCounter:I

    .line 365
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 366
    return-void
.end method

.method public userChangedCameraTilt(F)V
    .locals 1
    .param p1, "tilt"    # F

    .prologue
    .line 354
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 355
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$600(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->access$702(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;F)F

    .line 356
    sget v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDRONE3_DEVICE_CONTROLLER_NB_CAMERA_CMD_TO_SEND:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->cameraCommandCounter:I

    .line 357
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 358
    return-void
.end method

.method public userCommandsActivationChanged(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 319
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 320
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->access$102(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;Z)Z

    .line 321
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 322
    return-void
.end method

.method public userEnteredPilotingHud(Z)V
    .locals 4
    .param p1, "inHud"    # Z

    .prologue
    .line 612
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 614
    .local v0, "inHudByte":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    .line 613
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->DeviceController_SendControllerIsPiloting(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 618
    return-void

    .line 612
    .end local v0    # "inHudByte":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userGazChanged(F)V
    .locals 1
    .param p1, "gaz"    # F

    .prologue
    .line 326
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 327
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->access$502(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;F)F

    .line 328
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 329
    return-void
.end method

.method public userPitchChanged(F)V
    .locals 1
    .param p1, "pitch"    # F

    .prologue
    .line 333
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 334
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->access$302(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;F)F

    .line 335
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 336
    return-void
.end method

.method public userRequestFlip(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;)V
    .locals 3
    .param p1, "flipDirection"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendAnimationsFlip(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANIMATIONS_FLIP_DIRECTION_ENUM;)Z

    .line 499
    return-void
.end method

.method public userRequestRecordPicture(B)V
    .locals 3
    .param p1, "massStorageId"    # B

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendMediaRecordPicture(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 504
    return-void
.end method

.method public userRequestRecordPictureV2()V
    .locals 3

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendMediaRecordPictureV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 519
    return-void
.end method

.method public userRequestRecordVideoStart(B)V
    .locals 6
    .param p1, "massStorageId"    # B

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_START:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendMediaRecordVideo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;B)Z

    .line 509
    return-void
.end method

.method public userRequestRecordVideoStop(B)V
    .locals 6
    .param p1, "massStorageId"    # B

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_STOP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendMediaRecordVideo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEO_RECORD_ENUM;B)Z

    .line 514
    return-void
.end method

.method public userRequestRecordVideoV2Start()V
    .locals 4

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_START:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendMediaRecordVideoV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;)Z

    .line 524
    return-void
.end method

.method public userRequestRecordVideoV2Stop()V
    .locals 4

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_STOP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendMediaRecordVideoV2(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORD_VIDEOV2_RECORD_ENUM;)Z

    .line 529
    return-void
.end method

.method public userRequestedAltitudeSettingsMaxAltitude(F)V
    .locals 3
    .param p1, "maxAltitude"    # F

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsMaxAltitude(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 416
    return-void
.end method

.method public userRequestedAltitudeSettingsMinAltitude(F)V
    .locals 3
    .param p1, "minAltitude"    # F

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsMinAltitude(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 421
    return-void
.end method

.method public userRequestedAltitudeSettingsPitchMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;)V
    .locals 3
    .param p1, "pitchMode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsPitchMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_PITCHMODE_VALUE_ENUM;)Z

    .line 411
    return-void
.end method

.method public userRequestedAntiflickeringMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "antiflickeringMode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendAntiflickeringSetMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_ANTIFLICKERING_SETMODE_MODE_ENUM;)Z

    .line 638
    return-void
.end method

.method public userRequestedCancelTakeOff()V
    .locals 4

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingUserTakeOff(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 381
    return-void
.end method

.method public userRequestedCirclingSettingsAltitude(S)V
    .locals 3
    .param p1, "altitude"    # S

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsCirclingAltitude(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;S)Z

    .line 401
    return-void
.end method

.method public userRequestedCirclingSettingsDirection(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_ENUM;)V
    .locals 3
    .param p1, "direction"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_ENUM;

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsCirclingDirection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSETTINGS_CIRCLINGDIRECTION_VALUE_ENUM;)Z

    .line 391
    return-void
.end method

.method public userRequestedCirclingSettingsRadius(S)V
    .locals 3
    .param p1, "radius"    # S

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsCirclingRadius(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;S)Z

    .line 396
    return-void
.end method

.method public userRequestedEmergency()V
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 446
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$1002(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;Z)Z

    .line 447
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$902(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;Z)Z

    .line 450
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dEmergencyId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingEmergency(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 453
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->postEmergencyStateNotification()V

    .line 454
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->postFlyingStateNotification()V

    .line 456
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 457
    return-void
.end method

.method public userRequestedEnterTakeOff()V
    .locals 4

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingUserTakeOff(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 376
    return-void
.end method

.method public userRequestedFlatTrim()V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public userRequestedFlightPlanReturnHomeOnDisconnect(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->DeviceController_SendFlightPlanSettingsReturnHomeOnDisconnect(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 406
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedLanding()V
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 478
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$1000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$902(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;Z)Z

    .line 483
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingLanding(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 486
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->postFlyingStateNotification()V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 489
    return-void
.end method

.method public userRequestedMediaStreamingVideoStreamMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "videoStreamMode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendMediaStreamingVideoStreamMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIASTREAMING_VIDEOSTREAMMODE_MODE_ENUM;)Z

    .line 683
    return-void
.end method

.method public userRequestedPictureSettingsExposition(F)V
    .locals 3
    .param p1, "expositionValue"    # F

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPictureSettingsExpositionSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 559
    return-void
.end method

.method public userRequestedPictureSettingsPictureFormat(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;)V
    .locals 3
    .param p1, "format"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPictureSettingsPictureFormatSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_PICTUREFORMATSELECTION_TYPE_ENUM;)Z

    .line 569
    return-void
.end method

.method public userRequestedPictureSettingsSaturation(F)V
    .locals 3
    .param p1, "saturationValue"    # F

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPictureSettingsSaturationSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 554
    return-void
.end method

.method public userRequestedPictureSettingsTimelapsePictureFormat(ZF)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "interval"    # F

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

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

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPictureSettingsTimelapseSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BF)Z

    .line 579
    return-void

    .line 578
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPictureSettingsVideoAutorecordSelection(ZB)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "massStorageId"    # B

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

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

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoAutorecordSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;BB)Z

    .line 574
    return-void

    .line 573
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPictureSettingsVideoFramerate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;)V
    .locals 3
    .param p1, "framerate"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoFramerate(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOFRAMERATE_FRAMERATE_ENUM;)Z

    .line 668
    return-void
.end method

.method public userRequestedPictureSettingsVideoRecordingMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "recordingMode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoRecordingMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORECORDINGMODE_MODE_ENUM;)Z

    .line 663
    return-void
.end method

.method public userRequestedPictureSettingsVideoResolutions(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;)V
    .locals 3
    .param p1, "videoResolutions"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoResolutions(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEORESOLUTIONS_TYPE_ENUM;)Z

    .line 678
    return-void
.end method

.method public userRequestedPictureSettingsVideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V
    .locals 3
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPictureSettingsVideoStabilizationMode(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)Z

    .line 658
    return-void
.end method

.method public userRequestedPictureSettingsWhiteBalance(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;)V
    .locals 3
    .param p1, "wb"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPictureSettingsAutoWhiteBalanceSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_AUTOWHITEBALANCESELECTION_TYPE_ENUM;)Z

    .line 564
    return-void
.end method

.method public userRequestedPilotingCircling(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;)V
    .locals 3
    .param p1, "direction"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingCircle(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTING_CIRCLE_DIRECTION_ENUM;)Z

    .line 386
    return-void
.end method

.method public userRequestedPilotingSettingsAbsoluteControl(Z)V
    .locals 4
    .param p1, "absoluteControl"    # Z

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsAbsolutControl(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 441
    return-void

    .line 440
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPilotingSettingsBankedTurn(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsBankedTurn(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 673
    return-void

    .line 672
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedPilotingSettingsMaxAltitude(F)V
    .locals 3
    .param p1, "maxAltitude"    # F

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsMaxAltitude(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 371
    return-void
.end method

.method public userRequestedPilotingSettingsMaxDistance(F)V
    .locals 3
    .param p1, "maxDistance"    # F

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsMaxDistance(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 426
    return-void
.end method

.method public userRequestedPilotingSettingsMaxTilt(F)V
    .locals 3
    .param p1, "maxTilt"    # F

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsMaxTilt(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 436
    return-void
.end method

.method public userRequestedPilotingSettingsNoFlyOverMaxDistance(Z)V
    .locals 4
    .param p1, "noFlyOverMaxDistance"    # Z

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingSettingsNoFlyOverMaxDistance(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 431
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedRcAbortCalibration()V
    .locals 3

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->RcDeviceController_SendAbortCalibration(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 703
    return-void
.end method

.method public userRequestedRcEnableReceiver(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->RcDeviceController_SendEnableReceiver(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 713
    return-void

    .line 712
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedRcInvertChannel(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;Z)V
    .locals 6
    .param p1, "action"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    .param p2, "invert"    # Z

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v5, v0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->RcDeviceController_SendInvertChannel(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;B)Z

    .line 698
    return-void

    .line 697
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedRcMonitorChannels(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->RcDeviceController_SendMonitorChannels(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 688
    return-void

    .line 687
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedRcResetCalibration()V
    .locals 3

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->RcDeviceController_SendResetCalibration(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 708
    return-void
.end method

.method public userRequestedRcStartCalibration(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;)V
    .locals 7
    .param p1, "calibrationType"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;
    .param p2, "channelAction"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    .param p3, "channelType"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->RcDeviceController_SendStartCalibration(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CALIBRATION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;)Z

    .line 693
    return-void
.end method

.method public userRequestedReturnHome(Z)V
    .locals 4
    .param p1, "start"    # Z

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingNavigateHome(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 584
    return-void

    .line 583
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedSettingsNetworkWifiScan(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;)V
    .locals 3
    .param p1, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendNetworkWifiScan(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORK_WIFISCAN_BAND_ENUM;)Z

    .line 633
    return-void
.end method

.method public userRequestedSettingsNetworkWifiType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)V
    .locals 7
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;
    .param p2, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;
    .param p3, "channel"    # B

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendNetworkSettingsWifiSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISELECTION_BAND_ENUM;B)Z

    .line 623
    return-void
.end method

.method public userRequestedSettingsWifiAuthChannel()V
    .locals 3

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendNetworkWifiAuthChannel(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 628
    return-void
.end method

.method public userRequestedSettingsWifiAutoCountry(Z)V
    .locals 4
    .param p1, "isAutomatic"    # Z

    .prologue
    .line 588
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 589
    .local v0, "automatic":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->DeviceController_SendSettingsAutoCountry(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 590
    return-void

    .line 588
    .end local v0    # "automatic":B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userRequestedSettingsWifiCountry(Ljava/lang/String;)V
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->DeviceController_SendSettingsCountry(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 595
    return-void
.end method

.method public userRequestedSettingsWifiOutdoor(Z)V
    .locals 4
    .param p1, "isOutdoor"    # Z

    .prologue
    .line 599
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 600
    .local v0, "outdoor":B
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->DeviceController_SendWifiSettingsOutdoorSetting(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 601
    return-void

    .line 599
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
    .line 605
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_ENUM;->ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_PLAIN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_ENUM;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendNetworkSettingsWifiSecurity(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_TYPE_ENUM;Ljava/lang/String;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGS_WIFISECURITY_KEYTYPE_ENUM;)Z

    .line 608
    return-void
.end method

.method public userRequestedSpeedSettingsHullProtection(Z)V
    .locals 4
    .param p1, "hullProtection"    # Z

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendSpeedSettingsHullProtection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 544
    return-void

    .line 543
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedSpeedSettingsMaxRotationSpeed(F)V
    .locals 3
    .param p1, "maxSpeed"    # F

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendSpeedSettingsMaxRotationSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 539
    return-void
.end method

.method public userRequestedSpeedSettingsMaxVerticalSpeed(F)V
    .locals 3
    .param p1, "maxSpeed"    # F

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendSpeedSettingsMaxVerticalSpeed(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;F)Z

    .line 534
    return-void
.end method

.method public userRequestedSpeedSettingsOutdoor(Z)V
    .locals 4
    .param p1, "outdoor"    # Z

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendSpeedSettingsOutdoor(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 549
    return-void

    .line 548
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedStartAlertSound()V
    .locals 3

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendSoundStartAlertSound(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 643
    return-void
.end method

.method public userRequestedStopAlertSound()V
    .locals 3

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendSoundStopAlertSound(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 648
    return-void
.end method

.method public userRequestedTakeOff()V
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 462
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$1002(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;Z)Z

    .line 463
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$902(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;Z)Z

    .line 466
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->ARDrone3DeviceController_SendPilotingTakeOff(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 469
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->postEmergencyStateNotification()V

    .line 470
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->postFlyingStateNotification()V

    .line 472
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 473
    return-void
.end method

.method public userRollChanged(F)V
    .locals 1
    .param p1, "roll"    # F

    .prologue
    .line 340
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 341
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->access$202(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;F)F

    .line 342
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 343
    return-void
.end method

.method public userYawChanged(F)V
    .locals 1
    .param p1, "yaw"    # F

    .prologue
    .line 347
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 348
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneState:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    invoke-static {v0}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->access$000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->access$402(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;F)F

    .line 349
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->droneStateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 350
    return-void
.end method
