.class public Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;
.super Lcom/parrot/engine3d/objects/GLObject3D;
.source "GLIntermediatePoint.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;


# instance fields
.field private final mArrow:Lcom/parrot/engine3d/objects/GLMesh;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCameraBearing:F

.field private mCameraTilt:F

.field private final mCenter:Lcom/parrot/engine3d/objects/GLMesh;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mScale:F

.field private mYaw:F


# direct methods
.method public constructor <init>(FLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "shader"    # Lcom/parrot/engine3d/GLShader;
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

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 32
    if-eqz p3, :cond_0

    .line 33
    new-instance v0, Lcom/parrot/engine3d/objects/GLRect3D;

    new-instance v1, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    invoke-direct {v1, p3, v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-direct {v0, p2, v1}, Lcom/parrot/engine3d/objects/GLRect3D;-><init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    sget-object v1, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setFrontColor([F)V

    .line 39
    :goto_0
    if-eqz p4, :cond_1

    .line 40
    new-instance v0, Lcom/parrot/engine3d/objects/GLRect3D;

    new-instance v1, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    invoke-direct {v1, p4, v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-direct {v0, p2, v1}, Lcom/parrot/engine3d/objects/GLRect3D;-><init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    sget-object v1, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setFrontColor([F)V

    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    sget-object v1, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setBackColor([F)V

    .line 46
    :goto_1
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setScale(F)V

    .line 47
    return-void

    .line 36
    :cond_0
    iput-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    goto :goto_0

    .line 44
    :cond_1
    iput-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    goto :goto_1
.end method

.method private updateObjectsRotations()V
    .locals 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCameraTilt:F

    neg-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCameraBearing:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mYaw:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/engine3d/objects/GLMesh;->setRotation(FFF)V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

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
    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->createGLResources(Landroid/content/res/Resources;)Z

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->createGLResources(Landroid/content/res/Resources;)Z

    .line 145
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public deleteGLResources()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLMesh;->deleteGLResources()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0}, Lcom/parrot/engine3d/objects/GLMesh;->deleteGLResources()V

    .line 168
    :cond_1
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
    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLMesh;->draw([F[F[F)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLMesh;->draw([F[F[F)V

    .line 134
    :cond_1
    return-void
.end method

.method public getCameraBearing()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCameraBearing:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mScale:F

    return v0
.end method

.method public markResourcesCreated(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->markResourcesCreated(Z)V

    .line 180
    :cond_0
    return-void
.end method

.method public setCameraRotationInfo(FF)V
    .locals 0
    .param p1, "cameraTilt"    # F
    .param p2, "cameraBearing"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCameraTilt:F

    .line 91
    iput p2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCameraBearing:F

    .line 92
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->updateObjectsRotations()V

    .line 93
    return-void
.end method

.method public setColor([F[F)V
    .locals 2
    .param p1, "centerColor"    # [F
    .param p2, "arrowColor"    # [F

    .prologue
    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    sget-object v1, Lcom/parrot/freeflight/flightplan/MapGLConstants;->GL_WHITE_COLOR:[F

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setFrontColor([F)V

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->setBackColor([F)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p2}, Lcom/parrot/engine3d/objects/GLMesh;->setFrontColor([F)V

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p2}, Lcom/parrot/engine3d/objects/GLMesh;->setBackColor([F)V

    .line 191
    :cond_1
    return-void
.end method

.method public setPosition(FF)V
    .locals 4
    .param p1, "posX"    # F
    .param p2, "posY"    # F

    .prologue
    const/4 v3, 0x1

    .line 69
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mPosZ:F

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->setPosition(FFFZ)V

    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mPosZ:F

    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/parrot/engine3d/objects/GLMesh;->setPosition(FFFZ)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mPosZ:F

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/parrot/engine3d/objects/GLMesh;->setPosition(FFFZ)V

    .line 76
    :cond_1
    return-void
.end method

.method public setPosition(FFF)V
    .locals 2
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/parrot/engine3d/objects/GLObject3D;->setPosition(FFFZ)V

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLMesh;->setPosition(FFF)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setPosition(FFF)V

    .line 87
    :cond_1
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/parrot/engine3d/objects/GLObject3D;->setScale(F)V

    .line 117
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mScale:F

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->setScale(F)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/objects/GLMesh;->setScale(F)V

    .line 124
    :cond_1
    return-void
.end method

.method public setShader(Lcom/parrot/engine3d/GLShader;)V
    .locals 1
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->setShader(Lcom/parrot/engine3d/GLShader;)V

    .line 65
    :cond_1
    return-void
.end method

.method public setYaw(F)V
    .locals 0
    .param p1, "yaw"    # F

    .prologue
    .line 100
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mYaw:F

    .line 101
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->updateObjectsRotations()V

    .line 102
    return-void
.end method

.method public updateBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "centerBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arrowBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p2}, Lcom/parrot/engine3d/objects/GLMesh;->updateTextureBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    :cond_1
    return-void
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
    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mCenter:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->updateResources(Landroid/content/res/Resources;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLIntermediatePoint;->mArrow:Lcom/parrot/engine3d/objects/GLMesh;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLMesh;->updateResources(Landroid/content/res/Resources;)V

    .line 157
    :cond_1
    return-void
.end method
