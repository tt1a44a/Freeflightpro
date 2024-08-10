.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$7;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)V

    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->takeSnapshot()V

    .line 388
    :cond_0
    return-void
.end method
