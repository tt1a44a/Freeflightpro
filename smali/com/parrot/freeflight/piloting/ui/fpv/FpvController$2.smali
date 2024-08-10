.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


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
    .line 152
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvTelemetry;->update(Lcom/parrot/freeflight/core/model/DroneModel;)Z

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$300(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$300(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;->update(Lcom/parrot/freeflight/core/model/DroneModel;)Z

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$400(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$400(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvHorizonController;->update(ILcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/piloting/model/DroneCamera;)V

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$500(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V

    .line 167
    :cond_3
    return-void
.end method
