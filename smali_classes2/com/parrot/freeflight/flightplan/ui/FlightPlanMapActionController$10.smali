.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;
.super Ljava/lang/Object;
.source "FlightPlanMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointAltitudeChanged(IIF)V
    .locals 8
    .param p1, "pointType"    # I
    .param p2, "pointIndex"    # I
    .param p3, "newAltitude"    # F

    .prologue
    .line 1280
    const/4 v3, 0x0

    cmpg-float v3, p3, v3

    if-gez v3, :cond_1

    .line 1281
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultAltitude()F

    move-result v0

    .line 1285
    .local v0, "altitude":F
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-interface {v3, p1, p2, v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeProgressBarValue(III)V

    .line 1286
    if-nez p1, :cond_2

    .line 1287
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    .line 1288
    .local v2, "selectedWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v3

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_0

    .line 1289
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    new-instance v4, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2400(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    move-result-object v5

    sget-object v6, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_ALTITUDE:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v4, v2, v5, v6, v7}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 1290
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v3, p2, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changeWayPointAltitude(IF)V

    .line 1299
    .end local v2    # "selectedWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_0
    :goto_1
    return-void

    .line 1283
    .end local v0    # "altitude":F
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinAltitude()F

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .restart local v0    # "altitude":F
    goto :goto_0

    .line 1292
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 1293
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getPoi(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v1

    .line 1294
    .local v1, "selectedPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getAltitude()F

    move-result v3

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_0

    .line 1295
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    new-instance v4, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2500(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;

    move-result-object v5

    sget-object v6, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->POI_ALTITUDE:Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/parrot/freeflight/flightplan/model/history/ModifyPoiRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 1296
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$10;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v3, p2, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changePoiAltitude(IF)V

    goto :goto_1
.end method
