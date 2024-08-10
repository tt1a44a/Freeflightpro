.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;
.super Ljava/lang/Object;
.source "FlightPlanMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;


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
    .line 255
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapScroll(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 259
    .local v15, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 261
    .local v16, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v10

    .line 262
    .local v10, "mapProjection":Lcom/parrot/freeflight/map/IProjection;
    const/4 v7, 0x0

    .line 264
    .local v7, "eventHold":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->isEditionEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getUnitConverter()Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;

    move-result-object v14

    .line 266
    .local v14, "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/4 v6, 0x1

    .line 267
    .local v6, "editingPoi":Z
    :goto_0
    const/4 v13, 0x0

    .line 269
    .local v13, "tryToEditYaw":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;II)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1200(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;

    move-result-object v17

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToSceneSpace(F)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;->find(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    move-result-object v4

    .line 272
    .local v4, "clickedObject":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    if-eqz v4, :cond_2

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$500(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$600(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)F

    move-result v18

    int-to-float v0, v15

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)F

    move-result v21

    invoke-static/range {v17 .. v21}, Lcom/parrot/freeflight/util/Geometry;->pointInsideCircle(FFFFF)Z

    move-result v17

    if-nez v17, :cond_1

    .line 275
    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->getObject3D()Lcom/parrot/engine3d/objects/GLObject3D;

    move-result-object v5

    .line 276
    .local v5, "clickedObject3D":Lcom/parrot/engine3d/objects/GLObject3D;
    instance-of v0, v5, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    if-nez v6, :cond_0

    move-object v9, v5

    .line 277
    check-cast v9, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 278
    .local v9, "holdWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->getPointToObjectDist()F

    move-result v17

    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getScale()F

    move-result v18

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 279
    const/4 v13, 0x1

    .line 280
    invoke-virtual {v9}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isLockedOnPoi()Z

    move-result v17

    if-nez v17, :cond_0

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$402(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Z)Z

    .line 285
    .end local v9    # "holdWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;->getClickedPoint()Landroid/graphics/PointF;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v5, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1400(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/parrot/engine3d/objects/GLObject3D;Landroid/graphics/PointF;ZZ)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    check-cast v5, Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    .end local v5    # "clickedObject3D":Lcom/parrot/engine3d/objects/GLObject3D;
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$002(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    .line 288
    :cond_1
    const/4 v7, 0x1

    .line 292
    .end local v4    # "clickedObject":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$500(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$600(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)F

    move-result v18

    int-to-float v0, v15

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1300(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)F

    move-result v21

    invoke-static/range {v17 .. v21}, Lcom/parrot/freeflight/util/Geometry;->pointInsideCircle(FFFFF)Z

    move-result v17

    if-nez v17, :cond_3

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$400(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v17

    check-cast v17, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    int-to-float v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertXToSceneSpace(F)F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;->getPosX()F

    move-result v20

    sub-float v19, v19, v20

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;->getPosY()F

    move-result v21

    sub-float v20, v20, v21

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v22}, Lcom/parrot/freeflight/util/Geometry;->computeAngle(FFFF)F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onYawChanged(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;F)V

    .line 310
    :cond_3
    :goto_1
    const/4 v7, 0x1

    .line 313
    .end local v6    # "editingPoi":Z
    .end local v13    # "tryToEditYaw":Z
    .end local v14    # "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$900(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onMapCameraChanged(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$1500(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/map/MapGLRenderingView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 315
    return v7

    .line 266
    .restart local v14    # "unitConverter":Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 297
    .restart local v6    # "editingPoi":Z
    .restart local v13    # "tryToEditYaw":Z
    :cond_6
    if-nez v13, :cond_3

    .line 298
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToSceneSpace(F)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;->getYCorrection()F

    move-result v18

    sub-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/parrot/freeflight/flightplan/GlScreenUnitConverter;->convertYToScreenSpace(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    .line 299
    .local v12, "newYPosition":I
    new-instance v17, Landroid/graphics/Point;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v12}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/parrot/freeflight/map/IProjection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v11

    .line 300
    .local v11, "newPointLatLng":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    if-nez v6, :cond_7

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v9

    check-cast v9, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 302
    .restart local v9    # "holdWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v11}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onWayPointMoved(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 304
    .end local v9    # "holdWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->access$000(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    .line 306
    .local v8, "holdPoi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController$5;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v11}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->onPoiMoved(Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;Lcom/google/android/gms/maps/model/LatLng;)V

    goto/16 :goto_1
.end method
