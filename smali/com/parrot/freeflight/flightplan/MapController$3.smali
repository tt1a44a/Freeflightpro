.class Lcom/parrot/freeflight/flightplan/MapController$3;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/MapController;->initMapParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/MapController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/MapController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/MapController;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/MapController$3;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    const-string v0, "MapController"

    const-string/jumbo v1, "onMapLoadHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController$3;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/MapController;->access$000(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/map/IMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 436
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController$3;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/flightplan/MapController;->access$502(Lcom/parrot/freeflight/flightplan/MapController;Landroid/os/Handler;)Landroid/os/Handler;

    .line 438
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController$3;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/MapController;->access$600(Lcom/parrot/freeflight/flightplan/MapController;)V

    .line 439
    return-void
.end method
