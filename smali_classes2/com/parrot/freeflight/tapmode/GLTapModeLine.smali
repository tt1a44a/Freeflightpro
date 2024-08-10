.class public Lcom/parrot/freeflight/tapmode/GLTapModeLine;
.super Lcom/parrot/engine3d/objects/GLObject3D;
.source "GLTapModeLine.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;


# instance fields
.field private final mLine:Lcom/parrot/engine3d/objects/GLLine;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/map/gl/GLDrone;Lcom/parrot/freeflight/tapmode/GLTapModePoint;F[F)V
    .locals 3
    .param p1, "lineShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startWayPoint"    # Lcom/parrot/freeflight/map/gl/GLDrone;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "endWayPoint"    # Lcom/parrot/freeflight/tapmode/GLTapModePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "densityFactor"    # F
    .param p5, "color"    # [F

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 22
    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v1, p4

    .line 23
    .local v0, "lineSize":F
    new-instance v1, Lcom/parrot/engine3d/objects/GLLine;

    invoke-direct {p0, p2, p3}, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->getLineCords(Lcom/parrot/freeflight/map/gl/GLDrone;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)[F

    move-result-object v2

    invoke-direct {v1, p1, v0, v2, p5}, Lcom/parrot/engine3d/objects/GLLine;-><init>(Lcom/parrot/engine3d/GLShader;F[F[F)V

    iput-object v1, p0, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    .line 24
    return-void
.end method

.method private getLineCords(Lcom/parrot/freeflight/map/gl/GLDrone;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)[F
    .locals 4
    .param p1, "startWayPoint"    # Lcom/parrot/freeflight/map/gl/GLDrone;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endWayPoint"    # Lcom/parrot/freeflight/tapmode/GLTapModePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const v3, 0x3dcccccd    # 0.1f

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1}, Lcom/parrot/freeflight/map/gl/GLDrone;->getLineStartX()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/parrot/freeflight/map/gl/GLDrone;->getLineStartY()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/parrot/freeflight/map/gl/GLDrone;->getLineStartZ()F

    move-result v2

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 77
    invoke-virtual {p2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getLineEndX()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getLineEndY()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getLineEndZ()F

    move-result v2

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 75
    return-object v0
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLLine;->areResourcesCreated()Z

    move-result v0

    return v0
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLLine;->createGLResources(Landroid/content/res/Resources;)Z

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public deleteGLResources()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLLine;->deleteGLResources()V

    .line 62
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
    .line 28
    invoke-virtual {p0}, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->areResourcesCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLLine;->draw([F[F[F)V

    .line 31
    :cond_0
    return-void
.end method

.method public getLine()Lcom/parrot/engine3d/objects/GLLine;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    return-object v0
.end method

.method public markResourcesCreated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 71
    return-void
.end method

.method public setShader(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/GLShader;)V
    .locals 1
    .param p1, "lineShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "objectShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLLine;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 40
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLLine;->updateResources(Landroid/content/res/Resources;)V

    .line 57
    return-void
.end method

.method public updateWayPoints(Lcom/parrot/freeflight/map/gl/GLDrone;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)V
    .locals 7
    .param p1, "startWayPoint"    # Lcom/parrot/freeflight/map/gl/GLDrone;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wayPoint"    # Lcom/parrot/freeflight/tapmode/GLTapModePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {p2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getWayPointFrontColor()[F

    move-result-object v1

    invoke-virtual {p2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getWayPointFrontColor()[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/engine3d/objects/GLLine;->setColors([F[F)V

    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/GLTapModeLine;->mLine:Lcom/parrot/engine3d/objects/GLLine;

    invoke-virtual {p1}, Lcom/parrot/freeflight/map/gl/GLDrone;->getLineStartX()F

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/map/gl/GLDrone;->getLineStartY()F

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/map/gl/GLDrone;->getLineStartZ()F

    move-result v3

    .line 45
    invoke-virtual {p2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getLineEndX()F

    move-result v4

    invoke-virtual {p2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getLineEndY()F

    move-result v5

    invoke-virtual {p2}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getLineEndZ()F

    move-result v6

    .line 44
    invoke-virtual/range {v0 .. v6}, Lcom/parrot/engine3d/objects/GLLine;->setVerticesCoords(FFFFFF)V

    .line 46
    return-void
.end method
