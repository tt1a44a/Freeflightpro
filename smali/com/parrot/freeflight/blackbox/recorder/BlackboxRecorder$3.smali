.class Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$3;
.super Ljava/lang/Object;
.source "BlackboxRecorder.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


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
    .line 159
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$3;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 14
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 162
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$3;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$100(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$3;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$3;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$200(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 164
    .local v0, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v10

    .line 165
    .local v10, "droneConnected":Z
    if-eqz v10, :cond_0

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 167
    .local v12, "timestamp":J
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$3;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1, v12, v13}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$300(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;J)V

    .line 168
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder$3;->this$0:Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->access$100(Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;

    move-result-object v1

    long-to-double v2, v12

    move-object v5, v4

    move-object v6, p1

    move-object v8, v4

    move v9, v7

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntryThread;->update(DLcom/parrot/freeflight/core/model/DroneModel;Landroid/location/Location;Lcom/parrot/freeflight/gamepad/GamePad;ILcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;I)V

    .line 171
    .end local v0    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .end local v10    # "droneConnected":Z
    .end local v12    # "timestamp":J
    :cond_0
    return-void
.end method
