.class Lcom/parrot/freeflight/settings/BebopSettingsBuilder$1;
.super Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;
.source "BebopSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/BebopSettingsBuilder;->buildPilotingSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/BebopSettingsBuilder;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/BebopSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/BebopSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bebopModel"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .param p4, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
    .param p5, "presetsPreference"    # Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/settings/BebopSettingsBuilder$1;->this$0:Lcom/parrot/freeflight/settings/BebopSettingsBuilder;

    iput-object p6, p0, Lcom/parrot/freeflight/settings/BebopSettingsBuilder$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/parrot/freeflight/settings/model/PilotingSettingsEntry;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model2"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/BebopSettingsBuilder$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;-><init>(Landroid/content/Context;)V

    return-object v0
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
    .line 34
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/BebopSettingsBuilder$1;->readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reset(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/BebopSettingsBuilder$1;->reset(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    return-void
.end method

.method public reset(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 3
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model2"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getPresetModePreference()Lcom/parrot/freeflight/piloting/preference/PresetModePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/PresetModePreference;->getPresetMode()I

    move-result v0

    .line 49
    .local v0, "presetMode":I
    packed-switch v0, :pswitch_data_0

    .line 52
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getBebopFilmPresetsPreferences()Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;->reset()V

    .line 57
    :goto_0
    new-instance v1, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/BebopSettingsBuilder$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;-><init>(Landroid/content/Context;)V

    check-cast p1, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .end local p1    # "model":Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    invoke-static {v0, v1, p1}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->applyValues(ILcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;)V

    .line 58
    return-void

    .line 55
    .restart local p1    # "model":Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
    :pswitch_0
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getBebopRacingPresetsPreferences()Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;->reset()V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public sendValue(Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)V
    .locals 0
    .param p1, "newValue"    # Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    check-cast p1, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/BebopSettingsBuilder$1;->sendValue(Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)V

    return-void
.end method
