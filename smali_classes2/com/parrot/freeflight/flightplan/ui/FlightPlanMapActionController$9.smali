.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;
.super Ljava/lang/Object;
.source "FlightPlanMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;


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
    .line 1258
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLineSpeedChanged(I)V
    .locals 6
    .param p1, "newSpeed"    # I

    .prologue
    .line 1262
    if-gez p1, :cond_1

    .line 1263
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultSpeed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1267
    .local v1, "speed":Ljava/lang/Integer;
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getWayPoint(I)Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    .line 1268
    .local v0, "selectedWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getSpeed()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1269
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    new-instance v3, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2400(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;

    move-result-object v4

    sget-object v5, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->WAYPOINT_SPEED:Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;

    invoke-direct {v3, v0, v4, v5, v1}, Lcom/parrot/freeflight/flightplan/model/history/ModifyWayPointRecord;-><init>(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addNewRecord(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)V

    .line 1270
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setSpeedProgressBarValue(II)V

    .line 1271
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changeWayPointSpeed(II)V

    .line 1273
    :cond_0
    return-void

    .line 1265
    .end local v0    # "selectedWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v1    # "speed":Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinHorizontalSpeed()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$9;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxHorizontalSpeed()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "speed":Ljava/lang/Integer;
    goto :goto_0
.end method
