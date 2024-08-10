.class public Lcom/parrot/freeflight/flightplan/model/history/BuckleWayPointRecord;
.super Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord;
.source "BuckleWayPointRecord.java"


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;)V
    .locals 1
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_BUCKLE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;)V

    .line 15
    return-void
.end method


# virtual methods
.method public merge(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    .locals 1
    .param p1, "other"    # Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 30
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/history/UnbuckleWayPointRecord;

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public redo()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/BuckleWayPointRecord;->mListener:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/BuckleWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    sget-object v2, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_BUCKLE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;->onWayPointUpdate(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;)V

    .line 25
    return-void
.end method

.method public undo()V
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/BuckleWayPointRecord;->mListener:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/BuckleWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    sget-object v2, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_UNBUCKLE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;->onWayPointUpdate(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;)V

    .line 20
    return-void
.end method
