.class public interface abstract Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;
.super Ljava/lang/Object;
.source "WayPointRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WayPointRecordInterface"
.end annotation


# virtual methods
.method public abstract onWayPointUpdate(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
