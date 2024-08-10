.class public abstract Lcom/parrot/freeflight/flightplan/model/history/PoiRecord;
.super Ljava/lang/Object;
.source "PoiRecord.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/history/IRecordable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;,
        Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;
    }
.end annotation


# instance fields
.field protected final mListener:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mRecordType:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;)V
    .locals 0
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "recordType"    # Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    .line 17
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord;->mListener:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

    .line 18
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord;->mRecordType:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    .line 19
    return-void
.end method
