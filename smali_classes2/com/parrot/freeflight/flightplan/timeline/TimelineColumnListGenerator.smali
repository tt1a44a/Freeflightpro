.class public Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;
.super Ljava/lang/Object;
.source "TimelineColumnListGenerator.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;


# instance fields
.field private final mActionMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mColumnParams:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumnWidths:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAltitude:F

.field private mCurrentMinWidth:F

.field private final mDownwardsSpeed:F

.field private mIsLandingPresent:Z

.field private final mLandingSpeed:F

.field private mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMinColumnWidth:F

.field private mPreviousWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTakeOffDuration:F

.field private mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTotalTime:F

.field private final mUpwardsSpeed:F


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;F)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "characteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "minColumnWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;",
            "Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "actionMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCurrentAltitude:F

    .line 62
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCurrentMinWidth:F

    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mActionMap:Ljava/util/Map;

    .line 67
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 68
    iput p3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mMinColumnWidth:F

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnWidths:Ljava/util/List;

    .line 72
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getTakeOffTime()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTakeOffDuration:F

    .line 73
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getUpwardsSpeed()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mUpwardsSpeed:F

    .line 74
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDownwardsSpeed()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mDownwardsSpeed:F

    .line 75
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getLandingSpeed()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mLandingSpeed:F

    .line 76
    return-void
.end method

