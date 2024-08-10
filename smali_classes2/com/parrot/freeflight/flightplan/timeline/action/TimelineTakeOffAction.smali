.class public Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;
.super Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
.source "TimelineTakeOffAction.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    const v0, 0x7f110245

    const v1, 0x7f0702d5

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;-><init>(II)V

    .line 15
    return-void
.end method


# virtual methods
.method public createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 1
    .param p1, "isStartMedia"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/TakeOffAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/TakeOffAction;-><init>()V

    return-object v0
.end method

.method public getMainColor()I
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05006e

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_TAKEOFF:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    return-object v0
.end method

.method public getValuesString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110245

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
