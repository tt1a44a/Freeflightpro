.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7$1;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->onGlTextureReady(Lcom/parrot/engine3d/buffer/textures/GLTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1500(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1500(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->setTargetDrone(Z)V

    .line 418
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1500(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getHorizontalFov()F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;

    iget-object v2, v2, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getVerticalFov()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->updateViewAngles(FF)V

    .line 422
    :cond_0
    return-void
.end method
