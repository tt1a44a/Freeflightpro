.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$1$1;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;->onSnapshotReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;

.field final synthetic val$map:Lcom/parrot/freeflight/map/IMap;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;Lcom/parrot/freeflight/map/IMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1$1;->this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1$1;->val$map:Lcom/parrot/freeflight/map/IMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1$1;->this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1$1;->this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)V

    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1$1;->this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;->val$onButtonClickListener:Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1$1;->this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;

    iget-object v1, v1, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1$1;->val$map:Lcom/parrot/freeflight/map/IMap;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->buildFromMap(Lcom/parrot/freeflight/map/IMap;)Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;->onFolderButtonClick(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1$1;->this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$402(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z

    goto :goto_0
.end method
