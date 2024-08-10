.class public abstract Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "WifiBandSettingsEntry.java"


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
        "Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;",
        "Ljava/lang/Integer;",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field private final m5GHzBandAllowed:Z

.field private final mFirstRadioButtonName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFourthRadioButtonName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondRadioButtonName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mThirdRadioButtonName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "firstRadioButtonName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "secondRadioButtonName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "thirdRadioButtonName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "fourthRadioButtonName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "allow5GHzBand"    # Z

    .prologue
    .line 26
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry<TV;TU;>;"
    const/16 v0, 0xd

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-direct {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 27
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->mFirstRadioButtonName:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->mSecondRadioButtonName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->mThirdRadioButtonName:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->mFourthRadioButtonName:Ljava/lang/String;

    .line 31
    iput-boolean p6, p0, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->m5GHzBandAllowed:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getFirstRadioButtonName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->mFirstRadioButtonName:Ljava/lang/String;

    return-object v0
.end method

.method public getFourthRadioButtonName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->mFourthRadioButtonName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondRadioButtonName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->mSecondRadioButtonName:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdRadioButtonName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->mThirdRadioButtonName:Ljava/lang/String;

    return-object v0
.end method

.method protected hasChanged(Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;)Z
    .locals 3
    .param p1, "oldValue"    # Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry<TV;TU;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiType()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiType(I)Z

    move-result v0

    .line 37
    .local v0, "hasChanged":Z
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiBand()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiBand(I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 38
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiChannel()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiChannel(I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 39
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiBandAuthList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateAuthorizedWifiBandList(Ljava/util/List;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 40
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->isSettingEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateAvailability(Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 41
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiScanList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->updateWifiScanList(Ljava/util/List;)Z

    move-result v1

    .line 42
    .local v1, "hasScanListChanged":Z
    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiScanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->isScanning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->restartNetworkScan()V

    .line 45
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
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
    .line 8
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    check-cast p2, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->hasChanged(Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;)Z

    move-result v0

    return v0
.end method

.method public is5GHzBandAllowed()Z
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry<TV;TU;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->m5GHzBandAllowed:Z

    return v0
.end method

.method public restartNetworkScan()V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry<TV;TU;>;"
    return-void
.end method

.method public setWifiChannel(II)V
    .locals 0
    .param p1, "band"    # I
    .param p2, "channel"    # I

    .prologue
    .line 70
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry<TV;TU;>;"
    return-void
.end method
