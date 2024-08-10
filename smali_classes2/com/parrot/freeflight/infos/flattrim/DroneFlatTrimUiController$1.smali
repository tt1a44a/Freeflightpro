.class Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$1;
.super Ljava/lang/Object;
.source "DroneFlatTrimUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$1;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$1;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->access$100(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$1;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->access$000(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController$1;->this$0:Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;

    invoke-static {v2}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;->access$000(Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimUiController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/ArtificialHorizonController;->update(Lcom/parrot/freeflight/core/model/DroneModel$Position;Lcom/parrot/freeflight/piloting/model/DroneCamera;)V

    .line 59
    return-void
.end method
