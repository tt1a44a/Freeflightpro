.class Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$5;
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
    .line 1583
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$5;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1586
    const-string v0, "ARDrone3DeviceControllerMediaRecordEventPictureEventChangedNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1587
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$5;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$1800(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Landroid/os/Bundle;)V

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1588
    :cond_1
    const-string v0, "ARDrone3DeviceControllerMediaRecordEventVideoEventChangedNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$5;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$1900(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Landroid/os/Bundle;)V

    goto :goto_0
.end method
