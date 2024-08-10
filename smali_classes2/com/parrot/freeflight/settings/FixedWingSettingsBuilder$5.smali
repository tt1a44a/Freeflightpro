.class Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$5;
.super Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;
.source "FixedWingSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;->buildPilotingSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;

.field final synthetic val$model:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$5;->this$0:Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;

    iput-object p3, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$5;->val$model:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-direct {p0, p2}, Lcom/parrot/freeflight/settings/model/PitchModeSettingsEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
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
    .line 187
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getPitchModeState()Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

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
    .line 183
    check-cast p1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$5;->readValue(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

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
    .line 183
    check-cast p1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$5;->reset(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    return-void
.end method

.method public reset(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model2"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    sget-object v0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingPreset;->PITCH_MODE_STATE:Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/PitchModeState;->getPitchMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->setPitchMode(I)V

    .line 198
    return-void
.end method

.method public sendValue(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$5;->val$model:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->setPitchMode(I)V

    .line 193
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$5;->sendValue(Ljava/lang/Integer;)V

    return-void
.end method
