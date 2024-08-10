.class public abstract Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord;
.super Ljava/lang/Object;
.source "WayPointRecord.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/history/IRecordable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;,
        Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;
    }
.end annotation


# instance fields
.field protected final mListener:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mRecordType:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;)V
    .locals 0
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "recordType"    # Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 17
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord;->mListener:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    .line 18
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord;->mRecordType:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    .line 19
    return-void
.end method
