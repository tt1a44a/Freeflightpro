.class public Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;
.super Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingController;
.source "DummyDiscoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;
    }
.end annotation


# instance fields
.field private final mModelStoreListener:Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;)V
    .locals 2
    .param p1, "remoteCtrlModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "modelConfigurationChangeListener"    # Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, v1, p1, p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingController;-><init>(Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;)V

    .line 20
    new-instance v0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;-><init>(Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mModelStoreListener:Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;

    .line 21
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;)Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mOnModelConfigurationChangeListener:Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;)Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mOnModelConfigurationChangeListener:Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mModelStoreListener:Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mModelStoreListener:Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 27
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mModelStoreListener:Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController;->mModelStoreListener:Lcom/parrot/freeflight/piloting/model/dummy/DummyDiscoController$ModelStoreListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 43
    return-void
.end method
