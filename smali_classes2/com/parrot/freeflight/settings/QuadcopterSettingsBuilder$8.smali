.class Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$8;
.super Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;
.source "QuadcopterSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->buildSafetySettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;

.field final synthetic val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;DZLcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 8
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "unit"    # Ljava/lang/String;
    .param p4, "step"    # D
    .param p6, "exponentialValue"    # Z

    .prologue
    .line 242
    iput-object p1, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$8;->this$0:Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;

    iput-object p7, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$8;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;DZ)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 10
    .param p1, "QuadcopterModel"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
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
    .line 247
    iget-object v6, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$8;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getSafetyPreference()Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->getMaxAltitude()F

    move-result v6

    float-to-double v6, v6

    .line 248
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v8

    .line 247
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 249
    .local v2, "effectiveMaxAltitude":D
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v0

    .line 250
    .local v0, "minBound":D
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v4

    .line 251
    .local v4, "maxBound":D
    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v6

    return-object v6
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
    .line 242
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$8;->readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/util/DoubleBoundedState;

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
    .line 242
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$8;->reset(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    return-void
.end method

.method public reset(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 4
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model2"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$8;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getSafetyPreference()Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMaxAltitudePreset()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->setMaxAltitude(F)V

    .line 262
    return-void
.end method

.method public sendValue(Ljava/lang/Double;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$8;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getSafetyPreference()Lcom/parrot/freeflight/piloting/preference/SafetyPreference;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/SafetyPreference;->setMaxAltitude(F)V

    .line 257
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 242
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$8;->sendValue(Ljava/lang/Double;)V

    return-void
.end method
