.class public Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
.super Lcom/parrot/engine3d/objects/GLObject3D;
.source "GLWayPointsLine.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;
.implements Lcom/parrot/freeflight/flightplan/model/gl/IGLFlightPlanObject;


# static fields
.field private static final INTERMEDIATE_POS_1:F = 0.35f

.field private static final INTERMEDIATE_POS_2:F = 0.65f


# instance fields
.field private mEndWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIntermediateArrowsColor:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIntermediatePointsColor:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mLine:Lcom/parrot/engine3d/objects/GLLine;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStartWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;FFF)V
    .locals 9
    .param p1, "lineShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "intermediatePointsShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "centerBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arrowBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "startWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "endWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "densityFactor"    # F
    .param p8, "wpMinAltitude"    # F
    .param p9, "wpMaxAltitude"    # F

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 30
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePointsColor:[F

    .line 33
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediateArrowsColor:[F

    .line 46
    const/high16 v6, 0x41200000    # 10.0f

    mul-float v4, v6, p7

    .line 47
    .local v4, "lineSize":F
    new-instance v6, Lcom/parrot/engine3d/objects/GLLine;

    invoke-direct {p0, p5, p6}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->getLineCords(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)[F

    move-result-object v7

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, p5, p6, v0, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->getSegmentColors(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;FF)[F

    move-result-object v8

    invoke-direct {v6, p1, v4, v7, v8}, Lcom/parrot/engine3d/objects/GLLine;-><init>(Lcom/parrot/engine3d/GLShader;F[F[F)V

    iput-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    .line 49
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 50
    const/high16 v6, 0x41f00000    # 30.0f

    mul-float v3, v6, p7

    .line 51
    .local v3, "intermediatePointsSize":F
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    iput-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    .line 52
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v7, 0x0

    new-instance v8, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    invoke-direct {v8, v3, p2, p3, p4}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;-><init>(FLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    aput-object v8, v6, v7

    .line 53
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v7, 0x1

    new-instance v8, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    invoke-direct {v8, v3, p2, p3, p4}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;-><init>(FLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    aput-object v8, v6, v7

    .line 55
    invoke-virtual {p5}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v5

    .line 56
    .local v5, "startWayPointPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    invoke-virtual {p6}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v2

    .line 57
    .local v2, "endWayPointPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v6

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 58
    invoke-static {v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoiGlColor(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediateArrowsColor:[F

    iput-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePointsColor:[F

    .line 60
    :cond_0
    invoke-direct {p0, p5, p6}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateIntermediatePoints(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V

    .line 64
    .end local v2    # "endWayPointPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .end local v3    # "intermediatePointsSize":F
    .end local v5    # "startWayPointPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :goto_0
    iput-object p5, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mStartWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 65
    iput-object p6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mEndWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 66
    return-void

    .line 62
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    goto :goto_0
.end method

.method private getLineCords(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)[F
    .locals 4
    .param p1, "startWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const v3, 0x3dcccccd    # 0.1f

    .line 227
    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartX()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartY()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartZ()F

    move-result v2

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 230
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndX()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndY()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndZ()F

    move-result v2

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 227
    return-object v0
.end method

.method private getSegmentColors(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;FF)[F
    .locals 7
    .param p1, "startWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "wpMinAltitude"    # F
    .param p4, "wpMaxAltitude"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x437f0000    # 255.0f

    .line 236
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v2

    invoke-static {v2, p3, p4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColor(FFF)I

    move-result v1

    .line 237
    .local v1, "startWayPointColor":I
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v2

    invoke-static {v2, p3, p4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColor(FFF)I

    move-result v0

    .line 238
    .local v0, "endWayPointColor":I
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 240
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    .line 241
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x5

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x6

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v6, v2, v3

    .line 238
    return-object v2
.end method

.method private updateIntermediatePoints(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V
    .locals 1
    .param p1, "startWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateIntermediatePointsCords(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V

    .line 107
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateIntermediatePointsColors()V

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateIntermediatePointsYaw(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V

    .line 110
    :cond_0
    return-void
.end method

.method private updateIntermediatePointsColors()V
    .locals 11

    .prologue
    const v10, 0x3f266666    # 0.65f

    const v9, 0x3eb33333    # 0.35f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v4, :cond_1

    .line 122
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePointsColor:[F

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediateArrowsColor:[F

    if-nez v4, :cond_2

    .line 123
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v4}, Lcom/parrot/engine3d/objects/GLLine;->getColors()[F

    move-result-object v2

    .line 124
    .local v2, "lineColors":[F
    const/4 v4, 0x3

    new-array v0, v4, [F

    const/4 v4, 0x4

    aget v4, v2, v4

    aget v5, v2, v6

    sub-float/2addr v4, v5

    aput v4, v0, v6

    const/4 v4, 0x5

    aget v4, v2, v4

    aget v5, v2, v7

    sub-float/2addr v4, v5

    aput v4, v0, v7

    const/4 v4, 0x6

    aget v4, v2, v4

    aget v5, v2, v8

    sub-float/2addr v4, v5

    aput v4, v0, v8

    .line 125
    .local v0, "colorVector":[F
    const/4 v4, 0x4

    new-array v1, v4, [F

    aget v4, v2, v6

    aget v5, v0, v6

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    aput v4, v1, v6

    aget v4, v2, v7

    aget v5, v0, v7

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    aput v4, v1, v7

    aget v4, v2, v8

    aget v5, v0, v8

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    aput v4, v1, v8

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v4

    .line 126
    .local v1, "firstIntermediatePointColor":[F
    const/4 v4, 0x4

    new-array v3, v4, [F

    aget v4, v2, v6

    aget v5, v0, v6

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    aput v4, v3, v6

    aget v4, v2, v7

    aget v5, v0, v7

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    aput v4, v3, v7

    aget v4, v2, v8

    aget v5, v0, v8

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    aput v4, v3, v8

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    .line 127
    .local v3, "secondIntermediatePointColor":[F
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v4, v4, v6

    sget-object v5, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v4, v1, v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setColor([F[F)V

    .line 128
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v4, v4, v7

    sget-object v5, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v4, v3, v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setColor([F[F)V

    .line 134
    .end local v0    # "colorVector":[F
    .end local v1    # "firstIntermediatePointColor":[F
    .end local v2    # "lineColors":[F
    .end local v3    # "secondIntermediatePointColor":[F
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v4, v4, v6

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePointsColor:[F

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediateArrowsColor:[F

    invoke-virtual {v4, v5, v6}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setColor([F[F)V

    .line 131
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePointsColor:[F

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediateArrowsColor:[F

    invoke-virtual {v4, v5, v6}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setColor([F[F)V

    goto :goto_0
.end method

.method private updateIntermediatePointsCords(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V
    .locals 11
    .param p1, "startWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x2

    const v9, 0x3f266666    # 0.65f

    const v8, 0x3eb33333    # 0.35f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x3

    new-array v0, v1, [F

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosX()F

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosX()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v0, v6

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosY()F

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosY()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v0, v7

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosZ()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, v0, v10

    .line 115
    .local v0, "lineVector":[F
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v1, v1, v6

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosX()F

    move-result v2

    aget v3, v0, v6

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosY()F

    move-result v3

    aget v4, v0, v7

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosZ()F

    move-result v4

    aget v5, v0, v10

    mul-float/2addr v4, v5

    mul-float/2addr v4, v8

    invoke-virtual {v1, v2, v3, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setPosition(FFF)V

    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v1, v1, v7

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosX()F

    move-result v2

    aget v3, v0, v6

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosY()F

    move-result v3

    aget v4, v0, v7

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getPosZ()F

    move-result v4

    aget v5, v0, v10

    mul-float/2addr v4, v5

    mul-float/2addr v4, v9

    invoke-virtual {v1, v2, v3, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setPosition(FFF)V

    .line 118
    .end local v0    # "lineVector":[F
    :cond_0
    return-void
.end method

.method private updateIntermediatePointsYaw(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V
    .locals 8
    .param p1, "startWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    .line 137
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v3, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v2

    .line 139
    .local v2, "startWayPointYaw":F
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v1

    .line 140
    .local v1, "endWayPointYaw":F
    sub-float v0, v1, v2

    .line 142
    .local v0, "angleDiff":F
    const/high16 v3, -0x3ccc0000    # -180.0f

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 143
    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    add-float/2addr v0, v4

    .line 145
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v3, v3, v6

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getCameraTilt()F

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getCameraBearing()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setCameraRotationInfo(FF)V

    .line 146
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v3, v3, v6

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setYaw(F)V

    .line 147
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v3, v3, v7

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getCameraTilt()F

    move-result v4

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getCameraBearing()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setCameraRotationInfo(FF)V

    .line 148
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v3, v3, v7

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setYaw(F)V

    .line 150
    .end local v0    # "angleDiff":F
    .end local v1    # "endWayPointYaw":F
    .end local v2    # "startWayPointYaw":F
    :cond_2
    return-void

    .line 143
    .restart local v0    # "angleDiff":F
    .restart local v1    # "endWayPointYaw":F
    .restart local v2    # "startWayPointYaw":F
    :cond_3
    sub-float/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method public areIntermediatePointsDisplayed()Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->isProgressiveCap()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->isAssociatedToPoi()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areResourcesCreated()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v2}, Lcom/parrot/engine3d/objects/GLLine;->areResourcesCreated()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->areResourcesCreated()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->areResourcesCreated()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public copySecondVertexAttributes(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V
    .locals 6
    .param p1, "wayPointsLine"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->getLine()Lcom/parrot/engine3d/objects/GLLine;

    move-result-object v0

    .line 161
    .local v0, "line":Lcom/parrot/engine3d/objects/GLLine;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLLine;->getSecondVertexX()F

    move-result v2

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLLine;->getSecondVertexY()F

    move-result v3

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLLine;->getSecondVertexZ()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/parrot/engine3d/objects/GLLine;->setSecondVertexCoords(FFF)V

    .line 162
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLLine;->getSecondVertexR()F

    move-result v2

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLLine;->getSecondVertexG()F

    move-result v3

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLLine;->getSecondVertexB()F

    move-result v4

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLLine;->getSecondVertexAlpha()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/parrot/engine3d/objects/GLLine;->setSecondVertexColor(FFFF)V

    .line 164
    iget-object v1, p1, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mEndWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mEndWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 165
    return-void
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLLine;->createGLResources(Landroid/content/res/Resources;)Z

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->createGLResources(Landroid/content/res/Resources;)Z

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->createGLResources(Landroid/content/res/Resources;)Z

    .line 174
    :cond_0
    return v2
.end method

.method public deleteGLResources()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLLine;->deleteGLResources()V

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->deleteGLResources()V

    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->deleteGLResources()V

    .line 193
    :cond_0
    return-void
.end method

.method public draw([F[F[F)V
    .locals 2
    .param p1, "vpMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "projectionMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->areResourcesCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLLine;->draw([F[F[F)V

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->areIntermediatePointsDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->draw([F[F[F)V

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->draw([F[F[F)V

    .line 77
    :cond_0
    return-void
.end method

.method public getEndWayPoint()Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mEndWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    return-object v0
.end method

.method public getLine()Lcom/parrot/engine3d/objects/GLLine;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    return-object v0
.end method

.method public getStartWayPoint()Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mStartWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    return-object v0
.end method

.method public getYCorrection()F
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public isAssociatedToPoi()Z
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mStartWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    .line 214
    .local v0, "firstWpPoi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mEndWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProgressiveCap()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mStartWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isContinueMode()Z

    move-result v0

    return v0
.end method

.method public markResourcesCreated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 202
    return-void
.end method

.method public setIntermediatePointsColor([F[F)V
    .locals 1
    .param p1, "intermediatePointsColor"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "intermediateArrowsColor"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 218
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePointsColor:[F

    .line 219
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediateArrowsColor:[F

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateIntermediatePointsColors()V

    .line 223
    :cond_0
    return-void
.end method

.method public setShader(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/GLShader;)V
    .locals 2
    .param p1, "lineShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "objectShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLLine;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setYCorrection(F)V
    .locals 0
    .param p1, "yCorrection"    # F

    .prologue
    .line 252
    return-void
.end method

.method public updateBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "centerBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arrowBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->updateBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->updateBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 157
    :cond_0
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLLine;->updateResources(Landroid/content/res/Resources;)V

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->updateResources(Landroid/content/res/Resources;)V

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mIntermediatePoints:[Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->updateResources(Landroid/content/res/Resources;)V

    .line 184
    :cond_0
    return-void
.end method

.method public updateWayPoints(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;FF)V
    .locals 11
    .param p1, "startWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endWayPoint"    # Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "wpMinAltitude"    # F
    .param p4, "wpMaxAltitude"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 93
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v0

    invoke-static {v0, p3, p4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColorComponents(FFF)[F

    move-result-object v10

    .line 94
    .local v10, "startWayPointColor":[F
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPoint()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v0

    invoke-static {v0, p3, p4}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getWayPointColorComponents(FFF)[F

    move-result-object v9

    .line 95
    .local v9, "endWayPointColor":[F
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    aget v1, v10, v5

    aget v2, v10, v6

    aget v3, v10, v7

    aget v5, v9, v5

    aget v6, v9, v6

    aget v7, v9, v7

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/parrot/engine3d/objects/GLLine;->setColors(FFFFFFFF)V

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartX()F

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartY()F

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineStartZ()F

    move-result v3

    .line 97
    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndX()F

    move-result v4

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndY()F

    move-result v5

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->getLineEndZ()F

    move-result v6

    .line 96
    invoke-virtual/range {v0 .. v6}, Lcom/parrot/engine3d/objects/GLLine;->setVerticesCoords(FFFFFF)V

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->updateIntermediatePoints(Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;)V

    .line 100
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mStartWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 101
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;->mEndWayPoint:Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;

    .line 102
    return-void
.end method
