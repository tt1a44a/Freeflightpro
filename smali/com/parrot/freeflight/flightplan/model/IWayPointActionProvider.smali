.class public interface abstract Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;
.super Ljava/lang/Object;
.source "IWayPointActionProvider.java"


# virtual methods
.method public abstract getActionStream()Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTakeOffActions()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWayPoints()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;",
            ">;"
        }
    .end annotation
.end method
