.class public abstract Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "WifiChannelSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/model/SettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;",
        "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
        "TV;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry<TV;TU;>;"
    const/16 v0, 0x10

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    invoke-direct {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected hasChanged(Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;)Z
    .locals 4
    .param p1, "oldValue"    # Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry<TV;TU;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->getSelectedChannel()Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    move-result-object v1

    .line 18
    .local v1, "channelInfo":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    iget v2, v1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    iget v3, v1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    invoke-virtual {p1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->updateSelectedChannel(II)Z

    move-result v0

    .line 19
    .local v0, "changed":Z
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->getWifiChannelList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->updateWifiChannelList(Ljava/util/List;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 20
    return v0
.end method

.method protected bridge synthetic hasChanged(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    check-cast p2, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;->hasChanged(Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;)Z

    move-result v0

    return v0
.end method
