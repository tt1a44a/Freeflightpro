.class Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$3;
.super Landroid/content/BroadcastReceiver;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$3;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 884
    const-string v0, "SkyControllerDeviceControllerButtonEventsSettingsNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$3;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$700(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    const-string v0, "MapperDeviceControllerGrabButtonEventNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 887
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$3;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$800(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V

    goto :goto_0

    .line 888
    :cond_2
    const-string v0, "MapperDeviceControllerGrabAxisEventNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 889
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$3;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$900(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V

    goto :goto_0

    .line 890
    :cond_3
    const-string v0, "MapperDeviceControllerApplicationButtonEventNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 891
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$3;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$1000(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V

    goto :goto_0

    .line 892
    :cond_4
    const-string v0, "DroneManagerDeviceControllerAuthenticationFailedNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$3;->this$0:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->access$1100(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;Landroid/os/Bundle;)V

    goto :goto_0
.end method
