.class public abstract Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "WifiLocalisationSettingsEntry.java"


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
        "Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;",
        "Lcom/parrot/freeflight/piloting/model/WifiCountry;",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field private final mCheckboxName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkboxName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry<TV;TU;>;"
    const/16 v0, 0xc

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-direct {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 16
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;->mCheckboxName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getCheckboxName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;->mCheckboxName:Ljava/lang/String;

    return-object v0
.end method

.method protected hasChanged(Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;)Z
    .locals 2
    .param p1, "oldValue"    # Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry<TV;TU;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->getWifiCountry()Lcom/parrot/freeflight/piloting/model/WifiCountry;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateWifiCountryId(Lcom/parrot/freeflight/piloting/model/WifiCountry;)Z

    move-result v0

    .line 23
    .local v0, "updated":Z
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->isInOutdoorMode()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateOutdoorMode(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 24
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->isSettingEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateAvailability(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 25
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->isInAutoCountryMode()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->updateWifiAutoCountryMode(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 26
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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    check-cast p2, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;->hasChanged(Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;)Z

    move-result v0

    return v0
.end method

.method public sendOutdoorMode(Z)V
    .locals 0
    .param p1, "outdoorMode"    # Z

    .prologue
    .line 35
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry<TV;TU;>;"
    return-void
.end method
