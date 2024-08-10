.class public Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
.super Ljava/lang/Object;
.source "FlightPlanDataCenter.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/IFlightPlanEditor;
.implements Lcom/parrot/freeflight/flightplan/model/IWayPointActionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;,
        Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;
    }
.end annotation


# static fields
.field private static final SIMILAR_ANGLE_DELTA:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "FlightPlanDataCenter"

.field private static sInstance:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mEditionState:I

.field private mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsBuckled:Z

.field private mMapInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPois:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;",
            ">;"
        }
    .end annotation
.end field

.field private final mTakeOffActions:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mWayPoints:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "FlightPlanDataCenter"

    const-string v1, "create FlightPlanDataCenter ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    .line 90
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mMapInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    .line 91
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    .line 92
    invoke-static {}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductsDefaultCharacteristicsWriter;->writeIfNeeded()V

    .line 93
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristicsFactory;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->refreshPlanWithSavedPlan(Ljava/lang/String;)Z

    .line 96
    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isTiltAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isNavigatorAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isStopMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    return-object p1
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mMapInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->dump()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .param p1, "x1"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isStartMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v0

    return v0
.end method

.method private appendWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 8
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 153
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 154
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;

    if-nez v4, :cond_1

    .line 156
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    new-instance v5, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;

    invoke-direct {v5}, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isForFixedWing()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p1, v7}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getActionsToMove(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    .line 160
    new-instance v4, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;

    invoke-direct {v4}, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;-><init>()V

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    .line 162
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;

    if-nez v4, :cond_4

    .line 165
    :cond_3
    new-instance v4, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;

    invoke-direct {v4}, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;-><init>()V

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    .line 174
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setIndex(I)V

    .line 175
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_6

    .line 178
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 179
    .local v2, "penultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getFollow()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 180
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateWayPointYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 182
    :cond_5
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getFollow()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 183
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateWayPointYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 189
    .end local v2    # "penultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 190
    return-void

    .line 168
    :cond_7
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 169
    .local v1, "lastWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-direct {p0, v1, v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getActionsToMove(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)Ljava/util/List;

    move-result-object v3

    .line 170
    .local v3, "removedActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    if-eqz v3, :cond_4

    .line 171
    invoke-virtual {p1, v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addActions(Ljava/util/List;)V

    goto :goto_0

    .line 184
    .end local v1    # "lastWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v3    # "removedActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    .restart local v2    # "penultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_8
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getFollow()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 185
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/freeflight/util/Geometry;->computeYaw(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setYaw(F)V

    goto :goto_1
.end method

.method private autoAssignPoiOnWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 7
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v4

    .line 310
    .local v4, "wayPointIndex":I
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    .line 311
    .local v2, "previousWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 312
    .local v0, "nextWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v3

    .line 314
    .local v3, "previousWayPointPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v1

    .line 315
    .local v1, "nextWayPointPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v5

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 316
    invoke-virtual {p1, v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V

    .line 319
    .end local v1    # "nextWayPointPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .end local v3    # "previousWayPointPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :cond_0
    return-void
.end method

.method private convertTiltAngle(Ljava/util/List;Z)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "toRelativeAngle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/TiltAction;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p1, "tiltActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/TiltAction;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 777
    :cond_0
    return-void

    .line 762
    :cond_1
    const/4 v1, 0x0

    .line 763
    .local v1, "curAngle":F
    if-eqz p2, :cond_2

    .line 765
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    .line 766
    .local v0, "action":Lcom/parrot/freeflight/flightplan/model/action/TiltAction;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->getVerticalAngle()F

    move-result v2

    .line 767
    .local v2, "value":F
    sub-float v4, v2, v1

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->setVerticalAngle(F)V

    .line 768
    move v1, v2

    .line 769
    goto :goto_0

    .line 772
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/TiltAction;
    .end local v2    # "value":F
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    .line 773
    .restart local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/TiltAction;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->getVerticalAngle()F

    move-result v4

    add-float/2addr v1, v4

    .line 774
    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->setVerticalAngle(F)V

    goto :goto_1
.end method

.method public static destroy()V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->sInstance:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "FlightPlanDataCenter"

    const-string v1, "destroy FlightPlanDataCenter ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->sInstance:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->dispose()V

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->sInstance:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .line 83
    :cond_0
    return-void
.end method

.method private dump()V
    .locals 6

    .prologue
    .line 845
    const-string v3, "FlightPlanDataCenter"

    const-string v4, "           .           "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 847
    .local v0, "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->dumpAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    goto :goto_0

    .line 849
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 850
    .local v2, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    const-string v4, "FlightPlanDataCenter"

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v1

    .line 852
    .local v1, "wayPointActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 853
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 854
    .restart local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->dumpAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    goto :goto_1

    .line 858
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v1    # "wayPointActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    .end local v2    # "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    return-void
.end method

.method private dumpAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V
    .locals 3
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isStartMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    const-string v0, "FlightPlanDataCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isStopMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    const-string v0, "FlightPlanDataCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 866
    :cond_1
    const-string v0, "FlightPlanDataCenter"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getActionsToMove(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)Ljava/util/List;
    .locals 7
    .param p1, "wp"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "needRemove"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    const/4 v5, 0x0

    .line 202
    .local v5, "removedActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 203
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "removedActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .restart local v5    # "removedActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isForFixedWing()Z

    move-result v6

    if-nez v6, :cond_2

    .line 205
    const/4 v3, 0x0

    .line 206
    .local v3, "landingActionFound":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 207
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 208
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 209
    .local v1, "curAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    if-nez v3, :cond_1

    instance-of v6, v1, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 210
    :cond_1
    if-eqz v3, :cond_0

    .line 211
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    if-eqz p2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 216
    .end local v1    # "curAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    .end local v3    # "landingActionFound":Z
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 217
    .local v4, "lastAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    instance-of v6, v4, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;

    if-nez v6, :cond_3

    instance-of v6, v4, Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;

    if-eqz v6, :cond_4

    .line 218
    :cond_3
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    if-eqz p2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    .end local v4    # "lastAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x0

    .line 224
    :cond_5
    return-object v5
.end method

.method private getAllTiltActions()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/TiltAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/TiltAction;>;"
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 749
    .local v0, "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    instance-of v4, v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 751
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 752
    .local v2, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 753
    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 754
    .restart local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    instance-of v5, v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    if-eqz v5, :cond_3

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 757
    .end local v2    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_4
    return-object v1
.end method

.method private getColorNotUsed()I
    .locals 7

    .prologue
    .line 135
    const/4 v0, -0x1

    .line 136
    .local v0, "colorIndex":I
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 137
    sget-object v4, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->FLIGHTPLAN_POI_COLORS:[I

    array-length v4, v4

    new-array v1, v4, [Z

    .line 138
    .local v1, "colorUsed":[Z
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    .line 139
    .local v3, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    sget-object v5, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->FLIGHTPLAN_POI_COLORS:[I

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getColor()I

    move-result v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    goto :goto_0

    .line 141
    .end local v3    # "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    if-gez v0, :cond_2

    .line 142
    aget-boolean v4, v1, v2

    if-nez v4, :cond_1

    move v0, v2

    .line 141
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    .end local v1    # "colorUsed":[Z
    .end local v2    # "i":I
    :cond_2
    if-gez v0, :cond_3

    .line 146
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->FLIGHTPLAN_POI_COLORS:[I

    array-length v5, v5

    rem-int v0, v4, v5

    .line 149
    :cond_3
    sget-object v4, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->FLIGHTPLAN_POI_COLORS:[I

    aget v4, v4, v0

    return v4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->sInstance:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->sInstance:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->sInstance:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->sInstance:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 618
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    return-object v0
.end method

.method private getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .locals 2
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 612
    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    goto :goto_0
.end method

.method private isForFixedWing()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v0

    return v0
.end method

.method private isNavigatorAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z
    .locals 1
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 879
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/action/TakeOffAction;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/action/LandingAction;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/action/DelayAction;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStartMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z
    .locals 1
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 871
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStopMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z
    .locals 1
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 875
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTiltAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z
    .locals 1
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 883
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    return v0
.end method

.method private removeTiltActions(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 4
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 559
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v1

    .line 560
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 561
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 562
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 563
    .local v0, "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->isTiltAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 564
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 568
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_1
    return-void
.end method

.method private removeTiltActionsIfNeeded(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 5
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 544
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v2

    .line 545
    .local v2, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v2, :cond_1

    .line 546
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v0

    .line 547
    .local v0, "index":I
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    .line 548
    .local v3, "prevWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v4

    if-ne v4, v2, :cond_0

    .line 549
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->removeTiltActions(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 551
    :cond_0
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 552
    .local v1, "nextWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 553
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->removeTiltActions(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 556
    .end local v0    # "index":I
    .end local v1    # "nextWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v3    # "prevWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_1
    return-void
.end method

.method private updateWaypointsCharacteristics()V
    .locals 4

    .prologue
    .line 108
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 109
    .local v0, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 110
    .local v1, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    invoke-virtual {v1, v0, v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setPlanProductInfo(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    goto :goto_0

    .line 112
    .end local v1    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_0
    return-void
.end method


# virtual methods
.method public addActionToWayPoint(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 0
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 598
    invoke-virtual {p2, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    .line 599
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 600
    return-void
.end method

.method public addPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Z)I
    .locals 1
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isSelected"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->setIndex(I)V

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 232
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v0

    return v0
.end method

.method public addTakeOffAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V
    .locals 1
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 603
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 605
    return-void
.end method

.method public addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)I
    .locals 5
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isSelected"    # Z

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v1

    .line 285
    .local v1, "index":I
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 287
    iget-boolean v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 288
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v3, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->copyParams(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v3, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoAssignPoiOnWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 294
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 295
    .local v2, "size":I
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 296
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setIndex(I)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateAroundYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 300
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 304
    .end local v0    # "i":I
    .end local v2    # "size":I
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 302
    :cond_2
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->appendWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    goto :goto_1
.end method

.method public addWayPointToPoi(II)V
    .locals 2
    .param p1, "wayPointIndex"    # I
    .param p2, "poiIndex"    # I

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 384
    .local v1, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    .line 386
    .local v0, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->attachWayPointToPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V

    .line 388
    .end local v0    # "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :cond_0
    return-void
.end method

.method public attachWayPointToPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V
    .locals 2
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 446
    invoke-virtual {p1, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V

    .line 448
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->updateLockOnPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 449
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateWayPointYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 450
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->removeTiltActionsIfNeeded(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 452
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 453
    .local v0, "previousWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->updateLockOnPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 455
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateWayPointYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 459
    return-void
.end method

.method public autoUpdateAroundYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 5
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 528
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v0

    .line 529
    .local v0, "index":I
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    .line 530
    .local v2, "prevWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 531
    .local v1, "nextWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getFollow()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 532
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateWayPointYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 534
    :cond_0
    invoke-virtual {p1, v2, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->updateYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 535
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getFollow()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 536
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateWayPointYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 538
    :cond_1
    return-void
.end method

.method public autoUpdateWayPointYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 3
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 523
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v0

    .line 524
    .local v0, "index":I
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->updateYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 525
    return-void
.end method

.method public buckle(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 6
    .param p1, "bucklingWayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 572
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 573
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 574
    .local v1, "lastWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eq p1, v1, :cond_0

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    :cond_0
    move v0, v3

    .line 575
    .local v0, "bucklingWpExist":Z
    :goto_0
    if-nez v0, :cond_1

    .line 576
    invoke-virtual {p0, p1, v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)I

    .line 578
    :cond_1
    iput-boolean v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    .line 579
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 581
    .end local v0    # "bucklingWpExist":Z
    .end local v1    # "lastWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    return-void

    .restart local v1    # "lastWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_3
    move v0, v2

    .line 574
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    .line 834
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 835
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 836
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 837
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->reset()V

    .line 838
    return-void
.end method

.method public createMavlinkFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 714
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 715
    const-string v6, "FlightPlanDataCenter"

    const-string v7, "Sorry, nothing to create mavlink file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/parrot/freeflight/flightplan/model/SavedPlanEditorFactory;->createMavlinkSavedPlanEditor(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;

    move-result-object v3

    .line 718
    .local v3, "mavlinkEditor":Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;
    if-eqz v3, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getAllTiltActions()Ljava/util/List;

    move-result-object v4

    .line 721
    .local v4, "tiltActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/TiltAction;>;"
    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->convertTiltAngle(Ljava/util/List;Z)V

    .line 723
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v3, v6}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->savePois(Ljava/util/List;)V

    .line 725
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    invoke-interface {v3, v6}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->saveActions(Ljava/util/List;)V

    .line 727
    const/4 v1, 0x0

    .local v1, "it":I
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "length":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 728
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 730
    .local v5, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isEndLinearLanding()Z

    move-result v6

    if-nez v6, :cond_2

    .line 731
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->saveWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 732
    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    .line 733
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 735
    invoke-interface {v3, v0}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->saveActions(Ljava/util/List;)V

    .line 727
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 739
    .end local v5    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_3
    invoke-interface {v3}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->commit()V

    .line 740
    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->convertTiltAngle(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public createPoi(FLcom/google/android/gms/maps/model/LatLng;)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .locals 2
    .param p1, "altitude"    # F
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getColorNotUsed()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;-><init>(IFLcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->clear()V

    .line 842
    return-void
.end method

.method public getActionStream()Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 633
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$ActionStreamEditor;-><init>(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$1;)V

    return-object v0
.end method

.method public getEditionState()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mEditionState:I

    return v0
.end method

.method public getGeneralInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 829
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    return-object v0
.end method

.method public getMapInfo()Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mMapInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    return-object v0
.end method

.method public getNbWayPoints()I
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPlanProductCharacteristics()Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    return-object v0
.end method

.method public getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 401
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    .line 404
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPois()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    return-object v0
.end method

.method public getTakeOffActions()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    return-object v0
.end method

.method public getUuidInWorking()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 623
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 626
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWayPoints()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    return-object v0
.end method

.method public hasFixedWingLanding()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1236
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1237
    .local v1, "nbWayPoints":I
    if-lez v1, :cond_1

    .line 1238
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 1239
    .local v0, "lastWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isEndLinearLanding()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1241
    .end local v0    # "lastWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_1
    return v2
.end method

.method public isBuckled()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    return v0
.end method

.method public isPlanSaved()Z
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPoiContinueModeUsed()Z
    .locals 3

    .prologue
    .line 780
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 781
    .local v0, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isContinueMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    .line 783
    .end local v0    # "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPlanChanged()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->markModified(Z)V

    .line 797
    return-void
.end method

.method public onPoiMoved(ILcom/google/android/gms/maps/model/LatLng;)V
    .locals 6
    .param p1, "poiIndex"    # I
    .param p2, "position"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v2

    .line 267
    .local v2, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v2, :cond_1

    .line 268
    invoke-virtual {v2, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 271
    const/4 v0, 0x0

    .local v0, "it":I
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 272
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 273
    .local v3, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v4

    .line 275
    .local v4, "wpPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 276
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateWayPointYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "it":I
    .end local v1    # "length":I
    .end local v3    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v4    # "wpPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :cond_1
    return-void
.end method

.method public onWayPointMoved(ILcom/google/android/gms/maps/model/LatLng;)V
    .locals 4
    .param p1, "wayPointIndex"    # I
    .param p2, "position"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 347
    .local v1, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v1, :cond_1

    .line 348
    invoke-virtual {v1, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 349
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateAroundYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 351
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 353
    .local v0, "bucklingWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 355
    .end local v0    # "bucklingWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 357
    :cond_1
    return-void
.end method

.method public onYawEditStop(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 8
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 462
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    .line 463
    .local v3, "prevWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    .line 465
    .local v2, "nextWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    const/4 v1, 0x0

    .line 466
    .local v1, "attached":Z
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/freeflight/util/Geometry;->computeYaw(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 468
    .local v0, "angle":F
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->similarAngle(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 470
    const/4 v1, 0x1

    .line 471
    invoke-virtual {p1, v7}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setFollowPoi(Z)V

    .line 472
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setYaw(F)V

    .line 476
    .end local v0    # "angle":F
    :cond_0
    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    .line 477
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/freeflight/util/Geometry;->computeYaw(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 478
    .restart local v0    # "angle":F
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->similarAngle(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    const/4 v1, 0x1

    .line 481
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setFollow(I)V

    .line 482
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setYaw(F)V

    .line 485
    .end local v0    # "angle":F
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 486
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/freeflight/util/Geometry;->computeYaw(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 487
    .restart local v0    # "angle":F
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->similarAngle(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 489
    const/4 v1, 0x1

    .line 490
    invoke-virtual {p1, v7}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setFollow(I)V

    .line 491
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setYaw(F)V

    .line 495
    .end local v0    # "angle":F
    :cond_2
    if-nez v1, :cond_3

    .line 496
    invoke-virtual {p1, v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setFollowPoi(Z)V

    .line 497
    invoke-virtual {p1, v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setFollow(I)V

    .line 498
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setLastYaw(F)V

    .line 503
    :cond_3
    iget-boolean v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_4

    if-eqz v2, :cond_4

    .line 504
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setYaw(F)V

    .line 506
    :cond_4
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 507
    return-void
.end method

.method public refreshPlanWithSavedPlan(Ljava/lang/String;)Z
    .locals 11
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 643
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;

    const/4 v9, 0x0

    invoke-direct {v0, p0, v9}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;-><init>(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$1;)V

    .line 644
    .local v0, "callBack":Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;
    invoke-static {p1, v0}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->parseJsonFile(Ljava/lang/String;Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;)Z

    move-result v6

    .line 645
    .local v6, "success":Z
    if-eqz v6, :cond_2

    .line 646
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 647
    .local v4, "nbWayPoints":I
    if-le v4, v8, :cond_1

    .line 648
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 649
    .local v1, "firstWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    iget-object v9, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    iget-object v10, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 650
    .local v2, "lastWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v9

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v10

    cmpl-float v9, v9, v10

    if-nez v9, :cond_0

    move v7, v8

    :cond_0
    iput-boolean v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    .line 652
    .end local v1    # "firstWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v2    # "lastWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_1
    const/4 v7, 0x2

    if-le v4, v7, :cond_2

    .line 653
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    add-int/lit8 v9, v4, -0x2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 654
    .local v5, "penultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v7

    if-nez v7, :cond_2

    .line 655
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    add-int/lit8 v9, v4, -0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 656
    .local v3, "linearLandingEndWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setLandingLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 657
    invoke-virtual {v3, v8}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setEndLinearLanding(Z)V

    .line 662
    .end local v3    # "linearLandingEndWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v4    # "nbWayPoints":I
    .end local v5    # "penultimateWayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getVersion()I

    move-result v7

    if-gez v7, :cond_3

    .line 664
    invoke-static {p1, v0}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->parseMavlinkFile(Ljava/lang/String;Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;)Z

    move-result v6

    .line 667
    :cond_3
    return v6
.end method

.method public removePoi(I)V
    .locals 6
    .param p1, "poiIndex"    # I

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v1

    .line 238
    .local v1, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v1, :cond_3

    .line 239
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 241
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 242
    .local v2, "size":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 243
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    invoke-virtual {v4, v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->setIndex(I)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 247
    .local v3, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v5

    if-ne v5, v1, :cond_1

    .line 248
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V

    .line 249
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateWayPointYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    goto :goto_1

    .line 252
    .end local v3    # "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 254
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_3
    return-void
.end method

.method public removeWayPoint(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x1

    .line 409
    if-ltz p1, :cond_6

    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p1, v7, :cond_6

    .line 410
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v7}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    .line 411
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 412
    const-string v7, "FlightPlanDataCenter"

    const-string v8, "This WP has actions attached, Forgot to check wayPoint removable !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    if-eqz v7, :cond_1

    .line 416
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 417
    .local v3, "newFirstWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    iget-object v8, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 418
    .local v1, "buckingWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v1, v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->copyParams(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 420
    .end local v1    # "buckingWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v3    # "newFirstWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_1
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_2

    add-int/lit8 v7, p1, -0x1

    if-ltz v7, :cond_2

    .line 421
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    add-int/lit8 v8, p1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 423
    .local v4, "newLastWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-direct {p0, v7, v9}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getActionsToMove(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)Ljava/util/List;

    move-result-object v6

    .line 424
    .local v6, "removedActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    if-eqz v6, :cond_2

    invoke-virtual {v4, v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addActions(Ljava/util/List;)V

    .line 426
    .end local v4    # "newLastWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v6    # "removedActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :cond_2
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 428
    move v2, p1

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 429
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v7, v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setIndex(I)V

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    :cond_3
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPreviousWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v5

    .line 433
    .local v5, "prevWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v5, :cond_4

    .line 434
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->updateLockOnPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 435
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateWayPointYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 437
    :cond_4
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p1, v7, :cond_5

    .line 438
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->autoUpdateWayPointYaw(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 441
    :cond_5
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 443
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    .end local v2    # "i":I
    .end local v5    # "prevWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_6
    return-void
.end method

.method public removeWayPointFromPoi(II)V
    .locals 2
    .param p1, "wayPointIndex"    # I
    .param p2, "poiIndex"    # I

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 394
    .local v0, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v0, :cond_0

    .line 395
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->attachWayPointToPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V

    .line 397
    :cond_0
    return-void
.end method

.method public saveCurrentState(Ljava/lang/String;)V
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 683
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getAllTiltActions()Ljava/util/List;

    move-result-object v4

    .line 684
    .local v4, "tiltActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/TiltAction;>;"
    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->convertTiltAngle(Ljava/util/List;Z)V

    .line 685
    invoke-static {p1}, Lcom/parrot/freeflight/flightplan/model/SavedPlanEditorFactory;->createJsonSavedPlanEditor(Ljava/lang/String;)Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;

    move-result-object v2

    .line 686
    .local v2, "jsonEditor":Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->markModified(Z)V

    .line 688
    :cond_0
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-interface {v2, v6}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->saveGeneralInfo(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V

    .line 690
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mMapInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    invoke-interface {v2, v6}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->saveMapInfo(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V

    .line 692
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mTakeOffActions:Ljava/util/List;

    invoke-interface {v2, v6}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->saveActions(Ljava/util/List;)V

    .line 694
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPois:Ljava/util/List;

    invoke-interface {v2, v6}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->savePois(Ljava/util/List;)V

    .line 696
    const/4 v1, 0x0

    .local v1, "it":I
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "length":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 697
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 698
    .local v5, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->saveWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 699
    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getActions()Ljava/util/List;

    move-result-object v0

    .line 700
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 702
    invoke-interface {v2, v0}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->saveActions(Ljava/util/List;)V

    .line 696
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    .end local v5    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    invoke-interface {v2}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;->commit()V

    .line 707
    invoke-direct {p0, v4, v7}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->convertTiltAngle(Ljava/util/List;Z)V

    .line 708
    return-void
.end method

.method public saveCurrentState(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/util/Date;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "date"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "savedPlanMapInfo"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 674
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->setProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 675
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v0, p3}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->setTitle(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v0, p4}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->setDate(Ljava/util/Date;)V

    .line 677
    iput-object p5, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mMapInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    .line 678
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->saveCurrentState(Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public setEditionState(I)V
    .locals 0
    .param p1, "editionState"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mEditionState:I

    .line 126
    return-void
.end method

.method public setMapInfo(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V
    .locals 0
    .param p1, "mapInfo"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 824
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mMapInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    .line 825
    return-void
.end method

.method public setPlanProductInfo(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 1
    .param p1, "planProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "planProductCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mGeneralInfo:Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->setProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 116
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mPlanProductCharacteristics:Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 117
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->updateWaypointsCharacteristics()V

    .line 118
    return-void
.end method

.method public similarAngle(FF)Z
    .locals 2
    .param p1, "newAngle"    # F
    .param p2, "oldAngle"    # F

    .prologue
    .line 510
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unbuckle()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    .line 588
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPlanChanged()V

    .line 590
    :cond_0
    return-void
.end method

.method public updateLockOnPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 4
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 514
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 515
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 516
    .local v0, "nextWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setIsLockedOnPoi(Z)V

    .line 520
    .end local v0    # "nextWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setIsLockedOnPoi(Z)V

    goto :goto_0
.end method

.method public updatePoiAltitude(IF)V
    .locals 1
    .param p1, "poiIndex"    # I
    .param p2, "altitude"    # F

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    .line 259
    .local v0, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->setAltitude(F)V

    .line 262
    :cond_0
    return-void
.end method

.method public updateWayPointAltitude(IF)V
    .locals 4
    .param p1, "wayPointIndex"    # I
    .param p2, "altitude"    # F

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 362
    .local v1, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setAltitude(F)V

    .line 365
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 367
    .local v0, "bucklingWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setAltitude(F)V

    .line 370
    .end local v0    # "bucklingWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_0
    return-void
.end method

.method public updateWayPointIndex(I)V
    .locals 1
    .param p1, "wayPointIndex"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setIndex(I)V

    .line 325
    return-void
.end method

.method public updateWayPointSpeed(II)V
    .locals 1
    .param p1, "wayPointIndex"    # I
    .param p2, "speed"    # I

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 375
    .local v0, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setSpeed(I)V

    .line 378
    :cond_0
    return-void
.end method

.method public updateYaw(IF)V
    .locals 3
    .param p1, "wayPointIndex"    # I
    .param p2, "yaw"    # F

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    .line 330
    .local v1, "wp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setYaw(F)V

    .line 335
    iget-boolean v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mIsBuckled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->mWayPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne p1, v2, :cond_0

    .line 336
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNextWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 337
    .local v0, "invisibleWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setYaw(F)V

    .line 342
    .end local v0    # "invisibleWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_0
    return-void
.end method
