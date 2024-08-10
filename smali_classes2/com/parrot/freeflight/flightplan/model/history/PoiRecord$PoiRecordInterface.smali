.class public interface abstract Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;
.super Ljava/lang/Object;
.source "PoiRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/model/history/PoiRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PoiRecordInterface"
.end annotation


# virtual methods
.method public abstract onPoiUpdate(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
