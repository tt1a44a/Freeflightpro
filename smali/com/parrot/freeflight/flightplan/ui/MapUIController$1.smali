.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/location/SmartLocationManager;Landroid/view/View;Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/map/GLMapLayout;Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/map/IMapView;Lcom/parrot/freeflight/map/RadarMapView;Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

.field final synthetic val$onButtonClickListener:Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;->val$onButtonClickListener:Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady()V
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/MapController;->getMap()Lcom/parrot/freeflight/map/IMap;

    move-result-object v0

    .line 272
    .local v0, "map":Lcom/parrot/freeflight/map/IMap;
    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$500(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1$1;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$1$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController$1;Lcom/parrot/freeflight/map/IMap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    :cond_0
    return-void
.end method
