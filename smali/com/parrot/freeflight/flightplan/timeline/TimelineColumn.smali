.class public Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
.super Ljava/lang/Object;
.source "TimelineColumn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn$Section;
    }
.end annotation


# static fields
.field public static final DURATION_INFINITE:F = 3.4028235E38f

.field public static final DURATION_UNKNOWN:F = -1.0f

.field public static final MEDIA_SECTION:I = 0x0

.field public static final NAVIGATOR_SECTION:I = 0x1

.field public static final TILT_SECTION:I = 0x2

.field public static final UNKNOWN_SECTION:I = -0x1


# instance fields
.field private mEndPosition:F

.field private mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNavigatorAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTimeDuration:F

.field private mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionSection(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)I
    .locals 1
    .param p0, "action"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getActionSection(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;)I

    move-result v0

    return v0
.end method

.method public static getActionSection(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;)I
    .locals 2
    .param p0, "actionType"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn$1;->$SwitchMap$com$parrot$freeflight$flightplan$timeline$action$TimelineActionType:[I

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 159
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getActionForSection(I)Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .locals 1
    .param p1, "section"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_0

    .line 145
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mNavigatorAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAttachedActions()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mNavigatorAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    if-eqz v1, :cond_3

    .line 126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mNavigatorAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mNavigatorAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_3
    return-object v0
.end method

.method public getEndPosition()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mEndPosition:F

    return v0
.end method

.method public getMediaAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    return-object v0
.end method

.method public getNavigatorAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mNavigatorAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    return-object v0
.end method

.method public getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    return-object v0
.end method

.method public getTiltAction()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    return-object v0
.end method

.method public getTimeDuration()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mTimeDuration:F

    return v0
.end method

.method public getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    return-object v0
.end method

.method public setEndPosition(F)V
    .locals 0
    .param p1, "endPosition"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mEndPosition:F

    .line 67
    return-void
.end method

.method public setMediaAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 0
    .param p1, "mediaAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 84
    return-void
.end method

.method public setNavigatorAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 0
    .param p1, "navigatorAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mNavigatorAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 93
    return-void
.end method

.method public setPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V
    .locals 0
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mPoi:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    .line 120
    return-void
.end method

.method public setTiltAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V
    .locals 0
    .param p1, "tiltAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 111
    return-void
.end method

.method public setTimeDuration(F)V
    .locals 0
    .param p1, "timeDuration"    # F

    .prologue
    .line 74
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mTimeDuration:F

    .line 75
    return-void
.end method

.method public setWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 0
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 102
    return-void
.end method
