.class public abstract Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "WifiNameSettingsEntry.java"


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
        "Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;",
        "Ljava/lang/String;",
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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry<TV;TU;>;"
    const/16 v0, 0xb

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    invoke-direct {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 16
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;->mCheckboxName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getCheckboxName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;->mCheckboxName:Ljava/lang/String;

    return-object v0
.end method

.method protected hasChanged(Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;)Z
    .locals 2
    .param p1, "oldValue"    # Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry<TV;TU;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->getWifiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateWifiName(Ljava/lang/String;)Z

    move-result v0

    .line 22
    .local v0, "hasChanged":Z
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->getWifiSecurity()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateWifiSecurity(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 23
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->getWifiWpa2Password()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateWpa2Passphrase(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 24
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->isSettingEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->updateAvailability(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 25
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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    check-cast p2, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;->hasChanged(Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;)Z

    move-result v0

    return v0
.end method

.method public sendPassphraseValue(ILjava/lang/String;)V
    .locals 0
    .param p1, "wifiSecurity"    # I
    .param p2, "passPhrase"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    .local p0, "this":Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry<TV;TU;>;"
    return-void
.end method
