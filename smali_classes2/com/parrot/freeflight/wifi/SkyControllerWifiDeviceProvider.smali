.class public Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;
.super Ljava/lang/Object;
.source "SkyControllerWifiDeviceProvider.java"

# interfaces
.implements Lcom/parrot/freeflight/wifi/WifiDeviceProvider;


# instance fields
.field private final mListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private final mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWifiDeviceListener:Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 1
    .param p1, "skyControllerModel"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$1;-><init>(Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;)V

    iput-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 20
    iput-object p1, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;)Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mWifiDeviceListener:Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;

    return-object v0
.end method


# virtual methods
.method public getCleanedSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 41
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 45
    :cond_0
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 49
    :cond_1
    return-object p1
.end method

.method public getCurrentSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getCurrentDroneSsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDroneComparator()Ljava/util/Comparator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$2;-><init>(Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;)V

    return-object v0
.end method

.method public getWifiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getDroneConnectionInfoList()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public mergeSsid()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 84
    iget-object v2, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getType()I

    move-result v0

    .line 85
    .local v0, "type":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeWifiListListener()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mWifiDeviceListener:Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 75
    return-void
.end method

.method public setWifiListListener(Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mWifiDeviceListener:Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 57
    return-void
.end method

.method public startScan()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->mSkyControllerModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->requestDroneList()V

    .line 26
    return-void
.end method
