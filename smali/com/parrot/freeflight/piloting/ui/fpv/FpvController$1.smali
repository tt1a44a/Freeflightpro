.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRefresh()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->isDistanceAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->isGpsFixed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/radar/Radar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/radar/Radar;->getDistance()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->updateDistance(ZF)Z

    .line 130
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
