.class public Lcom/parrot/freeflight/flightplan/model/history/RemovePoiRecord;
.super Lcom/parrot/freeflight/flightplan/model/history/PoiRecord;
.source "RemovePoiRecord.java"


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;)V
    .locals 1
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_REMOVE:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;)V

    .line 15
    return-void
.end method


# virtual methods
.method public merge(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    .locals 2
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
    .line 31
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/history/AddPoiRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/RemovePoiRecord;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    check-cast p1, Lcom/parrot/freeflight/flightplan/model/history/AddPoiRecord;

    .end local p1    # "other":Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    iget-object v1, p1, Lcom/parrot/freeflight/flightplan/model/history/AddPoiRecord;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    if-ne v0, v1, :cond_0

    .line 32
    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public redo()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/RemovePoiRecord;->mListener:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/RemovePoiRecord;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    sget-object v2, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_REMOVE:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;->onPoiUpdate(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;)V

    .line 25
    return-void
.end method

.method public undo()V
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/RemovePoiRecord;->mListener:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/RemovePoiRecord;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    sget-object v2, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_ADD:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;->onPoiUpdate(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;)V

    .line 20
    return-void
.end method
