.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4500(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1218
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->setOnSpeedBridleListener(Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;)V

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    check-cast p1, Lcom/parrot/freeflight/core/model/DroneModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$802(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Lcom/parrot/freeflight/core/model/DroneModel;)Lcom/parrot/freeflight/core/model/DroneModel;

    .line 1221
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4600(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)V

    .line 1224
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4500(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1226
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$20;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->setOnSpeedBridleListener(Lcom/parrot/freeflight/core/model/DroneModel$OnSpeedBridleListener;)V

    .line 1230
    :cond_1
    return-void
.end method
