.class public Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;
.super Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord;
.source "ModifyWayPointRecord.java"


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
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;)V
    .locals 3
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "modifyType"    # Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "newValue"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "oldValue":Ljava/lang/Object;
    sget-object v1, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord$1;->$SwitchMap$com$parrot$freeflight$flightplan$model$history$WayPointRecord$WayPointRecordType:[I

    invoke-virtual {p3}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 45
    .end local v0    # "oldValue":Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, v0, p4}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->init(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    return-void

    .line 24
    .restart local v0    # "oldValue":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 25
    .local v0, "oldValue":Ljava/lang/Float;
    goto :goto_0

    .line 27
    .local v0, "oldValue":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 28
    .local v0, "oldValue":Lcom/google/android/gms/maps/model/LatLng;
    goto :goto_0

    .line 30
    .local v0, "oldValue":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getSpeed()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 31
    .local v0, "oldValue":Ljava/lang/Integer;
    goto :goto_0

    .line 33
    .local v0, "oldValue":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 34
    .local v0, "oldValue":Ljava/lang/Float;
    goto :goto_0

    .line 36
    .local v0, "oldValue":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    .line 37
    .local v0, "oldValue":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    goto :goto_0

    .line 39
    .local v0, "oldValue":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isContinueMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 40
    .local v0, "oldValue":Ljava/lang/Boolean;
    goto :goto_0

    .line 42
    .local v0, "oldValue":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "oldValue":Ljava/lang/Integer;
    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public constructor <init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "modifyType"    # Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;
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
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;)V

    .line 50
    invoke-direct {p0, p4, p5}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->init(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
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
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mOldValue:Ljava/lang/Object;

    .line 55
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mNewValue:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method private updateWayPoint(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 69
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord$1;->$SwitchMap$com$parrot$freeflight$flightplan$model$history$WayPointRecord$WayPointRecordType:[I

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mRecordType:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mListener:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mRecordType:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;->onWayPointUpdate(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;)V

    .line 93
    return-void

    .line 71
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setAltitude(F)V

    goto :goto_0

    .line 74
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 77
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setSpeed(I)V

    goto :goto_0

    .line 80
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setYaw(F)V

    goto :goto_0

    .line 83
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    check-cast p1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V

    goto :goto_0

    .line 86
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setContinueMode(Z)V

    goto :goto_0

    .line 89
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_6
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setLandingMode(I)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
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
    .line 98
    instance-of v1, p1, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    .line 100
    .local v0, "thatRecord":Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mRecordType:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mRecordType:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    if-ne v1, v2, :cond_0

    .line 101
    iget-object v1, v0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mNewValue:Ljava/lang/Object;

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mNewValue:Ljava/lang/Object;

    .line 102
    return-object p0

    .line 105
    .end local v0    # "thatRecord":Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public redo()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mNewValue:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->updateWayPoint(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public undo()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->mOldValue:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;->updateWayPoint(Ljava/lang/Object;)V

    .line 61
    return-void
.end method
