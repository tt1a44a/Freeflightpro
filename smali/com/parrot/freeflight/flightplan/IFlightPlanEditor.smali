.class public interface abstract Lcom/parrot/freeflight/flightplan/IFlightPlanEditor;
.super Ljava/lang/Object;
.source "IFlightPlanEditor.java"


# virtual methods
.method public abstract addPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Z)I
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)I
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract addWayPointToPoi(II)V
.end method

.method public abstract buckle(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract clear()V
.end method

.method public abstract isBuckled()Z
.end method

.method public abstract onPoiMoved(ILcom/google/android/gms/maps/model/LatLng;)V
    .param p2    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onWayPointMoved(ILcom/google/android/gms/maps/model/LatLng;)V
    .param p2    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removePoi(I)V
.end method

.method public abstract removeWayPoint(I)V
.end method

.method public abstract removeWayPointFromPoi(II)V
.end method

.method public abstract unbuckle()V
.end method

.method public abstract updatePoiAltitude(IF)V
.end method

.method public abstract updateWayPointAltitude(IF)V
.end method

.method public abstract updateWayPointIndex(I)V
.end method

.method public abstract updateWayPointSpeed(II)V
.end method

.method public abstract updateYaw(IF)V
.end method
