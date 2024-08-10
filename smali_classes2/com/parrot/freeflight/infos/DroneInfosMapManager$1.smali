.class Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;
.super Ljava/lang/Object;
.source "DroneInfosMapManager.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/DroneInfosMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/DroneInfosMapManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosMapManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePosition(FFF)V
    .locals 8
    .param p1, "distanceToDrone"    # F
    .param p2, "distanceToHome"    # F
    .param p3, "bearing"    # F

    .prologue
    const-wide/16 v6, 0x0

    .line 37
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->access$000(Lcom/parrot/freeflight/infos/DroneInfosMapManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 38
    .local v0, "location":Landroid/location/Location;
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->access$100(Lcom/parrot/freeflight/infos/DroneInfosMapManager;)Lcom/parrot/freeflight/piloting/RelativePositionController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->access$000(Lcom/parrot/freeflight/infos/DroneInfosMapManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->access$300(Lcom/parrot/freeflight/infos/DroneInfosMapManager;)Lcom/parrot/freeflight/piloting/RelativePositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->getDroneLocation()Landroid/location/Location;

    move-result-object v1

    :goto_0
    invoke-static {v2, v1}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->access$202(Lcom/parrot/freeflight/infos/DroneInfosMapManager;Landroid/location/Location;)Landroid/location/Location;

    .line 40
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    invoke-static {v2}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->access$500(Lcom/parrot/freeflight/infos/DroneInfosMapManager;)Lcom/parrot/freeflight/piloting/RelativePositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/RelativePositionController;->getControllerLocation()Landroid/location/Location;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->access$402(Lcom/parrot/freeflight/infos/DroneInfosMapManager;Landroid/location/Location;)Landroid/location/Location;

    .line 41
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->access$600(Lcom/parrot/freeflight/infos/DroneInfosMapManager;Z)V

    .line 43
    :cond_0
    return-void

    .line 39
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 48
    return-void
.end method
