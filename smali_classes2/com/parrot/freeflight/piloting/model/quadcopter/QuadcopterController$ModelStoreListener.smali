.class Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;
.super Ljava/lang/Object;
.source "QuadcopterController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;
.implements Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelStoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;)V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->access$100(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->access$200(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;)Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;->onModelConfigurationChange()V

    .line 77
    :cond_0
    return-void
.end method

.method public onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->access$300(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;->access$200(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterController;)Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;->onModelConfigurationChange()V

    .line 84
    :cond_0
    return-void
.end method
