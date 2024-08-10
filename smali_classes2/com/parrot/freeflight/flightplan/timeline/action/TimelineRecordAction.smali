.class public Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRecordAction;
.super Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
.source "TimelineRecordAction.java"


# static fields
.field private static final DEFAULT_RECORD_FPS:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    const v0, 0x7f110249

    const v1, 0x7f0702d8

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;-><init>(II)V

    .line 18
    return-void
.end method


# virtual methods
.method public createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 1
    .param p1, "isStartMedia"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;-><init>()V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;-><init>()V

    goto :goto_0
.end method

.method public getMainColor()I
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050070

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_RECORD:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    return-object v0
.end method

.method public getValuesString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "30 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11023b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActionEqual(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)Z
    .locals 1
    .param p1, "otherAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRecordAction;

    return v0
.end method
