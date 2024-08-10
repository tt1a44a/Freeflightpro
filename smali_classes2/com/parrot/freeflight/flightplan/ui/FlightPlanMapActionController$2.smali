.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$2;
.super Ljava/lang/Object;
.source "FlightPlanMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 3
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->isEditionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$400(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/map/IProjection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$200(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Point;Z)Z

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
