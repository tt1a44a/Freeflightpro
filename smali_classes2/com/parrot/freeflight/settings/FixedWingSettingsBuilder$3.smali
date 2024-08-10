.class Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$3;
.super Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;
.source "FixedWingSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;->buildInterfaceSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;

.field final synthetic val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "leftStateName"    # Ljava/lang/String;
    .param p4, "rightStateName"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$3;->this$0:Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;

    iput-object p5, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$3;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-direct {p0, p2, p3, p4}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/util/ToggleState;
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
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
    .line 145
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$3;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getInterfacePreference()Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getHandLaunchEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ToggleState;->createFromValue(ZZ)Lcom/parrot/freeflight/util/ToggleState;

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
    .line 141
    check-cast p1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$3;->readValue(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/util/ToggleState;

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
    .line 141
    check-cast p1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$3;->reset(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    return-void
.end method

.method public reset(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model2"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$3;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getInterfacePreference()Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->setHandLaunchEnabled(Z)V

    .line 156
    return-void
.end method

.method public sendValue(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$3;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getInterfacePreference()Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->setHandLaunchEnabled(Z)V

    .line 151
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$3;->sendValue(Ljava/lang/Boolean;)V

    return-void
.end method
