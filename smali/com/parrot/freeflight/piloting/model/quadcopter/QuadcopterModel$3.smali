.class Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$3;
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
    .line 1562
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$3;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1565
    const-string v1, "DeviceControllerNotificationDictionaryChanged"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1567
    .local v0, "dictionary":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1568
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel$3;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->access$1500(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;Landroid/os/Bundle;)V

    .line 1571
    .end local v0    # "dictionary":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
