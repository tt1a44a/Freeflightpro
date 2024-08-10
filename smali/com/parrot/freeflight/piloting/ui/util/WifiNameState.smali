.class public Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;
.super Ljava/lang/Object;
.source "WifiNameState.java"


# instance fields
.field private mSettingEnabled:Z

.field private mWifiName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWifiSecurity:I

.field private mWifiWpa2Password:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiSecurity:I

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mSettingEnabled:Z

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiWpa2Password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getWifiName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiName:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSecurity()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiSecurity:I

    return v0
.end method

.method public getWifiWpa2Password()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiWpa2Password:Ljava/lang/String;

    return-object v0
.end method

.method public isSettingEnabled()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mSettingEnabled:Z

    return v0
.end method

.method public updateAvailability(Z)Z
    .locals 1
    .param p1, "settingEnabled"    # Z

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mSettingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 46
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mSettingEnabled:Z

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateWifiName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "wifiName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiName:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateWifiSecurity(I)Z
    .locals 1
    .param p1, "wifiSecurity"    # I

    .prologue
    .line 37
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiSecurity:I

    if-eq v0, p1, :cond_0

    .line 38
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiSecurity:I

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateWpa2Passphrase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "wpa2Password"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiWpa2Password:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->mWifiWpa2Password:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
