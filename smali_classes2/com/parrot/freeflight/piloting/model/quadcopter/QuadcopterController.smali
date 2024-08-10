.class public Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;
.super Ljava/lang/Object;
.source "QuadcopterController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/model/PilotingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;
    }
.end annotation


# instance fields
.field private final mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStoreListener:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnModelConfigurationChangeListener:Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;)V
    .locals 3
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "remoteCtrlModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "modelConfigurationChangeListener"    # Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    .line 29
    .local v0, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 30
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 31
    check-cast p2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .end local p2    # "remoteCtrlModel":Lcom/parrot/freeflight/core/model/Model;
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 32
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mOnModelConfigurationChangeListener:Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;

    .line 33
    new-instance v1, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$1;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mModelStoreListener:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;)Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mOnModelConfigurationChangeListener:Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mModelStoreListener:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mModelStoreListener:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 40
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mModelStoreListener:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->mModelStoreListener:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 56
    return-void
.end method
