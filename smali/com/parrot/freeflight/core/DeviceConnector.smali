.class public Lcom/parrot/freeflight/core/DeviceConnector;
.super Ljava/lang/Object;
.source "DeviceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/DeviceConnector$RemoteCtrlState;,
        Lcom/parrot/freeflight/core/DeviceConnector$DroneState;,
        Lcom/parrot/freeflight/core/DeviceConnector$IListener;
    }
.end annotation


# static fields
.field public static final CONNECTING_DRONE:I = 0x4

.field public static final CONNECTING_REMOTE_CTRL:I = 0x4

.field public static final DISCONNECTING_DRONE:I = 0x3

.field public static final DISCONNECTING_REMOTE_CTRL:I = 0x3

.field public static final DRONE_CONNECTED:I = 0x5

.field public static final DRONE_DISCONNECTED:I = 0x2

.field public static final DRONE_STATE_UNKNOWN:I = 0x0

.field public static final NO_DRONE:I = 0x1

.field public static final NO_REMOTE_CTRL:I = 0x1

.field public static final REMOTE_CTRL_CONNECTED:I = 0x5

.field public static final REMOTE_CTRL_DISCONNECTED:I = 0x2

.field public static final REMOTE_CTRL_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FF4.DC"


# instance fields
.field private mConnectedDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentRemoteCtrlDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

.field private mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDiscoveryUid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneState:I

.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/DeviceConnector$IListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousConnectedService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRemoteCtrlState:I

.field private mStarted:Z

.field private mUserDrone:Lcom/parrot/freeflight/user/UserDrone;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mUserSettings:Lcom/parrot/freeflight/user/UserSettings;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;


