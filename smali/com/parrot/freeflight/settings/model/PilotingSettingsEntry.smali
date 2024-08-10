.class public abstract Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "PilotingSettingsEntry.java"


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
        "Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;",
        "Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field private mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

.field private mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

.field private mPresetMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bebopModel"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .param p3, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    .param p4, "presetsPreference"    # Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    .local p0, "this":Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry<TV;TU;>;"
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1, p4}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 22
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 23
    iput-object p3, p0, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    .line 24
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getPresetMode()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->mPresetMode:I

    .line 25
    return-void
.end method

.method private getPresetMode()I
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getPresetModePreference()Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getPresetMode()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getBebopModel()Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->mBebopModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    return-object v0
.end method

.method public getLocalSettingsModel()Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->mLocalSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    return-object v0
.end method

.method protected hasChanged(Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)Z
    .locals 2
    .param p1, "oldValue"    # Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    .local p0, "this":Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry<TV;TU;>;"
    invoke-virtual {p1, p2}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->mPresetMode:I

    invoke-direct {p0}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getPresetMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 30
    :cond_0
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->mValue:Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->getPresetMode()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->mPresetMode:I

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

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
    .line 10
    .local p0, "this":Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;, "Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    check-cast p2, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;->hasChanged(Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)Z

    move-result v0

    return v0
.end method
