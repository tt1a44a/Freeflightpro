.class Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;
.super Ljava/lang/Object;
.source "BlackboxRecorder.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 143
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$100(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 146
    .local v0, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v10

    .line 147
    .local v10, "droneConnected":Z
    if-eqz v10, :cond_0

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 149
    .local v12, "timestamp":J
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1, v12, v13}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$300(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;J)V

    .line 150
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$402(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;Z)Z

    .line 151
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$500(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->updateRemoteControllerInformation(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 152
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$100(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    move-result-object v1

    long-to-double v2, v12

    iget-object v4, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v4}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$2;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v5}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$000(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Landroid/location/Location;

    move-result-object v5

    move-object v8, v6

    move v9, v7

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->update(DLcom/parrot/freeflight/core/model/DroneModel;Landroid/location/Location;Lcom/parrot/freeflight/gamepad/GamePad;ILcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;I)V

    .line 155
    .end local v0    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .end local v10    # "droneConnected":Z
    .end local v12    # "timestamp":J
    :cond_0
    return-void
.end method
