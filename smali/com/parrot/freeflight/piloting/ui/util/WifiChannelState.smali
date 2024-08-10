.class public Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;
.super Ljava/lang/Object;
.source "WifiChannelState.java"


# instance fields
.field private mSelectedChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWifiChannelList:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;-><init>(II)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mSelectedChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mWifiChannelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addWifiChannel(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;)V
    .locals 1
    .param p1, "wifiChannel"    # Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mWifiChannelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public getSelectedChannel()Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mSelectedChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mWifiChannelList:Ljava/util/List;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mSelectedChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getWifiChannelList()Ljava/util/List;
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
    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mWifiChannelList:Ljava/util/List;

    return-object v0
.end method

.method public updateSelectedChannel(II)Z
    .locals 1
    .param p1, "band"    # I
    .param p2, "channel"    # I

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mSelectedChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    iget v0, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mSelectedChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    iget v0, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    if-eq v0, p2, :cond_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mSelectedChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    iput p1, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mSelectedChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    iput p2, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    .line 20
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateWifiChannelList(Ljava/util/List;)Z
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
    .line 26
    .local p1, "channelList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mWifiChannelList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->listsDiffer(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mWifiChannelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->mWifiChannelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
