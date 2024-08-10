.class Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;
.super Ljava/lang/Object;
.source "DummyDiscoController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;
.implements Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelStoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;-><init>(Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;)V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    instance-of v1, p1, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_1

    .line 55
    check-cast p1, Lcom/parrot/freeflight/core/model/DroneModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 56
    .local v0, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v0, v1, :cond_1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->access$100(Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;)Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;->onModelConfigurationChange()V

    .line 60
    .end local v0    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    :cond_1
    return-void
.end method

.method public onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->access$200(Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->access$300(Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;)Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;->onModelConfigurationChange()V

    .line 67
    :cond_0
    return-void
.end method
