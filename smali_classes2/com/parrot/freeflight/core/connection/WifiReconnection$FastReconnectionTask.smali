.class Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;
.super Ljava/util/TimerTask;
.source "WifiReconnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/connection/WifiReconnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastReconnectionTask"
.end annotation


# instance fields
.field private mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSSID:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private reconnectionAlreadyDone:Z


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/utils/WifiUtils;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wifiUtils"    # Lcom/parrot/controller/utils/WifiUtils;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "savedSSID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 99
    iput-object p2, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    .line 100
    iput-object p3, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mSSID:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    .line 103
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_NET:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v1, v2, :cond_4

    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    invoke-virtual {v1}, Lcom/parrot/controller/utils/WifiUtils;->getCurrentWifiSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "requiredSsidConnected":Z
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parrot/controller/utils/WifiUtils;->connectToSSIDIfAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    const-string v1, "FF4.Connect.Fast"

    const-string v2, "Fast reconnection while on wrong network : unable to change network"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    if-eqz v0, :cond_0

    .line 119
    iput-boolean v4, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->reconnectionAlreadyDone:Z

    .line 135
    .end local v0    # "requiredSsidConnected":Z
    :cond_0
    :goto_1
    return-void

    .line 112
    .restart local v0    # "requiredSsidConnected":Z
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    invoke-virtual {v1}, Lcom/parrot/controller/utils/WifiUtils;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    const-string v1, "FF4.Connect.Fast"

    const-string v2, "Selected SSID is correct but wifi is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "requiredSsidConnected":Z
    :cond_3
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->reconnectionAlreadyDone:Z

    if-nez v1, :cond_0

    .line 122
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->reconnectionAlreadyDone:Z

    .line 123
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;->ARDISCOVERY_NETWORK_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    if-ne v1, v2, :cond_5

    .line 126
    const-string v1, "FF4.Connect.Fast"

    const-string v2, "Fast reconnection on BLE network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->reconnectionAlreadyDone:Z

    if-nez v1, :cond_0

    .line 128
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->reconnectionAlreadyDone:Z

    .line 129
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 132
    :cond_5
    const-string v1, "FF4.Connect.Fast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fast reconnection on unknown network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->mNetworkType:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setReconnectionAlreadyDone(Z)V
    .locals 0
    .param p1, "reconnectionAlreadyDone"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->reconnectionAlreadyDone:Z

    .line 139
    return-void
.end method
