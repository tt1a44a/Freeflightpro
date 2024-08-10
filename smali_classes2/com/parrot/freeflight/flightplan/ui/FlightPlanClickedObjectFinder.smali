.class public Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;
.super Ljava/lang/Object;
.source "FlightPlanClickedObjectFinder.java"


# static fields
.field private static final FACILITATE_LINE_DETECTION_CONSTANT:I = 0xf


# instance fields
.field private final mLineDetectionSize:F

.field private final mScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;F)V
    .locals 1
    .param p1, "scene"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "densityFactor"    # F

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;->mScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    .line 24
    const/high16 v0, 0x43160000    # 150.0f

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;->mLineDetectionSize:F

    .line 25
    return-void
.end method

.method private findPoiClick(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;->mScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getPois()Ljava/util/List;

    move-result-object v4

    .line 63
    .local v4, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 65
    .local v2, "nbPois":I
    const/4 v1, 0x0

    .local v1, "it":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 66
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;

    .line 67
    .local v3, "poi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPosX()F

    move-result v5

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPosY()F

    move-result v6

    invoke-static {p1, p2, v5, v6}, Lcom/parrot/freeflight/util/Geometry;->dist(FFFF)F

    move-result v0

    .line 68
    .local v0, "dist":F
    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getScale()F

    move-result v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    .line 69
    new-instance v5, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v5, v3, v6, v0}, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;-><init>(Lcom/parrot/engine3d/objects/GLObject3D;Landroid/graphics/PointF;F)V

    .line 72
    .end local v0    # "dist":F
    .end local v3    # "poi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    :goto_1
    return-object v5

    .line 65
    .restart local v0    # "dist":F
    .restart local v3    # "poi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "dist":F
    .end local v3    # "poi":Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private findWpClick(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;->mScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWayPoints()Ljava/util/List;

    move-result-object v14

    .line 39
    .local v14, "wayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    .line 40
    .local v12, "nbWayPoints":I
    const/4 v11, 0x0

    .line 43
    .local v11, "lastWayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    const/4 v10, 0x0

    .local v10, "it":I
    :goto_0
    if-ge v10, v12, :cond_2

    .line 44
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 45
    .local v13, "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    invoke-virtual {v13}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosX()F

    move-result v2

    invoke-virtual {v13}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosY()F

    move-result v3

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/util/Geometry;->dist(FFFF)F

    move-result v9

    .line 47
    .local v9, "dist":F
    invoke-virtual {v13}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getFullScale()F

    move-result v2

    cmpg-float v2, v9, v2

    if-gez v2, :cond_0

    .line 48
    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    new-instance v3, Landroid/graphics/PointF;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v2, v13, v3, v9}, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;-><init>(Lcom/parrot/engine3d/objects/GLObject3D;Landroid/graphics/PointF;F)V

    .line 57
    .end local v9    # "dist":F
    .end local v13    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :goto_1
    return-object v2

    .line 49
    .restart local v9    # "dist":F
    .restart local v13    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_0
    if-eqz v11, :cond_1

    .line 50
    invoke-virtual {v13}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndX()F

    move-result v4

    invoke-virtual {v13}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndY()F

    move-result v5

    invoke-virtual {v11}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartX()F

    move-result v6

    invoke-virtual {v11}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartY()F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lcom/parrot/freeflight/util/Geometry;->distanceToSegment(FFFFFFF)F

    move-result v9

    .line 51
    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;->mLineDetectionSize:F

    cmpg-float v2, v9, v2

    if-gez v2, :cond_1

    .line 52
    new-instance v8, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;->mScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    add-int/lit8 v3, v10, -0x1

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getLine(I)Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    move-result-object v15

    invoke-virtual {v13}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndX()F

    move-result v4

    invoke-virtual {v13}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndY()F

    move-result v5

    invoke-virtual {v11}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartX()F

    move-result v6

    invoke-virtual {v11}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartY()F

    move-result v7

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lcom/parrot/freeflight/util/Geometry;->findPointProjectionOnSegment(FFFFFF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-direct {v8, v15, v2, v9}, Lcom/parrot/freeflight/flightplan/ui/ClickedObject;-><init>(Lcom/parrot/engine3d/objects/GLObject3D;Landroid/graphics/PointF;F)V

    move-object v2, v8

    goto :goto_1

    .line 55
    :cond_1
    move-object v11, v13

    .line 43
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 57
    .end local v9    # "dist":F
    .end local v13    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public find(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;->findPoiClick(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    move-result-object v0

    .line 30
    .local v0, "clickedWp":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    if-eqz v0, :cond_0

    .line 33
    .end local v0    # "clickedWp":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    :goto_0
    return-object v0

    .restart local v0    # "clickedWp":Lcom/parrot/freeflight/flightplan/ui/ClickedObject;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanClickedObjectFinder;->findWpClick(FF)Lcom/parrot/freeflight/flightplan/ui/ClickedObject;

    move-result-object v0

    goto :goto_0
.end method
