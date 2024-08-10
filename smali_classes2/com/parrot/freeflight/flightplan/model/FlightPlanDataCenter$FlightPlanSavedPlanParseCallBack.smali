.class Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;
.super Ljava/lang/Object;
.source "FlightPlanDataCenter.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlightPlanSavedPlanParseCallBack"
.end annotation


# instance fields
.field private currentWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentTiltAngle:F

.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V
    .locals 1

    .prologue
    .line 886
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->mCurrentTiltAngle:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;
    .param p2, "x1"    # Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$1;

    .prologue
    .line 886
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;-><init>(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)V

    return-void
.end method


# virtual methods
.method public onActionFound(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V
    .locals 3
    .param p1, "action"    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 921
    instance-of v0, p1, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    if-eqz v0, :cond_0

    .line 924
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->mCurrentTiltAngle:F

    move-object v0, p1

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->getVerticalAngle()F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->mCurrentTiltAngle:F

    .line 925
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->mCurrentTiltAngle:F

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$300(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinTiltAngle()F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$300(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxTiltAngle()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->mCurrentTiltAngle:F

    move-object v0, p1

    .line 926
    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->mCurrentTiltAngle:F

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->setVerticalAngle(F)V

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->currentWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    if-nez v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$700(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    :goto_0
    return-void

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->currentWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->addAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    goto :goto_0
.end method

.method public onMapInfoFound(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V
    .locals 1
    .param p1, "mapInfo"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 900
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$402(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    .line 901
    return-void
.end method

.method public onPoiFound(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V
    .locals 1
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 905
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$500(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->setIndex(I)V

    .line 906
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$500(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    return-void
.end method

.method public onSavedPlanFound(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V
    .locals 3
    .param p1, "generalInfo"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 893
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->clear()V

    .line 894
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$202(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    .line 895
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$200(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristicsFactory;->create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$302(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    .line 896
    return-void
.end method

.method public onWayPointFound(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;I)V
    .locals 1
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "poiIndex"    # I

    .prologue
    .line 911
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->currentWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 912
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setIndex(I)V

    .line 913
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$600(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    if-ltz p2, :cond_0

    .line 915
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter$FlightPlanSavedPlanParseCallBack;->this$0:Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->access$500(Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V

    .line 917
    :cond_0
    return-void
.end method
