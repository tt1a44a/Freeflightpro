.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$11;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;


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
    .line 431
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$11;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 434
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$11;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$11;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1902(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z

    .line 436
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$11;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->forceRefreshMap()V

    .line 438
    :cond_0
    return-void
.end method
