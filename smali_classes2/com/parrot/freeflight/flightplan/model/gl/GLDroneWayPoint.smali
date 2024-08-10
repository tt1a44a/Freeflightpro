.class public Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;
.super Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;
.source "GLDroneWayPoint.java"


# instance fields
.field private final mArrow:Lcom/parrot/engine3d/objects/GLMesh;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;FZLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)V
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "scale"    # F
    .param p4, "selected"    # Z
    .param p5, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "centerBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "arrowBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "wpMinAltitude"    # F
    .param p9, "wpMaxAltitude"    # F

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;-><init>(Landroid/content/res/Resources;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;FZFF)V

    .line 27
    if-eqz p6, :cond_1

    .line 28
    new-instance v0, Lcom/parrot/engine3d/bitmaps/BitmapText;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->generatePrimaryText()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06015f

    .line 29
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/high16 v3, -0x1000000

    .line 30
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/engine3d/bitmaps/BitmapText;-><init>(Ljava/lang/String;IIIIZ)V

    .line 32
    .local v0, "altitudeText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    new-instance v1, Lcom/parrot/engine3d/bitmaps/BitmapText;

    invoke-virtual {p2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f06015e

    .line 33
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, -0x1

    const v5, 0x3f555326    # 0.8333f

    .line 34
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const v6, 0x3e34bc6a    # 0.1765f

    .line 35
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-nez p4, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-direct/range {v1 .. v7}, Lcom/parrot/engine3d/bitmaps/BitmapText;-><init>(Ljava/lang/String;IIIIZ)V

    .line 37
    .local v1, "indexText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    new-instance v2, Lcom/parrot/engine3d/objects/GLTextObject;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/parrot/engine3d/bitmaps/BitmapText;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v2, p5, p6, v3}, Lcom/parrot/engine3d/objects/GLTextObject;-><init>(Lcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    .line 43
    .end local v0    # "altitudeText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    .end local v1    # "indexText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    :goto_1
    if-eqz p7, :cond_2

    .line 44
    new-instance v2, Lcom/parrot/engine3d/objects/GLRect3D;

    new-instance v3, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    const/4 v4, 0x0

    invoke-direct {v3, p7, v4}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-direct {v2, p5, v3}, Lcom/parrot/engine3d/objects/GLRect3D;-><init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    .line 49
    :goto_2
    invoke-virtual {p0, p3}, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->setScale(F)V

    .line 50
    const/4 v2, 0x0

    invoke-virtual {p0, p4, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->updateColorsAccordingToSituation(ZZ)V

    .line 51
    return-void

    .line 35
    .restart local v0    # "altitudeText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 39
    .end local v0    # "altitudeText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    goto :goto_1

    .line 46
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    goto :goto_2
.end method

.method private updateArrowColors([F)V
    .locals 2
    .param p1, "poiColor"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isLockedOnPoi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->setFrontColor([F)V

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->setBackColor([F)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->isFollowPoi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->setFrontColor([F)V

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    sget-object v1, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setBackColor([F)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    sget-object v1, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setFrontColor([F)V

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    sget-object v1, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setBackColor([F)V

    goto :goto_0
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->areResourcesCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLMesh;->areResourcesCreated()Z

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

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->createGLResources(Landroid/content/res/Resources;)Z

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->createGLResources(Landroid/content/res/Resources;)Z

    .line 179
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public deleteGLResources()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 194
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->deleteGLResources()V

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLMesh;->deleteGLResources()V

    .line 198
    :cond_0
    return-void
.end method

.method public draw([F[F[F)V
    .locals 1
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
    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->draw([F[F[F)V

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLMesh;->draw([F[F[F)V

    .line 170
    :cond_0
    return-void
.end method

.method public getFullScale()F
    .locals 3

    .prologue
    .line 160
    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mInitialScale:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v1, v2

    .line 161
    .local v0, "arrowScale":F
    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mSelected:Z

    if-eqz v1, :cond_0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    .end local v0    # "arrowScale":F
    :cond_0
    return v0
.end method

.method public markResourcesCreated(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->markResourcesCreated(Z)V

    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->markResourcesCreated(Z)V

    .line 211
    :cond_0
    return-void
.end method

.method public setCameraRotationInfo(FF)V
    .locals 0
    .param p1, "cameraTilt"    # F
    .param p2, "cameraBearing"    # F

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setCameraRotationInfo(FF)V

    .line 136
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->updateRotation()V

    .line 137
    return-void
.end method

.method protected setColorFromAltitude(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setColorFromAltitude(Z)V

    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    sget-object v1, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setFrontColor([F)V

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    sget-object v1, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setBackColor([F)V

    .line 115
    :cond_0
    return-void
.end method

.method public setPosition(FF)V
    .locals 4
    .param p1, "posX"    # F
    .param p2, "posY"    # F

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setPosition(FF)V

    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mYCorrection:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mPosZ:F

    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/parrot/engine3d/objects/GLMesh;->setPosition(FFFZ)V

    .line 123
    :cond_0
    return-void
.end method

.method public setPosition(FFF)V
    .locals 3
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setPosition(FFF)V

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mYCorrection:F

    add-float/2addr v1, p2

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Lcom/parrot/engine3d/objects/GLMesh;->setPosition(FFF)V

    .line 131
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->setScale(F)V

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setScale(F)V

    .line 156
    :cond_0
    return-void
.end method

.method public updateBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "primaryBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "secondaryBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    const/4 v1, 0x1

    const v2, 0x3f555326    # 0.8333f

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const v3, 0x3e34bc6a    # 0.1765f

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 216
    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->updateTextPosition(III)V

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->updateTextPosition(III)V

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLTextObject;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p2}, Lcom/parrot/engine3d/objects/GLMesh;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    :cond_1
    return-void
.end method

.method public updateColorsAccordingToSituation(ZZ)V
    .locals 4
    .param p1, "isSelected"    # Z
    .param p2, "isUpdatingPoi"    # Z

    .prologue
    .line 54
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    .line 56
    .local v0, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz p2, :cond_4

    .line 57
    if-eqz v0, :cond_2

    .line 58
    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoiGlColor(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)[F

    move-result-object v1

    .line 60
    .local v1, "poiColor":[F
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    sget-object v3, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->setFrontColor([F)V

    .line 62
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v2, v1}, Lcom/parrot/engine3d/objects/GLTextObject;->setBackColor([F)V

    .line 64
    :cond_0
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->updateArrowColors([F)V

    .line 91
    .end local v1    # "poiColor":[F
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    sget-object v3, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_BLACK_COLOR:[F

    invoke-virtual {v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->setFrontColor([F)V

    .line 68
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    sget-object v3, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->setBackColor([F)V

    .line 70
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    sget-object v3, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v2, v3}, Lcom/parrot/engine3d/objects/GLMesh;->setFrontColor([F)V

    .line 72
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    sget-object v3, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v2, v3}, Lcom/parrot/engine3d/objects/GLMesh;->setBackColor([F)V

    goto :goto_0

    .line 75
    :cond_4
    if-eqz v0, :cond_7

    .line 76
    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoiGlColor(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)[F

    move-result-object v1

    .line 78
    .restart local v1    # "poiColor":[F
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    if-eqz v2, :cond_5

    .line 79
    if-eqz p1, :cond_6

    .line 80
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    sget-object v3, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->setFrontColor([F)V

    .line 81
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v2, v1}, Lcom/parrot/engine3d/objects/GLTextObject;->setBackColor([F)V

    .line 87
    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->updateArrowColors([F)V

    goto :goto_0

    .line 83
    :cond_6
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    invoke-virtual {v2, v1}, Lcom/parrot/engine3d/objects/GLTextObject;->setFrontColor([F)V

    .line 84
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCenter:Lcom/parrot/engine3d/objects/GLTextObject;

    sget-object v3, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v2, v3}, Lcom/parrot/engine3d/objects/GLTextObject;->setBackColor([F)V

    goto :goto_1

    .line 89
    .end local v1    # "poiColor":[F
    :cond_7
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->setColorFromAltitude(Z)V

    goto :goto_0
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLFlightPlanWayPoint;->updateResources(Landroid/content/res/Resources;)V

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->updateResources(Landroid/content/res/Resources;)V

    .line 189
    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 6

    .prologue
    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCameraTilt:F

    neg-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mCameraBearing:F

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/parrot/engine3d/objects/GLMesh;->setRotation(FFF)V

    .line 143
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->mWayPoint:Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getPoi()Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    move-result-object v0

    .line 144
    .local v0, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    if-eqz v0, :cond_0

    .line 145
    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLPoi;->getPoiGlColor(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)[F

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightplan/model/gl/GLDroneWayPoint;->updateArrowColors([F)V

    .line 148
    .end local v0    # "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    :cond_0
    return-void
.end method
