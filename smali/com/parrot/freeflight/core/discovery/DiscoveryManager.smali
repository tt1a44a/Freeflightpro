.class public Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;,
        Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;,
        Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;
    }
.end annotation


# instance fields
.field private mBLEDiscovering:Z

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDevices:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscovering:Z

.field private final mDiscoveryConnection:Landroid/content/ServiceConnection;

.field private mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnDeviceListUpdated:Landroid/content/BroadcastReceiver;

.field private final mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScreenConfigurationListener:Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;

.field private mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUsbDiscovering:Z

.field private mWifiAvailable:Z

.field private mWifiDiscovering:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/ScreenConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "screenConfiguration"    # Lcom/parrot/freeflight/core/ScreenConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDevices:Ljava/util/List;

    .line 343
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$1;-><init>(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfigurationListener:Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;

    .line 360
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$2;-><init>(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mOnDeviceListUpdated:Landroid/content/BroadcastReceiver;

    .line 370
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;-><init>(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryConnection:Landroid/content/ServiceConnection;

    .line 75
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfigurationListener:Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/ScreenConfiguration;->registerListener(Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDevices:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->notifyChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiAvailable:Z

    return v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    return v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    return v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    return v0
.end method

.method private doConnect()V
    .locals 5

    .prologue
    .line 229
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 231
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 232
    .local v0, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mOnDeviceListUpdated:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "kARDiscoveryServiceNotificationServicesDevicesListUpdated"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 234
    return-void
.end method

.method private doDisconnect()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 266
    .local v0, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mOnDeviceListUpdated:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 269
    return-void
.end method

.method private doStartDiscovering()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    if-eqz v0, :cond_2

    .line 238
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->startWifiDiscovering()V

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->startBLEDiscovering()V

    .line 244
    :cond_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->startUsbDiscovering()V

    .line 248
    :cond_2
    return-void
.end method

.method private doStopDiscovering()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    if-eqz v0, :cond_2

    .line 252
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->stopBLEDiscovering()V

    .line 255
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->stopWifiDiscovering()V

    .line 258
    :cond_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    if-nez v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->stopUsbDiscovering()V

    .line 262
    :cond_2
    return-void
.end method

.method private notifyChanged()V
    .locals 5

    .prologue
    .line 351
    iget-object v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 352
    .local v2, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 353
    .local v1, "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

    .line 354
    .local v0, "listener":Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;
    if-eqz v0, :cond_0

    .line 355
    iget-object v4, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDevices:Ljava/util/List;

    invoke-interface {v0, v4}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;->onChanged(Ljava/util/List;)V

    goto :goto_0

    .line 358
    .end local v0    # "listener":Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;
    .end local v1    # "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;>;"
    :cond_1
    return-void
.end method

.method private runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V
    .locals 4
    .param p1, "event"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$State:[I

    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 91
    :pswitch_1
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 93
    :pswitch_2
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 95
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/ScreenConfiguration;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doConnect()V

    .line 97
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 99
    const-string v0, "FF4.Discovery"

    const-string v1, "discovery service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->SHOULD_CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 104
    const-string v0, "FF4.Discovery"

    const-string v1, "Cannot connect discovery because screen is off. Waiting for screen on to connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :pswitch_4
    const-string v0, "FF4.Discovery"

    const-string v1, "discovery already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :pswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    const-string v0, "FF4.Discovery"

    const-string v1, "Receiving SCREEN_ON while state is IDLE but there are listener so start discovery service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doConnect()V

    .line 120
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 122
    const-string v0, "FF4.Discovery"

    const-string v1, "discovery service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :pswitch_6
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 135
    :pswitch_7
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 137
    :pswitch_8
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/ScreenConfiguration;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doConnect()V

    .line 139
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 141
    const-string v0, "FF4.Discovery"

    const-string v1, "discovery service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_2
    const-string v0, "FF4.Discovery"

    const-string v1, "Cannot connect discovery because screen is off. Already waiting for screen on to connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 151
    :pswitch_9
    const-string v0, "FF4.Discovery"

    const-string/jumbo v1, "receiving screen on and should connect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doConnect()V

    .line 154
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 156
    const-string v0, "FF4.Discovery"

    const-string v1, "discovery service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    :pswitch_a
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 165
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    goto/16 :goto_0

    .line 173
    :pswitch_b
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    :pswitch_c
    goto/16 :goto_0

    .line 175
    :pswitch_d
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 176
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doStartDiscovering()V

    goto/16 :goto_0

    .line 179
    :pswitch_e
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 180
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doStopDiscovering()V

    goto/16 :goto_0

    .line 183
    :pswitch_f
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 185
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 186
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 187
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 188
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doStopDiscovering()V

    .line 189
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doDisconnect()V

    .line 190
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 192
    const-string v0, "FF4.Discovery"

    const-string v1, "discovery service stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 196
    :cond_3
    const-string v0, "FF4.Discovery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot disconnect discovery because screen is on and there are still some listeners : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 202
    :pswitch_10
    const-string v0, "FF4.Discovery"

    const-string/jumbo v1, "receiving screen off while connected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doStopDiscovering()V

    .line 205
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doDisconnect()V

    .line 206
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 208
    const-string v0, "FF4.Discovery"

    const-string v1, "discovery service stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 213
    :pswitch_11
    const-string v0, "FF4.Discovery"

    const-string v1, "discovery already connected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->notifyChanged()V

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_b
    .end packed-switch

    .line 91
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 133
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_0
    .end packed-switch

    .line 173
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 308
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 309
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 310
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 311
    return-void
.end method

.method public connect(Ljava/lang/String;Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 273
    const-string v0, "FF4.Discovery"

    const-string v1, "ask for connecting discovery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 279
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    const-string v0, "FF4.Discovery"

    const-string v1, "ask for disconnecting discovery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->DISCONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 289
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 293
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 294
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 295
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 296
    return-void
.end method

.method public startBLEDiscovery()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 315
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 316
    return-void
.end method

.method public startUsbDiscovery()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 325
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 326
    return-void
.end method

.method public startWifiDiscovery()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 320
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 321
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 300
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 301
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 302
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 303
    return-void
.end method

.method public stopBLEDiscovery()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 330
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 331
    return-void
.end method

.method public stopUsbDiscovery()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 340
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 341
    return-void
.end method

.method public stopWifiDiscovery()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 335
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 336
    return-void
.end method

.method public wifiAvailable(Z)V
    .locals 2
    .param p1, "wifiAvailable"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiAvailable:Z

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    iget-boolean v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiAvailable:Z

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiAvailable(Z)V

    .line 86
    :cond_0
    return-void
.end method
