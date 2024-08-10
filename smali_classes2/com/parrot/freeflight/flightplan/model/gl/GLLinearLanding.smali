.class public Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;
.super Lcom/parrot/engine3d/objects/GLObject3D;
.source "GLLinearLanding.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;


# static fields
.field private static final COLORS_BUFFER_STRIDE:I = 0x10

.field private static final END_COLOR_INDEX:I = 0x8

.field private static final NB_POINTS:I = 0x3

.field private static final VERTICES_BUFFER_STRIDE:I = 0xc


# instance fields
.field private mColorsBuffer:Ljava/nio/FloatBuffer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mColorsCoords:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGradientShader:Lcom/parrot/engine3d/GLShader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVerticesBuffer:Ljava/nio/FloatBuffer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVerticesCoords:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/engine3d/GLShader;[F[F)V
    .locals 1
    .param p1, "gradientShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "baseColor"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "finalColor"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mGradientShader:Lcom/parrot/engine3d/GLShader;

    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->initPosition()V

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    .line 46
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsCoords:[F

    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->updateColors([F[F)V

    .line 48
    return-void
.end method

.method private createBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsCoords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsCoords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    return-void
.end method

.method private initPosition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0, v0, v0, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->setPosition(FFFZ)V

    .line 52
    invoke-virtual {p0, v0, v0, v0, v2}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->setRotation(FFFZ)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->setScale(FFFZ)V

    .line 54
    return-void
.end method

.method private updateBaseColors([FZ)V
    .locals 5
    .param p1, "baseColor"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "updateColorBuffer"    # Z

    .prologue
    const/4 v4, 0x4

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "it":I
    const/4 v0, 0x0

    .local v0, "colorIt":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 138
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsCoords:[F

    aget v3, p1, v0

    aput v3, v2, v1

    .line 137
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 141
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsCoords:[F

    aget v3, p1, v0

    aput v3, v2, v1

    .line 140
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsCoords:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 145
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    :cond_2
    return-void
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->createBuffers()V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public deleteGLResources()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public draw([F[F[F)V
    .locals 9
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
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mGradientShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mMvpMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mModelMatrix:[F

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 63
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mGradientShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 64
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mGradientShader:Lcom/parrot/engine3d/GLShader;

    iget-object v1, v1, Lcom/parrot/engine3d/GLShader;->mUniforms:Ljava/util/Map;

    const-string v2, "uMvpMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 65
    .local v8, "mvpMatrixHandle":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mGradientShader:Lcom/parrot/engine3d/GLShader;

    iget-object v1, v1, Lcom/parrot/engine3d/GLShader;->mAttributes:Ljava/util/Map;

    const-string v2, "aPosition"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    .local v0, "positionHandle":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mGradientShader:Lcom/parrot/engine3d/GLShader;

    iget-object v1, v1, Lcom/parrot/engine3d/GLShader;->mAttributes:Ljava/util/Map;

    const-string v2, "aColor"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 68
    .local v7, "colorHandle":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mMvpMatrix:[F

    const/4 v4, 0x0

    invoke-static {v8, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 70
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 71
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 73
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 74
    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x10

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    move v1, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 76
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 78
    invoke-static {v7}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 79
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mGradientShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 83
    .end local v0    # "positionHandle":I
    .end local v7    # "colorHandle":I
    .end local v8    # "mvpMatrixHandle":I
    :cond_0
    return-void
.end method

.method public markResourcesCreated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 117
    return-void
.end method

.method public setShader(Lcom/parrot/engine3d/GLShader;)V
    .locals 0
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 171
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mGradientShader:Lcom/parrot/engine3d/GLShader;

    .line 172
    return-void
.end method

.method public updateBaseColors([F)V
    .locals 1
    .param p1, "baseColor"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->updateBaseColors([FZ)V

    .line 132
    return-void
.end method

.method public updateColors([F[F)V
    .locals 5
    .param p1, "baseColor"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "finalColor"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-direct {p0, p1, v4}, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->updateBaseColors([FZ)V

    .line 121
    const/16 v1, 0x8

    .local v1, "it":I
    const/4 v0, 0x0

    .local v0, "colorIt":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsCoords:[F

    aget v3, p2, v0

    aput v3, v2, v1

    .line 121
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsCoords:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 126
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    :cond_1
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    return-void
.end method

.method public updateVertices(FFFFFFFFF)V
    .locals 3
    .param p1, "base1X"    # F
    .param p2, "base1Y"    # F
    .param p3, "base1Z"    # F
    .param p4, "base2X"    # F
    .param p5, "base2Y"    # F
    .param p6, "base2Z"    # F
    .param p7, "endX"    # F
    .param p8, "endY"    # F
    .param p9, "endZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    aput p1, v0, v2

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    const/4 v1, 0x4

    aput p5, v0, v1

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    const/4 v1, 0x6

    aput p7, v0, v1

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    const/4 v1, 0x7

    aput p8, v0, v1

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    const/16 v1, 0x8

    aput p9, v0, v1

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesCoords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/model/gl/GLLinearLanding;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    :cond_0
    return-void
.end method
