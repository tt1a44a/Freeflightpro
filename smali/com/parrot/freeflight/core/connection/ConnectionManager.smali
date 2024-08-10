.class public Lcom/parrot/freeflight/core/connection/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;,
        Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;,
        Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    }
.end annotation


# static fields
.field private static final RECONNECTION_DELAY:I = 0x3e8


# instance fields
.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDeviceControllerNetworkEventDisconnection:Landroid/content/BroadcastReceiver;

.field private mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnDeviceControllerFailed:Landroid/content/BroadcastReceiver;

.field private final mOnDeviceControllerStarted:Landroid/content/BroadcastReceiver;

.field private final mOnDeviceControllerStopped:Landroid/content/BroadcastReceiver;

.field private final mOnSkyControllerConnectionStateChanged:Landroid/content/BroadcastReceiver;

.field private final mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWifiLogger:Lcom/parrot/freeflight/core/connection/WifiLogger;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWifiReconnection:Lcom/parrot/freeflight/core/connection/WifiReconnection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWifiReconnectionListener:Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;

.field private final mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "policy"    # Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1015
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStarted:Landroid/content/BroadcastReceiver;

    .line 1054
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$3;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStopped:Landroid/content/BroadcastReceiver;

    .line 1104
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$4;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerFailed:Landroid/content/BroadcastReceiver;

    .line 1156
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceControllerNetworkEventDisconnection:Landroid/content/BroadcastReceiver;

    .line 1198
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$6;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnSkyControllerConnectionStateChanged:Landroid/content/BroadcastReceiver;

    .line 1247
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$7;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$7;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiReconnectionListener:Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    .line 137
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 138
    iput-object p2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    .line 139
    new-instance v0, Lcom/parrot/controller/utils/WifiUtils;

    invoke-direct {v0, p1}, Lcom/parrot/controller/utils/WifiUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    .line 140
    new-instance v0, Lcom/parrot/freeflight/core/connection/WifiReconnection;

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiReconnectionListener:Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/WifiReconnection;-><init>(Lcom/parrot/controller/utils/WifiUtils;Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiReconnection:Lcom/parrot/freeflight/core/connection/WifiReconnection;

    .line 141
    new-instance v0, Lcom/parrot/freeflight/core/connection/WifiLogger;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/core/connection/WifiLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiLogger:Lcom/parrot/freeflight/core/connection/WifiLogger;

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mHandler:Landroid/os/Handler;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/core/connection/WifiLogger;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiLogger:Lcom/parrot/freeflight/core/connection/WifiLogger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/core/connection/ConnectionManager;Ljava/util/UUID;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .param p1, "x1"    # Ljava/util/UUID;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->isListeningTo(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;I)Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->createBridgedDeviceService(Ljava/lang/String;I)Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/controller/devicecontrollers/DeviceController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/core/connection/WifiReconnection;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiReconnection:Lcom/parrot/freeflight/core/connection/WifiReconnection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/controller/devicecontrollers/DeviceController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    return-object v0
.end method

.method private static createBridgedDeviceService(Ljava/lang/String;I)Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;
    .locals 9
    .param p0, "deviceName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "deviceProductID"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1271
    new-instance v6, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;

    invoke-direct {v6}, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;-><init>()V

    .line 1272
    .local v6, "deviceService":Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;
    invoke-virtual {v6, p0}, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;->setName(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v6, p1}, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;->setProductID(I)V

    .line 1275
    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v8

    .line 1276
    .local v8, "remoteCtrlProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-virtual {v6}, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v7

    .line 1277
    .local v7, "network":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v7, v1, :cond_0

    .line 1278
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;-><init>()V

    .line 1282
    :goto_0
    invoke-virtual {v6, v0}, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;->setDevice(Ljava/lang/Object;)V

    .line 1283
    return-object v6

    .line 1280
    :cond_0
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    const-string v2, "bridged"

    const-string v3, "0.0.0.0"

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_bridged"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    goto :goto_0
.end method

.method private createDeviceController(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/DeviceController;
    .locals 3
    .param p1, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/DeviceController;
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 969
    :goto_0
    return-object v0

    .line 938
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    move-result-object v0

    .line 939
    goto :goto_0

    .line 944
    :pswitch_1
    instance-of v1, p1, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v1, :cond_0

    .line 945
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->createBridged(Landroid/content/Context;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-result-object v0

    goto :goto_0

    .line 947
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    move-result-object v0

    .line 949
    goto :goto_0

    .line 951
    :pswitch_2
    instance-of v1, p1, Lcom/parrot/freeflight/core/connection/BridgedARDiscoveryDeviceService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v1, :cond_1

    .line 952
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->createBridged(Landroid/content/Context;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    move-result-object v0

    goto :goto_0

    .line 954
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    move-result-object v0

    .line 956
    goto :goto_0

    .line 933
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doConnect()Z
    .locals 3

    .prologue
    .line 973
    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v2, :cond_0

    .line 974
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 975
    .local v1, "service":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 976
    invoke-static {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->isRemoteControl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v0

    .line 977
    .local v0, "remoteControl":Z
    if-eqz v0, :cond_1

    .line 978
    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 979
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->createDeviceController(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 985
    .end local v0    # "remoteControl":Z
    .end local v1    # "service":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 981
    .restart local v0    # "remoteControl":Z
    .restart local v1    # "service":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_1
    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 982
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->createDeviceController(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    goto :goto_0
.end method

.method private doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 989
    if-eqz p1, :cond_0

    .line 990
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->stopInstance()V

    .line 992
    :cond_0
    return-void
.end method

.method private isListeningTo(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1257
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 1258
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1257
    :goto_0
    return v0

    .line 1258
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRemoteControl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z
    .locals 2
    .param p0, "device"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 1263
    .local v0, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2P:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_NG:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyChanged()V
    .locals 7

    .prologue
    .line 1006
    const-string v1, "FF4.Connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    .line 1011
    .local v0, "listener":Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v4, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v5, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-interface/range {v0 .. v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;->onStateChange(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto :goto_0

    .line 1013
    .end local v0    # "listener":Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
    :cond_0
    return-void
.end method

.method private onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 2
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 995
    if-eqz p1, :cond_0

    .line 996
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    if-ne v0, p1, :cond_1

    .line 997
    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    goto :goto_0
.end method

.method private runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 194
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 928
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    .line 196
    :pswitch_1
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 199
    :pswitch_2
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : connect device while not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->shouldSelfConnect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->autoSelectService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    .line 204
    .local v0, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v0, :cond_1

    .line 205
    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 206
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->setDeviceWasAutoSelected(Z)V

    .line 212
    .end local v0    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-static {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->isRemoteControl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    :goto_2
    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 214
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    .line 215
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->setDeviceWasAutoSelected(Z)V

    goto :goto_1

    .line 213
    :cond_3
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    goto :goto_2

    .line 220
    :pswitch_3
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : receiving EVENT_CANCEL or EVENT_DISCONNECT_DEVICE while state is STATE_NOT_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 222
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 223
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    goto :goto_0

    .line 231
    :pswitch_4
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 313
    const-string v1, "FF4.Connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not handled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    :pswitch_5
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : service clicked while connecting drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 238
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 240
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v1, :cond_5

    .line 241
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager: request service auto selection while STATE_DRONE_CONNECTING not allowed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 242
    :cond_5
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v1, :cond_6

    .line 243
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager: state is STATE_DRONE_CONNECTING but mCurrentDroneService == null while receiving EVENT_CONNECT_DEVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    :cond_6
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 246
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 247
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 253
    :pswitch_6
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : did connect while connecting drone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 257
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 261
    :pswitch_7
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 263
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : canceled while connecting drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 266
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 267
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 271
    :pswitch_8
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : canceled while connecting drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_ASK_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 274
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 275
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 279
    :pswitch_9
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : failed or stop while connecting drone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 283
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onUnwantedDisconnection()V

    .line 285
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;-><init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 303
    :pswitch_a
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting while state is STATE_DRONE_CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 306
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 307
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 319
    :pswitch_b
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    .line 380
    :pswitch_c
    const-string v1, "FF4.Connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not handled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 323
    :pswitch_d
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : service clicked while connected to drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 326
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 327
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 332
    :pswitch_e
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : did stop while connected to drone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->shouldStayConnected()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 337
    const-string v1, "FF4.Connect"

    const-string v2, "ConnectionManager : unwanted stop, starting reconnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 340
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_RECONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 341
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 342
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiReconnection:Lcom/parrot/freeflight/core/connection/WifiReconnection;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/connection/WifiReconnection;->start(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    goto/16 :goto_0

    .line 346
    :cond_7
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 347
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onUnwantedDisconnection()V

    .line 348
    iput-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 349
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 350
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 355
    :pswitch_f
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 357
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : disconnection requested while connected to drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 360
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 361
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 365
    :pswitch_10
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : disconnection requested while connected to drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_ASK_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 368
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 369
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 373
    :pswitch_11
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting while state is STATE_DRONE_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 376
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 377
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 387
    :pswitch_12
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4

    .line 423
    :pswitch_13
    const-string v1, "FF4.Connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not handled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    :pswitch_14
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : device clicked while disconnecting drone"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 396
    :pswitch_15
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : did stop while disconnecting drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 399
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 400
    iput-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 401
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_8

    .line 402
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 403
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 404
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    goto/16 :goto_0

    .line 406
    :cond_8
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 407
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    goto/16 :goto_0

    .line 411
    :pswitch_16
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 412
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 416
    :pswitch_17
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting while state is STATE_DRONE_DISCONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 419
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 420
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 429
    :pswitch_18
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5

    .line 467
    :pswitch_19
    const-string v1, "FF4.Connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not handled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 432
    :pswitch_1a
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : did stop while reconnecting drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 439
    :pswitch_1b
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : did connect while reconnecting drone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 442
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 447
    :pswitch_1c
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : cancelled while reconnecting drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiReconnection:Lcom/parrot/freeflight/core/connection/WifiReconnection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/WifiReconnection;->cancel()V

    .line 450
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 451
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 452
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 453
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 454
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 459
    :pswitch_1d
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting while state is STATE_DRONE_DISCONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiReconnection:Lcom/parrot/freeflight/core/connection/WifiReconnection;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/WifiReconnection;->cancel()V

    .line 462
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 463
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 464
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 473
    :pswitch_1e
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_6

    .line 546
    :pswitch_1f
    const-string v1, "FF4.Connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not handled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 477
    :pswitch_20
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 478
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 479
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 480
    :cond_9
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v1, :cond_a

    .line 481
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager: request service auto selection while STATE_REMOTE_CTRL_CONNECTING not allowed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 482
    :cond_a
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v1, :cond_b

    .line 483
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager: state is STATE_REMOTE_CTRL_CONNECTING but mCurrentRemoteCtrlService == null while receiving EVENT_CONNECT_DEVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 485
    :cond_b
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 486
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 487
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 492
    :pswitch_21
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : did connect while connecting remote controller"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 495
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 499
    :pswitch_22
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : cancelled while connecting remote controller"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 502
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 503
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 508
    :pswitch_23
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : remote connecting to drone while connecting remote controller"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 511
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 512
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    goto/16 :goto_0

    .line 517
    :pswitch_24
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : did stop or failed while connecting remote controller"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 522
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onUnwantedDisconnection()V

    .line 524
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->shouldAutoSelectService()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 525
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 526
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 527
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    goto/16 :goto_0

    .line 528
    :cond_c
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_d

    .line 529
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 530
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    goto/16 :goto_0

    .line 532
    :cond_d
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : state is STATE_DRONE_CONNECTING but mCurrentDroneService == null while receiving EVENT_DRONE_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 539
    :pswitch_25
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting while state is STATE_REMOTE_CTRL_CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 542
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 543
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 552
    :pswitch_26
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 595
    const-string v1, "FF4.Connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not handled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 556
    :sswitch_1
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : service clicked while connected to remote controller"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 559
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 560
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 565
    :sswitch_2
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : did stop while connected to remote controller"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 569
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 570
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 571
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 572
    iput-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 573
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 574
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onUnwantedDisconnection()V

    goto/16 :goto_0

    .line 578
    :sswitch_3
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : EVENT_REMOTE_CTRL_CONNECTED_TO_DRONE while STATE_REMOTE_CTRL_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 581
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    .line 582
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 588
    :sswitch_4
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting while state is STATE_REMOTE_CTRL_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 591
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 592
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 601
    :pswitch_27
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_1

    .line 620
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Did stop while disconnecting remote Controller"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 624
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 625
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 626
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 627
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 628
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 629
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    goto/16 :goto_0

    .line 604
    :sswitch_5
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : device clicked while disconnecting remote controller"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 612
    :sswitch_6
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting while state is STATE_REMOTE_CTRL_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 615
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 616
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 630
    :cond_e
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v1, :cond_0

    .line 631
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : state is STATE_REMOTE_CTRL_DISCONNECTING but mCurrentRemoteCtrlService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 638
    :pswitch_28
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7

    :pswitch_29
    goto/16 :goto_0

    .line 655
    :pswitch_2a
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Canceled while reconnecting remote Controller"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 658
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 659
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 660
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 662
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    goto/16 :goto_0

    .line 641
    :pswitch_2b
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Did stop while reconnecting remote Controller"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 648
    :pswitch_2c
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Did connect while reconnecting remote Controller"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 651
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 666
    :pswitch_2d
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : remote connecting to drone while reconnecting remote controller"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 669
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 670
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    goto/16 :goto_0

    .line 676
    :pswitch_2e
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting while state is STATE_REMOTE_CTRL_RECONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 679
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 680
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 688
    :pswitch_2f
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_2

    .line 731
    const-string v1, "FF4.Connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not handled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    :sswitch_7
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : did connect while connecting remote drone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 694
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 698
    :sswitch_8
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Disconnect requested while connecting remote drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 701
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 702
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 703
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 707
    :sswitch_9
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Failed or Stop while connecting remote drone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 711
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    goto/16 :goto_0

    .line 714
    :sswitch_a
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 715
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 716
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 717
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 718
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 722
    :sswitch_b
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting or wanted disconnection while state is STATE_REMOTE_DRONE_CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 725
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 726
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 727
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 728
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 737
    :pswitch_30
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8

    .line 823
    :pswitch_31
    const-string v1, "FF4.Connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not handled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 741
    :pswitch_32
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : service clicked while connected remote drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 744
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 745
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 746
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 747
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 752
    :pswitch_33
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Remote Controller did stop while connected to remote drone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->shouldStayConnected()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 757
    const-string v1, "FF4.Connect"

    const-string v2, "ConnectionManager : starting wifi reconnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 760
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 761
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 762
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_RECONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 763
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 764
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiReconnection:Lcom/parrot/freeflight/core/connection/WifiReconnection;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/connection/WifiReconnection;->start(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    goto/16 :goto_0

    .line 768
    :cond_f
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 769
    iput-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 770
    iput-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 771
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 772
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 773
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 774
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 779
    :pswitch_34
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Disconnection requested while connected to remote drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_ASK_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 782
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 783
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 784
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 788
    :pswitch_35
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Disconnection requested while connected to remote drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 791
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 792
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 793
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 797
    :pswitch_36
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Remote drone did disconnect while connected to remote drone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 800
    iput-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 801
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 802
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 803
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 806
    :pswitch_37
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 807
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 808
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 809
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 810
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 814
    :pswitch_38
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting while state is STATE_REMOTE_DRONE_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 817
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 818
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 819
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 820
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 830
    :pswitch_39
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_3

    .line 859
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Did stop while disconnecting remote drone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 863
    iput-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 864
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 865
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 866
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 867
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 868
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    goto/16 :goto_0

    .line 832
    :sswitch_c
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 833
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 834
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 835
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 836
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 840
    :sswitch_d
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting while state is STATE_REMOTE_DRONE_DISCONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 843
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 844
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 845
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 846
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 850
    :sswitch_e
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : EVENT_REMOTE_CTRL_CONNECTED_TO_DRONE while state is STATE_REMOTE_DRONE_DISCONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 853
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 854
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 855
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    goto/16 :goto_0

    .line 869
    :cond_10
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v1, :cond_0

    .line 870
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : state is STATE_REMOTE_DRONE_DISCONNECTING but mCurrentRemoteCtrlService == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 877
    :pswitch_3a
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$8;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionEvent:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_4

    goto/16 :goto_0

    .line 904
    :sswitch_f
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    .line 905
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 906
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 907
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 908
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 880
    :sswitch_10
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : did connect while reconnecting remote drone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 883
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    goto/16 :goto_0

    .line 887
    :sswitch_11
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : EVENT_REMOTE_CTRL_CONNECTED_TO_DRONE while STATE_REMOTE_DRONE_RECONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 890
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 891
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doConnect()Z

    goto/16 :goto_0

    .line 895
    :sswitch_12
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : Canceled while reconnecting remote drone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 898
    invoke-direct {p0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->notifyChanged()V

    .line 899
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 901
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mPolicy:Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->onAskedDisconnection()V

    goto/16 :goto_0

    .line 912
    :sswitch_13
    const-string v1, "FF4.Connect"

    const-string v2, "Connection Manager : app exiting while state is STATE_REMOTE_DRONE_RECONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 915
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 916
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 917
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->doDisconnect(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 918
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->onDisconnected(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    goto/16 :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_b
        :pswitch_12
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_2f
        :pswitch_30
        :pswitch_39
        :pswitch_39
        :pswitch_3a
    .end packed-switch

    .line 196
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 231
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch

    .line 319
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_e
        :pswitch_11
    .end packed-switch

    .line 387
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_15
        :pswitch_17
    .end packed-switch

    .line 429
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_19
        :pswitch_1a
        :pswitch_1d
    .end packed-switch

    .line 473
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_20
        :pswitch_0
        :pswitch_22
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_25
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_24
        :pswitch_24
    .end packed-switch

    .line 552
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7 -> :sswitch_4
        0xa -> :sswitch_3
        0xc -> :sswitch_2
    .end sparse-switch

    .line 601
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_0
        0x7 -> :sswitch_6
    .end sparse-switch

    .line 638
    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_2e
        :pswitch_29
        :pswitch_2c
        :pswitch_2d
        :pswitch_29
        :pswitch_2b
    .end packed-switch

    .line 688
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_a
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_b
        0xd -> :sswitch_7
    .end sparse-switch

    .line 737
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_32
        :pswitch_37
        :pswitch_31
        :pswitch_31
        :pswitch_34
        :pswitch_31
        :pswitch_38
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_33
        :pswitch_31
        :pswitch_35
        :pswitch_36
    .end packed-switch

    .line 830
    :sswitch_data_3
    .sparse-switch
        0x2 -> :sswitch_c
        0x7 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch

    .line 877
    :sswitch_data_4
    .sparse-switch
        0x2 -> :sswitch_f
        0x3 -> :sswitch_12
        0x7 -> :sswitch_13
        0xa -> :sswitch_11
        0xd -> :sswitch_10
    .end sparse-switch
.end method


# virtual methods
.method public connectDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 1
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 184
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 185
    return-void
.end method

.method public disconnectDrone()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 189
    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 190
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DISCONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 191
    return-void
.end method

.method public getWifiUtils()Lcom/parrot/controller/utils/WifiUtils;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    return-object v0
.end method

.method public registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDroneDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v4, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v5, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mRemoteCtrlDeviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;->onStateChange(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 170
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 147
    .local v0, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStarted:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerDidStartNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 148
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStopped:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerDidStopNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 149
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerFailed:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerDidFailNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 150
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceControllerNetworkEventDisconnection:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerNetworkEventDisconnectionNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 151
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnSkyControllerConnectionStateChanged:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "skyControllerDeviceControllerNotificationDictionaryChanged"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 152
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 156
    .local v0, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnSkyControllerConnectionStateChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceControllerNetworkEventDisconnection:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerFailed:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStopped:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mOnDeviceControllerStarted:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mDeviceToConnect:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 162
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentDroneService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 163
    iput-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mCurrentRemoteCtrlService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 164
    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_APP_EXIT:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 165
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
