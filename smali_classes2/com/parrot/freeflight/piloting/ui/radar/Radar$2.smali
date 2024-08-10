.class Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;
.super Ljava/lang/Object;
.source "Radar.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/radar/Radar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 8

    .prologue
    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 95
    .local v0, "now":J
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$900(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/RelativePositionController;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$800(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/RelativePositionController;->updateDroneLocation(Landroid/location/Location;)V

    .line 96
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1000(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$800(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1100(Lcom/parrot/freeflight/piloting/ui/radar/Radar;Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1000(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$800(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->update(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z

    .line 98
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1300(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$800(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1200(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->mirror(Lcom/parrot/freeflight/core/model/DroneModel$Position;D)V

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1200(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getTargetTrajectory()Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;

    move-result-object v2

    .line 101
    .local v2, "targetTrajectory":Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;
    if-nez v2, :cond_2

    .line 102
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$502(Lcom/parrot/freeflight/piloting/ui/radar/Radar;Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    .line 109
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$600(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$700(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    .line 111
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v3, v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$602(Lcom/parrot/freeflight/piloting/ui/radar/Radar;J)J

    .line 113
    :cond_1
    return-void

    .line 104
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$500(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v3

    if-nez v3, :cond_3

    .line 105
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    new-instance v4, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    invoke-direct {v4}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;-><init>()V

    invoke-static {v3, v4}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$502(Lcom/parrot/freeflight/piloting/ui/radar/Radar;Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    .line 107
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$2;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$500(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v3

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->getLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel$Trajectory;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->setLocation(Landroid/location/Location;D)V

    goto :goto_0
.end method
