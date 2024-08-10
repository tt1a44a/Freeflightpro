.class Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$17;
.super Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;
.source "QuadcopterSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;->buildNetworkSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry",
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
.method constructor <init>(Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "checkboxName"    # Ljava/lang/String;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$17;->this$0:Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder;

    iput-object p4, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$17;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-direct {p0, p2, p3}, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;
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
    .line 472
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getWifiNameState()Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

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
    .line 468
    check-cast p1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$17;->readValue(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    move-result-object v0

    return-object v0
.end method

.method public sendPassphraseValue(ILjava/lang/String;)V
    .locals 1
    .param p1, "wifiSecurity"    # I
    .param p2, "newValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 482
    iget-object v0, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$17;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setWifiSecurity(ILjava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$17;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->getFlyingState()I

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$17;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->reboot()V

    .line 486
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
    .line 468
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$17;->sendValue(Ljava/lang/String;)V

    return-void
.end method

.method public sendValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 477
    iget-object v0, p0, Lcom/parrot/freeflight/settings/QuadcopterSettingsBuilder$17;->val$model:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setName(Ljava/lang/String;)V

    .line 478
    return-void
.end method
