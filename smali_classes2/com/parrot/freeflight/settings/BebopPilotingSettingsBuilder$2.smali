.class Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;
.super Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;
.source "BebopPilotingSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;->buildPilotingFilmEntries(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry",
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
.method constructor <init>(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DLcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "unit"    # Ljava/lang/String;
    .param p4, "step"    # D

    .prologue
    .line 56
    iput-object p1, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->this$0:Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;

    iput-object p6, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->val$presetsValues:Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    iput-object p7, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    iput-object p8, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/parrot/freeflight/settings/model/BoundedRecommendedStateSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;
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
    .line 60
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getBebopFilmPresetsPreferences()Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;->getMaxTiltSpeedData(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

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
    .line 56
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/util/DoubleBoundedRecommendedState;

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
    .line 56
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->reset(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    return-void
.end method

.method public reset(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model2"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->val$presetsValues:Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->getFilmPresetsPreference()Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;->setMaxTiltSpeed(F)V

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->this$0:Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;->access$000(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    invoke-virtual {p1, v0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setMaxPitchSpeed(D)V

    .line 77
    :cond_0
    return-void
.end method

.method public sendValue(Ljava/lang/Double;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->val$presetsValues:Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/BebopPilotingPresetsValues;->getFilmPresetsPreference()Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/BebopFilmMakingPresetsPreference;->setMaxTiltSpeed(F)V

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->this$0:Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;->access$000(Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setMaxPitchSpeed(D)V

    .line 69
    :cond_0
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/BebopPilotingSettingsBuilder$2;->sendValue(Ljava/lang/Double;)V

    return-void
.end method
