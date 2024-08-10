.class Lcom/parrot/freeflight/flightplan/MapController$2;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;


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
    .line 414
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/MapController$2;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController$2;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/MapController;->access$500(Lcom/parrot/freeflight/flightplan/MapController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController$2;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/MapController;->access$500(Lcom/parrot/freeflight/flightplan/MapController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController$2;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/MapController;->access$502(Lcom/parrot/freeflight/flightplan/MapController;Landroid/os/Handler;)Landroid/os/Handler;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController$2;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/MapController;->access$600(Lcom/parrot/freeflight/flightplan/MapController;)V

    .line 423
    return-void
.end method
