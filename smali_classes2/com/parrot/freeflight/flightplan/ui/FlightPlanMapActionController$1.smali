.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$1;
.super Ljava/lang/Object;
.source "FlightPlanMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;


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
    .line 209
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 3
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/parrot/freeflight/map/IProjection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v2

    invoke-static {v1, p1, v2, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$200(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Point;Z)Z

    move-result v0

    goto :goto_0
.end method
