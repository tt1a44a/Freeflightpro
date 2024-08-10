.class public interface abstract Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;
.super Ljava/lang/Object;
.source "ISavedPlanParseCallBack.java"


# virtual methods
.method public abstract onActionFound(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onMapInfoFound(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onPoiFound(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSavedPlanFound(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onWayPointFound(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;I)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
