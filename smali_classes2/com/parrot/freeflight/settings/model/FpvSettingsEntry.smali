.class public Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "FpvSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/model/SettingsEntry",
        "<",
        "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;",
        "Ljava/lang/Void;",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field private final mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    .local p0, "this":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;, "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry<TV;TU;>;"
    const/16 v0, 0x16

    new-instance v1, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;-><init>(Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$1;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    .line 22
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 23
    return-void
.end method


# virtual methods
.method protected hasChanged(Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;)Z
    .locals 1
    .param p1, "oldValue"    # Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    .local p0, "this":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;, "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry<TV;TU;>;"
    invoke-static {p1, p2}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;->access$200(Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;)Z

    move-result v0

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
    .line 12
    .local p0, "this":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;, "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;

    check-cast p2, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->hasChanged(Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;)Z

    move-result v0

    return v0
.end method

.method protected readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;
    .locals 8
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TU;)",
            "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;, "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry<TV;TU;>;"
    .local p1, "model":Lcom/parrot/freeflight/core/model/Model;, "TV;"
    .local p2, "model2":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v6

    .line 34
    .local v6, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {v6}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v4

    .line 35
    .local v2, "eyesCalibrationEnabled":Z
    :goto_0
    new-instance v0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->isFpvAutoLaunchEnabled()Z

    move-result v1

    iget-object v3, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->getGlassesType()I

    move-result v3

    iget-object v7, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    .line 36
    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->isFpvEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;-><init>(ZZIZLcom/parrot/freeflight/settings/model/FpvSettingsEntry$1;)V

    .line 35
    return-object v0

    .end local v2    # "eyesCalibrationEnabled":Z
    :cond_0
    move v2, v5

    .line 34
    goto :goto_0

    .restart local v2    # "eyesCalibrationEnabled":Z
    :cond_1
    move v4, v5

    .line 36
    goto :goto_1
.end method

.method protected bridge synthetic readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;, "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry<TV;TU;>;"
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/settings/model/FpvSettingsEntry$FpvState;

    move-result-object v0

    return-object v0
.end method

.method public reset(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)V
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TU;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;, "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry<TV;TU;>;"
    .local p1, "model":Lcom/parrot/freeflight/core/model/Model;, "TV;"
    .local p2, "model2":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->reset()V

    .line 28
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    .local p0, "this":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;, "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry<TV;TU;>;"
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->sendValue(Ljava/lang/Void;)V

    return-void
.end method

.method public sendValue(Ljava/lang/Void;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/Void;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    .local p0, "this":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;, "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry<TV;TU;>;"
    return-void
.end method

.method public setAutoLaunchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 50
    .local p0, "this":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;, "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->setFpvAutoLaunchEnabled(Z)V

    .line 51
    return-void
.end method

.method public setGlassesType(I)V
    .locals 1
    .param p1, "glassesType"    # I

    .prologue
    .line 54
    .local p0, "this":Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;, "Lcom/parrot/freeflight/settings/model/FpvSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;->setGlassesType(I)V

    .line 55
    return-void
.end method
