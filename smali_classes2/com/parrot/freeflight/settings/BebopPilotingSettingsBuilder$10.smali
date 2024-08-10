.class Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;
.super Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;
.source "BebopPilotingSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;->buildPilotingRacingEntries(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;

.field final synthetic val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

.field final synthetic val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

.field final synthetic val$presetsValues:Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "leftStateName"    # Ljava/lang/String;
    .param p4, "rightStateName"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->this$0:Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;

    iput-object p5, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->val$presetsValues:Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    iput-object p6, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    iput-object p7, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-direct {p0, p2, p3, p4}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "settingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getBankedTurnedState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

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
    .line 266
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/util/ToggleState;

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
    .line 266
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->reset(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

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
    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->val$presetsValues:Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->getRacingPresetsPreference()Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;->setBankedTurn(Z)V

    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->this$0:Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;->access$100(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setBankTurn(Z)V

    .line 285
    :cond_0
    return-void
.end method

.method public sendValue(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 275
    iget-object v0, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->val$presetsValues:Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->getRacingPresetsPreference()Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/BebopRacingPresetsPreference;->setBankedTurn(Z)V

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setBankTurn(Z)V

    .line 277
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 266
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$10;->sendValue(Ljava/lang/Boolean;)V

    return-void
.end method
