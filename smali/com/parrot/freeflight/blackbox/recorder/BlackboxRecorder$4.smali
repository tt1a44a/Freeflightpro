.class Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;
.super Ljava/lang/Object;
.source "BlackboxRecorder.java"

# interfaces
.implements Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerListener;


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
    .line 175
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonActionEvent(I)V
    .locals 14
    .param p1, "buttonAction"    # I

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$100(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 180
    .local v0, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v10

    .line 181
    .local v10, "droneConnected":Z
    if-eqz v10, :cond_0

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 183
    .local v12, "timestamp":J
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1, v12, v13}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$300(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;J)V

    .line 184
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$100(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    move-result-object v1

    long-to-double v2, v12

    const/4 v9, -0x1

    move-object v5, v4

    move-object v6, v4

    move v7, p1

    move-object v8, v4

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->update(DLcom/parrot/freeflight/core/model/DroneModel;Landroid/location/Location;Lcom/parrot/freeflight/gamepad/GamePad;ILcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;I)V

    .line 187
    .end local v0    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .end local v10    # "droneConnected":Z
    .end local v12    # "timestamp":J
    :cond_0
    return-void
.end method

.method public onUpdatePilotingInfo(Lcom/parrot/jnicore/mppblackbox/PilotingInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/parrot/jnicore/mppblackbox/PilotingInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$100(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v10

    .line 193
    .local v10, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    invoke-virtual {v10}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v11

    .line 194
    .local v11, "droneConnected":Z
    if-eqz v11, :cond_0

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 196
    .local v12, "timestamp":J
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v0, v12, v13}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$300(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;J)V

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$100(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->getPitch()B

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->getRoll()B

    move-result v2

    .line 198
    invoke-virtual {p1}, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->getYaw()B

    move-result v3

    invoke-virtual {p1}, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->getGaz()B

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->getSource()B

    move-result v5

    .line 197
    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->obtainMppPcmd(BBBBB)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;

    move-result-object v8

    .line 199
    .local v8, "mppPcmd":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$4;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$100(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    move-result-object v1

    long-to-double v2, v12

    move-object v4, v9

    move-object v5, v9

    move-object v6, v9

    move v9, v7

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->update(DLcom/parrot/freeflight/core/model/DroneModel;Landroid/location/Location;Lcom/parrot/freeflight/gamepad/GamePad;ILcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;I)V

    .line 202
    .end local v8    # "mppPcmd":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
    .end local v10    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .end local v11    # "droneConnected":Z
    .end local v12    # "timestamp":J
    :cond_0
    return-void
.end method
