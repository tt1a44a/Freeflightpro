.class public interface abstract Lcom/parrot/freeflight/flightplan/ui/IFlightPlanObjectsAccessor;
.super Ljava/lang/Object;
.source "IFlightPlanObjectsAccessor.java"


# virtual methods
.method public abstract findLineIndex(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)I
    .param p1    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract findWayPointIndex(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)I
    .param p1    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getInformationObjects()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLInformationObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLine(I)Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getNbLines()I
.end method

.method public abstract getNbWayPoints()I
.end method

.method public abstract getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPois()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrevWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .annotation build Landroid/support/annotation/Nullable;
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
            "Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWayPointsLines()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;",
            ">;"
        }
    .end annotation
.end method
