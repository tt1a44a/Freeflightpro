.class public interface abstract Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;
.super Ljava/lang/Object;
.source "ISavedPlanEditor.java"


# virtual methods
.method public abstract commit()V
.end method

.method public abstract saveActions(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveGeneralInfo(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveMapInfo(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract savePois(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
