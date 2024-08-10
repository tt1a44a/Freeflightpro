.class public Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;
.super Ljava/lang/Object;
.source "MavlinkEditor.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;


# instance fields
.field private mMavlinkFileGenerator:Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMavlinkFilePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPreviousSpeed:I

.field private mPreviousViewMode:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPreviousWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 1
    .param p1, "mavlinkFilePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/armavlink/ARMavlinkException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mPreviousSpeed:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mPreviousViewMode:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    .line 41
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 42
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFilePath:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    invoke-direct {v0}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFileGenerator:Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    .line 44
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->CACHED_MAVLINK_FILE_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFilePath:Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFileGenerator:Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->CreateMavlinkFile(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFileGenerator:Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->dispose()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFileGenerator:Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    .line 115
    return-void
.end method

.method public saveActions(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 103
    .local v0, "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFileGenerator:Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mPreviousWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;->createMissionItem(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->addMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    goto :goto_0

    .line 105
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_0
    return-void
.end method

.method public saveGeneralInfo(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V
    .locals 2
    .param p1, "generalInfo"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t save savePlanItem to mavlink file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveMapInfo(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V
    .locals 2
    .param p1, "mapInfo"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t save mapInfo to mavlink file"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public savePois(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "poiList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    .line 59
    .local v0, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFileGenerator:Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->addMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    goto :goto_0

    .line 61
    .end local v0    # "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :cond_0
    return-void
.end method

.method public saveWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 6
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "nextWayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFileGenerator:Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->addMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 97
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mPreviousWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 98
    return-void

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getSpeed()I

    move-result v2

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mPreviousSpeed:I

    if-eq v2, v3, :cond_2

    .line 71
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getSpeed()I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mPreviousSpeed:I

    .line 72
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFileGenerator:Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    const/4 v3, 0x0

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mPreviousSpeed:I

    int-to-float v4, v4

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v3, v4, v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->CreateMavlinkChangeSpeedMissionItem(IFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->addMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFileGenerator:Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->addMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 80
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v2

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 81
    sget-object v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_ROI:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    .line 82
    .local v0, "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v1

    .line 91
    .local v1, "poiIndex":I
    :goto_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mPreviousViewMode:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mMavlinkFileGenerator:Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->CreateMavlinkSetViewMode(Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;I)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->addMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 93
    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/MavlinkEditor;->mPreviousViewMode:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    goto :goto_0

    .line 83
    .end local v0    # "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .end local v1    # "poiIndex":I
    :cond_3
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isContinueMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    sget-object v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_CONTINUE:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    .line 85
    .restart local v0    # "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    const/4 v1, -0x1

    .restart local v1    # "poiIndex":I
    goto :goto_1

    .line 87
    .end local v0    # "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .end local v1    # "poiIndex":I
    :cond_4
    sget-object v0, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_ABSOLUTE:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    .line 88
    .restart local v0    # "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    const/4 v1, -0x1

    .restart local v1    # "poiIndex":I
    goto :goto_1
.end method
