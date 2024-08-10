.class Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;
.super Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;
.source "QuadcopterSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->buildVideoSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;

.field final synthetic val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "leftButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    .param p4, "rightButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    .param p5, "description"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;->this$0:Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;

    iput-object p6, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/lang/Integer;
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
    .line 352
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getVideoResolutions()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 343
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;->readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/lang/Integer;

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
    .line 343
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;->reset(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    return-void
.end method

.method public reset(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model2"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setVideoResolutions(I)V

    .line 363
    return-void
.end method

.method public sendValue(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setVideoResolutions(I)V

    .line 358
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 343
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;->sendValue(Ljava/lang/Integer;)V

    return-void
.end method

.method protected updateVisibility()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->isOnTheGround()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getMediaRecordingState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$12;->setEnabled(Z)V

    .line 347
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
