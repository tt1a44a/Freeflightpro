.class public Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;
.super Ljava/lang/Object;
.source "WifiLocalisationState.java"


# instance fields
.field private mAutoCountry:Z

.field private mIsInOutdoorMode:Z

.field private mSettingEnabled:Z

.field private mWifiCountry:Lcom/parrot/freeflight/piloting/model/WifiCountry;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/parrot/freeflight/piloting/model/WifiCountry;->WIFI_COUNTRY_UNKNOWN:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mWifiCountry:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    return-void
.end method


# virtual methods
.method public getWifiCountry()Lcom/parrot/freeflight/piloting/model/WifiCountry;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mWifiCountry:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    return-object v0
.end method

.method public isInAutoCountryMode()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mAutoCountry:Z

    return v0
.end method

.method public isInOutdoorMode()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mIsInOutdoorMode:Z

    return v0
.end method

.method public isSettingEnabled()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mSettingEnabled:Z

    return v0
.end method

.method public updateAvailability(Z)Z
    .locals 1
    .param p1, "settingEnabled"    # Z

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mSettingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 33
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mSettingEnabled:Z

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateOutdoorMode(Z)Z
    .locals 1
    .param p1, "outdoorMode"    # Z

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mIsInOutdoorMode:Z

    if-eq v0, p1, :cond_0

    .line 25
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mIsInOutdoorMode:Z

    .line 26
    const/4 v0, 0x1

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateWifiAutoCountryMode(Z)Z
    .locals 1
    .param p1, "autoCountry"    # Z

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mAutoCountry:Z

    if-eq v0, p1, :cond_0

    .line 41
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mAutoCountry:Z

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateWifiCountryId(Lcom/parrot/freeflight/piloting/model/WifiCountry;)Z
    .locals 1
    .param p1, "wifiCountry"    # Lcom/parrot/freeflight/piloting/model/WifiCountry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mWifiCountry:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    if-eq v0, p1, :cond_0

    .line 17
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->mWifiCountry:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    .line 18
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