# direct methods
.method protected constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/user/UserSettings;)V
    .locals 1
    .param p1, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "discoveryManager"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "userSettings"    # Lcom/parrot/freeflight/user/UserSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    .line 70
    iput v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mRemoteCtrlState:I

    .line 73
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mListeners:Ljava/util/List;

    .line 316
    new-instance v0, Lcom/parrot/freeflight/core/DeviceConnector$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/DeviceConnector$2;-><init>(Lcom/parrot/freeflight/core/DeviceConnector;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

    .line 323
    new-instance v0, Lcom/parrot/freeflight/core/DeviceConnector$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/DeviceConnector$3;-><init>(Lcom/parrot/freeflight/core/DeviceConnector;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    .line 109
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryUid:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 111
    iput-object p3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .line 112
    iput-object p5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    .line 113
    invoke-virtual {p2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->getWifiUtils()Lcom/parrot/controller/utils/WifiUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    .line 114
    new-instance v0, Lcom/parrot/freeflight/core/DeviceConnector$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/DeviceConnector$1;-><init>(Lcom/parrot/freeflight/core/DeviceConnector;)V

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager;->addOnApplicationVisibilityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/DeviceConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->start()V

    return-void
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectedDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentRemoteCtrlDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/DeviceConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->updateState()V

    return-void
.end method

.method public static isRemoteCtrl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z
    .locals 3
    .param p0, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 345
    if-nez p0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v1

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v0

    .line 349
    .local v0, "productId":I
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v2

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 350
    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v2

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2P:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 351
    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v2

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_NG:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 352
    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v2

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private notifyChanged()V
    .locals 6

    .prologue
    .line 180
    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    .line 181
    .local v0, "listener":Lcom/parrot/freeflight/core/DeviceConnector$IListener;
    iget v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    iget v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mRemoteCtrlState:I

    iget-object v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/parrot/freeflight/core/DeviceConnector$IListener;->onStateChanged(ILcom/parrot/freeflight/user/UserDrone;ILcom/parrot/freeflight/user/UserRemoteCtrl;)V

    goto :goto_0

    .line 183
    .end local v0    # "listener":Lcom/parrot/freeflight/core/DeviceConnector$IListener;
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 158
    iput v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    .line 159
    iput v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mRemoteCtrlState:I

    .line 160
    iput-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    .line 161
    iput-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 162
    iput-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectedDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 163
    iput-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 164
    iput-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentRemoteCtrlDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 165
    return-void
.end method

.method private setupUserDrone()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserSettings;->setCurrentUserDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 358
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserSettings;->getUserDrone()Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    const-string v0, "FF4.DC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but mCurrentDroneDeviceService is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private start()V
    .locals 3

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mStarted:Z

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mStarted:Z

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserSettings;->getUserDrone()Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserSettings;->getUserRemoteCtrl()Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->connect(Ljava/lang/String;Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;)V

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->startWifiDiscovery()V

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->startUsbDiscovery()V

    .line 138
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x5

    .line 186
    sget-object v0, Lcom/parrot/freeflight/core/DeviceConnector$4;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    const-string v0, "FF4.DC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "homeStateChange: droneState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserDrone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \nremoteCtrlState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mRemoteCtrlState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserRemoteCtrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->notifyChanged()V

    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mPreviousConnectedService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v0, :cond_6

    .line 264
    const-string v0, "FF4.DC"

    const-string v1, "Not connected to anything, trying refreshing discovery list to find a new device to connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->stopWifiDiscovery()V

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->startWifiDiscovery()V

    .line 276
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mPreviousConnectedService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 278
    :cond_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-nez v0, :cond_2

    :goto_3
    iput v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mRemoteCtrlState:I

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserSettings;->forgetCurrentUserRemoteCtrl()V

    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserSettings;->getUserRemoteCtrl()Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 188
    goto :goto_2

    :cond_2
    move v1, v2

    .line 189
    goto :goto_3

    .line 197
    :pswitch_1
    iput v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mRemoteCtrlState:I

    .line 200
    :pswitch_2
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->setupUserDrone()V

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentRemoteCtrlDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserSettings;->forgetCurrentUserRemoteCtrl()V

    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserSettings;->getUserRemoteCtrl()Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 205
    :cond_3
    iput v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    goto/16 :goto_0

    .line 209
    :pswitch_3
    iput v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mRemoteCtrlState:I

    .line 213
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->setupUserDrone()V

    .line 215
    :pswitch_4
    iput v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    goto/16 :goto_0

    .line 221
    :pswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentDroneDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mPreviousConnectedService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 224
    :pswitch_6
    iput v6, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    goto/16 :goto_0

    .line 229
    :pswitch_7
    iput v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    .line 231
    :pswitch_8
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentRemoteCtrlDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mCurrentRemoteCtrlDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserSettings;->setCurrentUserRemoteCtrl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserSettings;->getUserRemoteCtrl()Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 237
    :goto_4
    iput v5, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mRemoteCtrlState:I

    goto/16 :goto_0

    .line 235
    :cond_4
    const-string v0, "FF4.DC"

    const-string/jumbo v1, "remote control state is connecting but mCurrentRemoteCtrlDeviceService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 241
    :pswitch_9
    iput v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mRemoteCtrlState:I

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-nez v0, :cond_5

    .line 243
    iput v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    goto/16 :goto_0

    .line 245
    :cond_5
    iput v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    goto/16 :goto_0

    .line 250
    :pswitch_a
    iput v6, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mRemoteCtrlState:I

    goto/16 :goto_0

    .line 272
    :cond_6
    const-string v0, "FF4.DC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previously connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mPreviousConnectedService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but has requested disconnection (switched off) -> don\'t try to reconnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public connectToSsid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/utils/WifiUtils;->connectToSSID(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public forgetNetwork(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/utils/WifiUtils;->forgetNetwork(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onDeviceListUpdated(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    const/4 v1, 0x0

    .line 282
    .local v1, "matchingDeviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    const/4 v3, 0x0

    .line 283
    .local v3, "remoteCtrlDeviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 285
    const-string v4, "FF4.DC"

    const-string/jumbo v5, "onDeviceListUpdated: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 289
    .local v0, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    const-string v5, "FF4.DC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v2

    .line 292
    .local v2, "productId":I
    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v5

    if-eq v2, v5, :cond_1

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 293
    invoke-static {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v5

    if-eq v2, v5, :cond_1

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2P:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 294
    invoke-static {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v5

    if-eq v2, v5, :cond_1

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_NG:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 295
    invoke-static {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 297
    :cond_1
    move-object v3, v0

    goto :goto_0

    .line 300
    .end local v0    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v2    # "productId":I
    :cond_2
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "matchingDeviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 302
    .restart local v1    # "matchingDeviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_3
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectedDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v3, v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 304
    const-string v4, "FF4.DC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found remote ctrl device = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] that is not the same as current = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectedDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->connectDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 313
    :cond_4
    :goto_1
    return-void

    .line 307
    :cond_5
    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectedDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-static {v4}, Lcom/parrot/freeflight/core/DeviceConnector;->isRemoteCtrl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectedDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1, v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 309
    const-string v4, "FF4.DC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found device = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] that is not the same as current = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectedDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v4, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->connectDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    goto :goto_1
.end method

.method public registerListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/freeflight/core/DeviceConnector$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDroneState:I

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    iget v2, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mRemoteCtrlState:I

    iget-object v3, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/parrot/freeflight/core/DeviceConnector$IListener;->onStateChanged(ILcom/parrot/freeflight/user/UserDrone;ILcom/parrot/freeflight/user/UserRemoteCtrl;)V

    .line 154
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mStarted:Z

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mStarted:Z

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mDiscoveryUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->disconnect(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/parrot/freeflight/core/DeviceConnector;->reset()V

    .line 147
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/DeviceConnector$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method
