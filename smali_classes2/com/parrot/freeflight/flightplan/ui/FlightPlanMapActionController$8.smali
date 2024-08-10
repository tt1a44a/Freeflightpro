.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;
.super Ljava/lang/Object;
.source "FlightPlanMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordInterface;


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
    .line 1174
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWayPointUpdate(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;)V
    .locals 8
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "modifyEnum"    # Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1177
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v1

    .line 1179
    .local v1, "wpIndex":I
    const-string v2, "FPMapActionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWayPointUpdate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    sget-object v2, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$11;->$SwitchMap$com$parrot$freeflight$flightplan$model$history$WayPointRecord$WayPointRecordType:[I

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/history/WayPointRecord$WayPointRecordType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1233
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeObjectsPosition()V

    .line 1234
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1500(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/map/MapGLRenderingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 1235
    return-void

    .line 1182
    :pswitch_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2, p1, v5, v5, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;ZZZ)V

    goto :goto_0

    .line 1185
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2, v1, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;IZ)V

    goto :goto_0

    .line 1188
    :pswitch_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v2, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->buckle(Z)V

    goto :goto_0

    .line 1191
    :pswitch_3
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v2, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->unbuckle(Z)Z

    goto :goto_0

    .line 1194
    :pswitch_4
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changeWayPointAltitude(IF)V

    .line 1195
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1196
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v2, v5, v1, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeProgressBarValue(III)V

    goto :goto_0

    .line 1200
    :pswitch_5
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onWayPointMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 1201
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onWayPointMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 1202
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeWayPointAndSurroundingObjectsPositions(I)V

    goto :goto_0

    .line 1205
    :pswitch_6
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getSpeed()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changeWayPointSpeed(II)V

    .line 1206
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1207
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getSpeed()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setSpeedProgressBarValue(II)V

    goto/16 :goto_0

    .line 1211
    :pswitch_7
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->updateYaw(IF)V

    .line 1212
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onYawEditStop(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 1213
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateYaw(IF)V

    goto/16 :goto_0

    .line 1216
    :pswitch_8
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    .line 1217
    .local v0, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v0, :cond_1

    .line 1218
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->addWayPointToPoi(II)V

    .line 1219
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addWayPointToPoi(II)V

    goto/16 :goto_0

    .line 1221
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->removeWayPointFromPoi(II)V

    .line 1222
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeWayPointFromPoi(II)V

    goto/16 :goto_0

    .line 1226
    .end local v0    # "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :pswitch_9
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v2

    invoke-virtual {v2, v1, v7, v7}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateLineIntermediatePointsColor(I[F[F)V

    goto/16 :goto_0

    .line 1230
    :pswitch_a
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$8;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v3

    invoke-static {v2, p1, v5, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$2200(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;II)V

    goto/16 :goto_0

    .line 1180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
