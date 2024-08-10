.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$4;
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

.field final synthetic val$onButtonClickListener:Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$4;->val$onButtonClickListener:Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->getSelectedWayPointIndex()I

    move-result v0

    .line 359
    .local v0, "selectedWayPointIndex":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$4;->val$onButtonClickListener:Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$OnButtonClickListener;->onTimelineClick(I)V

    .line 360
    return-void
.end method
