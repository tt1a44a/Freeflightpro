.class Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$3;
.super Landroid/content/BroadcastReceiver;
.source "FixedWingModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$3;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1200
    const-string v0, "DeviceControllerFlightPlanEventSpeedBridleEventNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$3;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$1500(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$3;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$1600(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;->onSpeedBridle()V

    .line 1203
    :cond_0
    return-void
.end method
