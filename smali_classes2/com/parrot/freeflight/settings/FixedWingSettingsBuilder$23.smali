.class Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$23;
.super Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;
.source "FixedWingSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;->buildWifiSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry",
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
.method constructor <init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 7
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "firstRadioButtonName"    # Ljava/lang/String;
    .param p4, "secondRadioButtonName"    # Ljava/lang/String;
    .param p5, "thirdRadioButtonName"    # Ljava/lang/String;
    .param p6, "fourthRadioButtonName"    # Ljava/lang/String;
    .param p7, "allow5GHzBand"    # Z

    .prologue
    .line 582
    iput-object p1, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$23;->this$0:Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;

    iput-object p8, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$23;->val$model:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;
    .locals 1
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
    .line 586
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->getWifiBandState()Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

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
    .line 582
    check-cast p1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$23;->readValue(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    move-result-object v0

    return-object v0
.end method

.method public restartNetworkScan()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$23;->val$model:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->restartNetworkScan()V

    .line 597
    return-void
.end method

.method public sendValue(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 591
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$23;->val$model:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->setWifiBandType(I)V

    .line 592
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 582
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$23;->sendValue(Ljava/lang/Integer;)V

    return-void
.end method

.method public setWifiChannel(II)V
    .locals 1
    .param p1, "band"    # I
    .param p2, "channel"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$23;->val$model:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->setWifiChannel(II)V

    .line 602
    return-void
.end method
