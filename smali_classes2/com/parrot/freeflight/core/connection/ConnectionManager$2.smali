.class Lcom/parrot/freeflight/core/connection/ConnectionManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/connection/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1018
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, "deviceStarted":Ljava/lang/String;
    const-string v1, "INTENT_EXTRA_IS_SUBDEVICE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1021
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$300(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 1022
    sget-boolean v1, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v1, :cond_0

    .line 1023
    const-string v0, "Connection app: Drone started through NAP"

    .line 1038
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v1, :cond_1

    .line 1039
    invoke-static {v0}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    .line 1043
    .end local v0    # "deviceStarted":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$800(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/core/connection/WifiReconnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/WifiReconnection;->cancel()V

    .line 1046
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$800(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/core/connection/WifiReconnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/WifiReconnection;->saveSSID()V

    .line 1048
    sget-boolean v1, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v1, :cond_2

    .line 1049
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$1000(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/core/connection/WifiLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$900(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/connection/WifiLogger;->logWifiInfo(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 1051
    :cond_2
    return-void

    .line 1026
    .restart local v0    # "deviceStarted":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$700(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1027
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$300(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 1028
    sget-boolean v1, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v1, :cond_0

    .line 1029
    const-string v0, "Connection app: NAP started"

    goto :goto_0

    .line 1032
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$2;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$300(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 1033
    sget-boolean v1, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v1, :cond_0

    .line 1034
    const-string v0, "Connection app: Drone started"

    goto :goto_0
.end method
