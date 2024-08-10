.class Lcom/parrot/freeflight/core/connection/ConnectionManager$5;
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
    .line 1156
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1159
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1160
    const/4 v2, 0x0

    .line 1161
    .local v2, "disconnectionEvent":Ljava/lang/String;
    const-string v3, "INTENT_EXTRA_IS_SUBDEVICE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1163
    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v4, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_DISCONNECTION_REQUESTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v3, v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$300(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 1164
    sget-boolean v3, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v3, :cond_0

    .line 1165
    const-string v2, "Drone requested disconnection through nap"

    .line 1183
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v3, :cond_1

    .line 1184
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1185
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    const-string v3, "DeviceControllerNetworkEventDisconnectionNotificationCauseKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1186
    const-string v3, "DeviceControllerNetworkEventDisconnectionNotificationCauseKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1187
    .local v1, "cause":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_NETWORKEVENT_DISCONNECTION_CAUSE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_NETWORKEVENT_DISCONNECTION_CAUSE_ENUM;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1188
    invoke-static {v2}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    .line 1195
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cause":I
    .end local v2    # "disconnectionEvent":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1168
    .restart local v2    # "disconnectionEvent":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$700(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/controller/devicecontrollers/DeviceController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1171
    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v4, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_DISCONNECTION_REQUESTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v3, v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$300(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 1172
    sget-boolean v3, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v3, :cond_0

    .line 1173
    const-string v2, "Nap requested disconnection"

    goto :goto_0

    .line 1176
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$5;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v4, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_DISCONNECTION_REQUESTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v3, v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$300(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 1177
    sget-boolean v3, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v3, :cond_0

    .line 1178
    const-string v2, "drone requested disconnection"

    goto :goto_0

    .line 1190
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    const-string v3, "deviceControllerNetworkEventDisconnection, unknown cause"

    invoke-static {v3}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    goto :goto_1
.end method