.method private createColumn(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;F)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    .locals 5
    .param p1, "navigatorAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "duration"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 239
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;-><init>()V

    .line 240
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setNavigatorAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 241
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 242
    invoke-virtual {v0, p3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setTimeDuration(F)V

    .line 243
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setMediaAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 244
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setTiltAction(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 245
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    .line 247
    iget v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTotalTime:F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 248
    iget v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTotalTime:F

    add-float/2addr v3, p3

    iput v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTotalTime:F

    .line 252
    :cond_0
    cmpl-float v3, p3, v1

    if-eqz v3, :cond_1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v3

    if-nez v3, :cond_3

    .line 253
    :cond_1
    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mMinColumnWidth:F

    .line 260
    .local v2, "width":F
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnWidths:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 263
    .local v1, "startX":F
    :goto_1
    add-float v3, v1, v2

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setEndPosition(F)V

    .line 264
    return-object v0

    .line 255
    .end local v1    # "startX":F
    .end local v2    # "width":F
    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getTimeDuration()F

    move-result v4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->getTimeDurationDis(FF)F

    move-result v2

    .line 256
    .restart local v2    # "width":F
    iget v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCurrentMinWidth:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 257
    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCurrentMinWidth:F

    goto :goto_0

    .line 262
    :cond_4
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getEndPosition()F

    move-result v1

    goto :goto_1
.end method

.method private onWayPointFound(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 10
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mPreviousWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-nez v0, :cond_1

    .line 222
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTakeOffDuration:F

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mUpwardsSpeed:F

    div-float/2addr v1, v2

    add-float v8, v0, v1

    .line 226
    .local v8, "duration":F
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v8}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->createColumn(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;F)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v7

    .line 227
    .local v7, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mIsLandingPresent:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v7, v9}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setTimeDuration(F)V

    .line 229
    iput v9, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTotalTime:F

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mPreviousWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 234
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCurrentAltitude:F

    .line 235
    return-void

    .line 224
    .end local v7    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    .end local v8    # "duration":F
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mPreviousWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCurrentAltitude:F

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getSpeed()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mDownwardsSpeed:F

    iget v6, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mUpwardsSpeed:F

    invoke-static/range {v0 .. v6}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->computeTimeDuration(Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;FFFF)F

    move-result v8

    .restart local v8    # "duration":F
    goto :goto_0
.end method


# virtual methods
.method public generate(Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;)Ljava/util/List;
    .locals 14
    .param p1, "provider"    # Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p1}, Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;->getTakeOffActions()Ljava/util/List;

    move-result-object v6

    .line 81
    .local v6, "takeOffActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 82
    .local v0, "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;->onActionFound(Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;)V

    goto :goto_0

    .line 84
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_0
    invoke-interface {p1}, Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;->getWayPoints()Ljava/util/List;

    move-result-object v10

    .line 86
    .local v10, "wayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 87
    .local v9, "wayPointSize":I
    if-lez v9, :cond_1

    add-int/lit8 v12, v9, -0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v12}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isEndLinearLanding()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 89
    add-int/lit8 v9, v9, -0x1

    .line 92
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_3

    .line 93
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 94
    .local v11, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-direct {p0, v11}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->onWayPointFound(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 95
    invoke-virtual {v11}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v8

    .line 96
    .local v8, "wayPointActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 97
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 98
    .restart local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;->onActionFound(Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;)V

    goto :goto_2

    .line 92
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v8    # "wayPointActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    .end local v11    # "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_3
    const/4 v5, 0x0

    .line 105
    .local v5, "previousWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    const/4 v2, 0x0

    :goto_3
    iget-object v12, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_7

    .line 106
    iget-object v12, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    .line 107
    .local v1, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v7

    .line 108
    .local v7, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    .line 109
    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v4

    .line 110
    .local v4, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v12

    if-ne v4, v12, :cond_5

    .line 112
    move v3, v2

    .line 114
    .local v3, "j":I
    :cond_4
    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V

    .line 115
    add-int/lit8 v3, v3, -0x1

    .line 116
    iget-object v12, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    .line 117
    .restart local v1    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    if-lez v3, :cond_5

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v12

    if-ne v12, v5, :cond_4

    .line 121
    .end local v3    # "j":I
    .end local v4    # "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :cond_5
    if-eqz v7, :cond_6

    .line 122
    move-object v5, v7

    .line 105
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 126
    .end local v1    # "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    .end local v7    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_7
    iget-object v12, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    return-object v12
.end method

.method public getColumnWidths()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnWidths:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentMinColumnWidth()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCurrentMinWidth:F

    return v0
.end method

.method public getTotalTime()F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTotalTime:F

    return v0
.end method

.method public onDelayActionFound(Lcom/parrot/freeflight/flightplan/model/action/DelayAction;)V
    .locals 4
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/DelayAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    new-instance v1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;

    invoke-direct {v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;-><init>()V

    .line 204
    .local v1, "navAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->initDefaultValues(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 205
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/action/DelayAction;->getDelay()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->setParameter(F)V

    .line 206
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mActionMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineWaitAction;->getActionDuration()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->createColumn(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;F)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v0

    .line 208
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public onLandingActionFound(Lcom/parrot/freeflight/flightplan/model/action/LandingAction;)V
    .locals 5
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/LandingAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 166
    new-instance v1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineLandingAction;

    invoke-direct {v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineLandingAction;-><init>()V

    .line 167
    .local v1, "navAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mActionMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/4 v2, 0x0

    iget v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCurrentAltitude:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mLandingSpeed:F

    div-float/2addr v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->createColumn(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;F)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v0

    .line 169
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mIsLandingPresent:Z

    .line 171
    const/4 v2, 0x0

    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCurrentAltitude:F

    .line 172
    return-void
.end method

.method public onPanoramaActionFound(Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;)V
    .locals 5
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 187
    new-instance v1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;

    invoke-direct {v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;-><init>()V

    .line 188
    .local v1, "navAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->initDefaultValues(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 189
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;->getHorizontalAngle()F

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;->getHorizontalSpeed()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->setParameter(FF)V

    .line 191
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mActionMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getActionDuration()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->createColumn(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;F)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v0

    .line 193
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-boolean v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mIsLandingPresent:Z

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;->setTimeDuration(F)V

    .line 197
    iput v4, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTotalTime:F

    .line 199
    :cond_0
    return-void
.end method

.method public onStartImageActionFound(Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;)V
    .locals 3
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->initDefaultValues(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->getPeriod()F

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->getResolution()F

    move-result v2

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;->getFormat(F)Lcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakePictureAction;->setParameters(FLcom/parrot/freeflight/flightplan/timeline/action/PictureFormat;)V

    .line 157
    return-void
.end method

.method public onStartVideoActionFound(Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;)V
    .locals 1
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 144
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRecordAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRecordAction;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 145
    return-void
.end method

.method public onStopImageActionFound(Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;)V
    .locals 1
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 162
    return-void
.end method

.method public onStopVideoActionFound(Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;)V
    .locals 1
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mMediaAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 150
    return-void
.end method

.method public onTakeOffActionFound(Lcom/parrot/freeflight/flightplan/model/action/TakeOffAction;)V
    .locals 4
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/TakeOffAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 176
    new-instance v1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;

    invoke-direct {v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTakeOffAction;-><init>()V

    .line 177
    .local v1, "navAction":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mActionMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/4 v2, 0x0

    iget v3, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTakeOffDuration:F

    invoke-direct {p0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->createColumn(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;F)Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;

    move-result-object v0

    .line 179
    .local v0, "column":Lcom/parrot/freeflight/flightplan/timeline/TimelineColumn;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mColumnParams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mIsLandingPresent:Z

    .line 182
    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCurrentAltitude:F

    .line 183
    return-void
.end method

.method public onTiltActionFound(Lcom/parrot/freeflight/flightplan/model/action/TiltAction;)V
    .locals 3
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/TiltAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->initDefaultValues(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineColumnListGenerator;->mTiltAction:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->getVerticalAngle()F

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->getVerticalSpeed()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineTiltAction;->setRealParameter(FF)V

    .line 216
    return-void
.end method
