.class Lcom/parrot/freeflight/blackbox/BlackboxManager$4;
.super Ljava/lang/Object;
.source "BlackboxManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/BlackboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 4

    .prologue
    .line 119
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$200(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$200(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 121
    .local v0, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    .line 122
    .local v1, "droneConnected":Z
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$400(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 123
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$402(Lcom/parrot/freeflight/blackbox/BlackboxManager;Z)Z

    .line 124
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$400(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    iget-object v3, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v3}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$200(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$700(Lcom/parrot/freeflight/blackbox/BlackboxManager;Lcom/parrot/freeflight/core/model/DroneModel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$100(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v3}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$200(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->startRecording(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 127
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$500(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$100(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v3}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$500(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->startRecording(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    .line 136
    .end local v0    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .end local v1    # "droneConnected":Z
    :cond_0
    :goto_0
    return-void

    .line 132
    .restart local v0    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .restart local v1    # "droneConnected":Z
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$4;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$100(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecorder;->stopRecording()V

    goto :goto_0
.end method
