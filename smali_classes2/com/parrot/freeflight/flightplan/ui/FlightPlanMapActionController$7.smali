.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;
.super Ljava/lang/Object;
.source "FlightPlanMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordInterface;


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
    .line 1143
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPoiUpdate(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;)V
    .locals 6
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "modifyEnum"    # Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 1146
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v0

    .line 1148
    .local v0, "poiIndex":I
    const-string v2, "FPMapActionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPoiUpdate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    sget-object v2, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$11;->$SwitchMap$com$parrot$freeflight$flightplan$model$history$PoiRecord$PoiRecordType:[I

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/history/PoiRecord$PoiRecordType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1169
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeObjectsPosition()V

    .line 1170
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1500(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/map/MapGLRenderingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 1171
    return-void

    .line 1151
    :pswitch_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v2, p1, v5, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;ZZ)V

    goto :goto_0

    .line 1154
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {v2, v0, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->removePoi(IZ)V

    goto :goto_0

    .line 1157
    :pswitch_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getAltitude()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changePoiAltitude(IF)V

    .line 1158
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1159
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getAltitude()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v2, v3, v0, v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->setAltitudeProgressBarValue(III)V

    goto :goto_0

    .line 1163
    :pswitch_3
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1164
    .local v1, "poiLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1800(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->onPoiMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 1165
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onPoiMoved(ILcom/google/android/gms/maps/model/LatLng;)V

    .line 1166
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$7;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeWayPointAndSurroundingObjectsPositions(I)V

    goto :goto_0

    .line 1149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
