.class Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$4;
.super Landroid/content/BroadcastReceiver;
.source "QuadcopterModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$4;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1577
    const-string v0, "DeviceControllerFlightPlanEventSpeedBridleEventNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$4;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$1600(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$4;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$1700(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;)Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;->onSpeedBridle()V

    .line 1580
    :cond_0
    return-void
.end method
