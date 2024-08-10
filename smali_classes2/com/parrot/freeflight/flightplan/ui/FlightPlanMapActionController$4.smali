.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;
.super Ljava/lang/Object;
.source "FlightPlanMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;


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
    .line 235
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapTouchUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$400(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$700(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onYawEditionStopped(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;F)V

    .line 248
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$402(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Z)Z

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$002(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$802(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 252
    :cond_1
    return-void

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    if-eqz v0, :cond_3

    .line 243
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onWayPointMoveStopped(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$4;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onPoiMoveStopped(Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method
