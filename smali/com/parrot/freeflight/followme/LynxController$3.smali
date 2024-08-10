.class Lcom/parrot/freeflight/followme/LynxController$3;
.super Ljava/lang/Object;
.source "LynxController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/followme/LynxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/followme/LynxController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/followme/LynxController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/followme/LynxController;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/parrot/freeflight/followme/LynxController$3;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 4

    .prologue
    .line 454
    iget-object v2, p0, Lcom/parrot/freeflight/followme/LynxController$3;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v2}, Lcom/parrot/freeflight/followme/LynxController;->access$100(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getTargetImageDetectionState()I

    move-result v0

    .line 455
    .local v0, "newTargetImageDetectionState":I
    iget-object v2, p0, Lcom/parrot/freeflight/followme/LynxController$3;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v2}, Lcom/parrot/freeflight/followme/LynxController;->access$300(Lcom/parrot/freeflight/followme/LynxController;)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 456
    iget-object v2, p0, Lcom/parrot/freeflight/followme/LynxController$3;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v2}, Lcom/parrot/freeflight/followme/LynxController;->access$400(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/arsdk/lynx/LynxManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 457
    const-string v2, "LynxController"

    const-string v3, "LYNX Drone wants Lynx to abandon"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v2, p0, Lcom/parrot/freeflight/followme/LynxController$3;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v2}, Lcom/parrot/freeflight/followme/LynxController;->access$400(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/arsdk/lynx/LynxManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/lynx/LynxManager;->targetMismatch()V

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/followme/LynxController$3;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/followme/LynxController;->access$302(Lcom/parrot/freeflight/followme/LynxController;I)I

    .line 463
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/followme/LynxController$3;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v2}, Lcom/parrot/freeflight/followme/LynxController;->access$100(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isLocationWithGpsFixed()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/followme/LynxController$3;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v2}, Lcom/parrot/freeflight/followme/LynxController;->access$500(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/followme/LynxController$3;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v3}, Lcom/parrot/freeflight/followme/LynxController;->access$100(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->update(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z

    .line 464
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/followme/LynxController$3;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v2}, Lcom/parrot/freeflight/followme/LynxController;->access$100(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getTargetTrajectory()Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    move-result-object v1

    .line 465
    .local v1, "targetTrajectory":Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/followme/LynxController$3;->this$0:Lcom/parrot/freeflight/followme/LynxController;

    invoke-static {v2}, Lcom/parrot/freeflight/followme/LynxController;->access$600(Lcom/parrot/freeflight/followme/LynxController;)Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->update(Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;)Z

    .line 466
    :cond_3
    return-void
.end method
