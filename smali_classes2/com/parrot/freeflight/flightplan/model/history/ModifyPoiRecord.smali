.class public Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;
.super Lcom/parrot/freeflight/flightplan/model/history/PoiRecord;
.source "ModifyPoiRecord.java"


# instance fields
.field private mNewValue:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOldValue:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;Ljava/lang/Object;)V
    .locals 2
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "modifyEnum"    # Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "newValue"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;)V

    .line 20
    iput-object p4, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mNewValue:Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord$1;->$SwitchMap$com$parrot$freeflight$flightplan$model$history$PoiRecord$PoiRecordType:[I

    invoke-virtual {p3}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 29
    :goto_0
    return-void

    .line 23
    :pswitch_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getAltitude()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mOldValue:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :pswitch_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mOldValue:Ljava/lang/Object;

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "modifyEnum"    # Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "oldValue"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "newValue"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;)V

    .line 33
    invoke-direct {p0, p4, p5}, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->init(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method private init(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "oldValue"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "newValue"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mOldValue:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mNewValue:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method private updatePoi(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 52
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord$1;->$SwitchMap$com$parrot$freeflight$flightplan$model$history$PoiRecord$PoiRecordType:[I

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mRecordType:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 61
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mListener:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mRecordType:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;->onPoiUpdate(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;)V

    .line 62
    return-void

    .line 54
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->setAltitude(F)V

    goto :goto_0

    .line 57
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public merge(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    .locals 3
    .param p1, "otherRecord"    # Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    instance-of v1, p1, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;

    .line 70
    .local v0, "thatRecord":Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mRecordType:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mRecordType:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    if-ne v1, v2, :cond_0

    .line 71
    iget-object v1, v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mNewValue:Ljava/lang/Object;

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mNewValue:Ljava/lang/Object;

    .line 72
    return-object p0

    .line 75
    .end local v0    # "thatRecord":Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public redo()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mNewValue:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->updatePoi(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public undo()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->mOldValue:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;->updatePoi(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
