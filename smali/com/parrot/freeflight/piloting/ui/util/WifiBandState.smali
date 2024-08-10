.class public Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;
.super Ljava/lang/Object;
.source "WifiBandState.java"


# instance fields
.field private mBand:I

.field private mChannel:I

.field private mScanning:Z

.field private mSettingEnabled:Z

.field private mWifiBandAuth:I

.field private mWifiBandAuthList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiScanList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiBandAuth:I

    .line 16
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mBand:I

    .line 18
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mSettingEnabled:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiBandAuthList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiScanList:Ljava/util/List;

    .line 23
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mScanning:Z

    return-void
.end method

.method public static listsDiffer(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .param p0, "wifiBandAuthList1"    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "wifiBandAuthList2"    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 99
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getWifiBand()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mBand:I

    return v0
.end method

.method public getWifiBandAuthList()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiBandAuthList:Ljava/util/List;

    return-object v0
.end method

.method public getWifiChannel()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mChannel:I

    return v0
.end method

.method public getWifiChannelInfo()Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiBandAuthList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 118
    .local v0, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    iget v2, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mChannel:I

    if-ne v2, v3, :cond_0

    .line 122
    .end local v0    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWifiScanList()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiScanList:Ljava/util/List;

    return-object v0
.end method

.method public getWifiType()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiBandAuth:I

    return v0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mScanning:Z

    return v0
.end method

.method public isSettingEnabled()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mSettingEnabled:Z

    return v0
.end method

.method public setScanningState(Z)V
    .locals 0
    .param p1, "scanning"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mScanning:Z

    .line 78
    return-void
.end method

.method public updateAuthorizedWifiBandList(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "wifiBandAuthList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiBandAuthList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->listsDiffer(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiBandAuthList:Ljava/util/List;

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAvailability(Z)Z
    .locals 1
    .param p1, "settingEnabled"    # Z

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mSettingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 70
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mSettingEnabled:Z

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateWifiBand(I)Z
    .locals 2
    .param p1, "band"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "updated":Z
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mBand:I

    if-eq p1, v1, :cond_0

    .line 37
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mBand:I

    .line 38
    const/4 v0, 0x1

    .line 40
    :cond_0
    return v0
.end method

.method public updateWifiChannel(I)Z
    .locals 2
    .param p1, "channel"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "updated":Z
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mChannel:I

    if-eq p1, v1, :cond_0

    .line 46
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mChannel:I

    .line 47
    const/4 v0, 0x1

    .line 49
    :cond_0
    return v0
.end method

.method public updateWifiScanList(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "wifiScanList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiScanList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->listsDiffer(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiScanList:Ljava/util/List;

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateWifiType(I)Z
    .locals 1
    .param p1, "wifiBandAuth"    # I

    .prologue
    .line 27
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiBandAuth:I

    if-eq v0, p1, :cond_0

    .line 28
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->mWifiBandAuth:I

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
