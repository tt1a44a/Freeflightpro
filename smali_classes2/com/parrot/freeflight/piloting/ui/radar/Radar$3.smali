.class Lcom/parrot/freeflight/piloting/ui/radar/Radar$3;
.super Ljava/lang/Object;
.source "Radar.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;


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
    .line 117
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$3;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

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
    const-wide/16 v4, 0x0

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 121
    .local v2, "now":J
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$3;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$900(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/RelativePositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->getControllerLocation()Landroid/location/Location;

    move-result-object v0

    .line 122
    .local v0, "controllerLocation":Landroid/location/Location;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$3;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$000(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->setLocation(Landroid/location/Location;D)V

    .line 123
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$3;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$400(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/radar/Radar$Position;->setLocation(Landroid/location/Location;D)V

    .line 124
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$3;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$1402(Lcom/parrot/freeflight/piloting/ui/radar/Radar;F)F

    .line 125
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$3;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$600(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0xc8

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$3;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$700(Lcom/parrot/freeflight/piloting/ui/radar/Radar;)V

    .line 127
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar$3;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->access$602(Lcom/parrot/freeflight/piloting/ui/radar/Radar;J)J

    .line 129
    :cond_0
    return-void
.end method

.method public updateRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 134
    return-void
.end method
