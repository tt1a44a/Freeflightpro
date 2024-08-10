.class public abstract Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
.super Ljava/lang/Object;
.source "FlightPlanAction.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/IJsonAble;
.implements Lcom/parrot/freeflight/flightplan/model/IMavlinkAble;


# static fields
.field public static final ACTION_TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMissionItem(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 1
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;->createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v0

    return-object v0
.end method

.method public abstract onActionFound(Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
