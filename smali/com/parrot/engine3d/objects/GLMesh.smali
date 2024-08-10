.class public Lcom/parrot/engine3d/objects/GLMesh;
.super Lcom/parrot/engine3d/objects/GLObject3D;
.source "GLMesh.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/engine3d/objects/GLMesh$Usage;
    }
.end annotation


# static fields
.field protected static final INDICES_BUFFER_INDEX:I = 0x1

.field protected static final TEX_COORD_OFFSET:I = 0xc

.field protected static final VERTICES_BUFFER_INDEX:I = 0x0

.field protected static final VERTICES_BUFFER_STRIDE:I = 0x14


# instance fields
.field protected mBackColor:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mBufferIds:[I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mDrawingMode:I

.field protected mFrontColor:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mIndices:[S
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mIndicesUsage:I

.field private mLineWidth:F

.field private mNbBuffers:I

.field protected mResourcesCreated:Z

.field protected mShader:Lcom/parrot/engine3d/GLShader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mVertices:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mVerticesUsage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/parrot/engine3d/objects/GLMesh;-><init>([F[SLcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V
    .locals 1
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "texture"    # Lcom/parrot/engine3d/buffer/textures/GLTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/parrot/engine3d/objects/GLMesh;-><init>([F[SLcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 81
    return-void
.end method

.method public constructor <init>([F[S)V
    .locals 1
    .param p1, "vertices"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "indices"    # [S
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/parrot/engine3d/objects/GLMesh;-><init>([F[SLcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 85
    return-void
.end method

.method public constructor <init>([F[SLcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V
    .locals 4
    .param p1, "vertices"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "indices"    # [S
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "texture"    # Lcom/parrot/engine3d/buffer/textures/GLTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v0, 0x88e4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 42
    iput v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mVerticesUsage:I

    .line 48
    iput v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mIndicesUsage:I

    .line 65
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mLineWidth:F

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mDrawingMode:I

    .line 73
    iput-boolean v3, p0, Lcom/parrot/engine3d/objects/GLMesh;->mResourcesCreated:Z

    .line 88
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mVertices:[F

    .line 89
    iput-object p2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mIndices:[S

    .line 90
    iput-object p3, p0, Lcom/parrot/engine3d/objects/GLMesh;->mShader:Lcom/parrot/engine3d/GLShader;

    .line 91
    iput-object p4, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    .line 93
    invoke-virtual {p0, v1, v1, v1, v3}, Lcom/parrot/engine3d/objects/GLMesh;->setPosition(FFFZ)V

    .line 94
    invoke-virtual {p0, v1, v1, v1, v3}, Lcom/parrot/engine3d/objects/GLMesh;->setRotation(FFFZ)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v2, v2, v0}, Lcom/parrot/engine3d/objects/GLMesh;->setScale(FFFZ)V

    .line 96
    return-void
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mResourcesCreated:Z

    return v0
.end method

.method protected createBuffers()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const v7, 0x8893

    const v6, 0x8892

    const/4 v5, 0x0

    .line 220
    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mVertices:[F

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mIndices:[S

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_0
    iput v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mNbBuffers:I

    .line 223
    iget v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mNbBuffers:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBufferIds:[I

    .line 224
    iget v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mNbBuffers:I

    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBufferIds:[I

    invoke-static {v2, v4, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 226
    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mVertices:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 227
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 229
    .local v1, "verticesBuffer":Ljava/nio/FloatBuffer;
    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 230
    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 232
    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBufferIds:[I

    aget v2, v2, v5

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 233
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget v4, p0, Lcom/parrot/engine3d/objects/GLMesh;->mVerticesUsage:I

    invoke-static {v6, v2, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 236
    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mIndices:[S

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mIndices:[S

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 238
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 240
    .local v0, "indicesBuffer":Ljava/nio/ShortBuffer;
    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mIndices:[S

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 241
    invoke-virtual {v0, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 243
    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBufferIds:[I

    aget v2, v2, v3

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 244
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/parrot/engine3d/objects/GLMesh;->mIndicesUsage:I

    invoke-static {v7, v2, v0, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 245
    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 247
    .end local v0    # "indicesBuffer":Ljava/nio/ShortBuffer;
    :cond_0
    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 249
    .end local v1    # "verticesBuffer":Ljava/nio/FloatBuffer;
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 221
    goto :goto_0
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/parrot/engine3d/objects/GLMesh;->createBuffers()V

    .line 181
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->areResourcesCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->createGLResources(Landroid/content/res/Resources;)Z

    .line 184
    :cond_0
    iput-boolean v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mResourcesCreated:Z

    .line 185
    return v1
.end method

.method public deleteGLResources()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-boolean v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mResourcesCreated:Z

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBufferIds:[I

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mNbBuffers:I

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBufferIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->deleteGLResources()V

    .line 205
    :cond_1
    iput-boolean v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mResourcesCreated:Z

    .line 207
    :cond_2
    return-void
.end method

.method public draw([F[F[F)V
    .locals 8
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
    .line 120
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBufferIds:[I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v1, :cond_8

    .line 121
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mMvpMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLMesh;->mModelMatrix:[F

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 123
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mShader:Lcom/parrot/engine3d/GLShader;

    iget-object v1, v1, Lcom/parrot/engine3d/GLShader;->mAttributes:Ljava/util/Map;

    const-string v2, "aPosition"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 124
    .local v0, "positionHandle":I
    const/4 v7, -0x1

    .line 126
    .local v7, "texCordHandle":I
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 127
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mShader:Lcom/parrot/engine3d/GLShader;

    iget-object v1, v1, Lcom/parrot/engine3d/GLShader;->mAttributes:Ljava/util/Map;

    const-string v2, "aTexCoord"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 129
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v1}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->enable()V

    .line 130
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1, v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->sendToShader(Lcom/parrot/engine3d/GLShader;)V

    .line 133
    :cond_0
    const v1, 0x8892

    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBufferIds:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 135
    iget v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mLineWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 136
    iget v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mLineWidth:F

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mShader:Lcom/parrot/engine3d/GLShader;

    iget-object v1, v1, Lcom/parrot/engine3d/GLShader;->mUniforms:Ljava/util/Map;

    const-string/jumbo v2, "uMvpMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLMesh;->mMvpMatrix:[F

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 140
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mFrontColor:[F

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mShader:Lcom/parrot/engine3d/GLShader;

    iget-object v1, v1, Lcom/parrot/engine3d/GLShader;->mUniforms:Ljava/util/Map;

    const-string/jumbo v2, "uFrontColor"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parrot/engine3d/objects/GLMesh;->mFrontColor:[F

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBackColor:[F

    if-eqz v1, :cond_3

    .line 144
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mShader:Lcom/parrot/engine3d/GLShader;

    iget-object v1, v1, Lcom/parrot/engine3d/GLShader;->mUniforms:Ljava/util/Map;

    const-string/jumbo v2, "uBackColor"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBackColor:[F

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 147
    :cond_3
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 148
    if-ltz v7, :cond_4

    .line 149
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 152
    :cond_4
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 153
    if-ltz v7, :cond_5

    .line 154
    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/16 v6, 0xc

    move v1, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 157
    :cond_5
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mIndices:[S

    if-eqz v1, :cond_9

    .line 158
    const v1, 0x8893

    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBufferIds:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 159
    iget v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mDrawingMode:I

    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mIndices:[S

    array-length v2, v2

    const/16 v3, 0x1403

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 160
    const v1, 0x8893

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 165
    :goto_0
    if-ltz v7, :cond_6

    .line 166
    invoke-static {v7}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 168
    :cond_6
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 169
    const v1, 0x8892

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 170
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    if-eqz v1, :cond_7

    .line 171
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v1}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->disable()V

    .line 173
    :cond_7
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 175
    .end local v0    # "positionHandle":I
    .end local v7    # "texCordHandle":I
    :cond_8
    return-void

    .line 162
    .restart local v0    # "positionHandle":I
    .restart local v7    # "texCordHandle":I
    :cond_9
    iget v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mDrawingMode:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/engine3d/objects/GLMesh;->mVertices:[F

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0
.end method

.method public getBackColor()[F
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBackColor:[F

    return-object v0
.end method

.method public getFrontColor()[F
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mFrontColor:[F

    return-object v0
.end method

.method public getTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    return-object v0
.end method

.method public markResourcesCreated(Z)V
    .locals 0
    .param p1, "resourcesCreated"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mResourcesCreated:Z

    .line 217
    return-void
.end method

.method public setBackColor([F)V
    .locals 0
    .param p1, "backColor"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 266
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mBackColor:[F

    .line 267
    return-void
.end method

.method public setDrawingMode(I)V
    .locals 0
    .param p1, "drawingMode"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mDrawingMode:I

    .line 271
    return-void
.end method

.method public setFrontColor([F)V
    .locals 0
    .param p1, "frontColor"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 257
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mFrontColor:[F

    .line 258
    return-void
.end method

.method public setIndices([S)V
    .locals 1
    .param p1, "indices"    # [S
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 283
    const v0, 0x88e4

    invoke-virtual {p0, p1, v0}, Lcom/parrot/engine3d/objects/GLMesh;->setIndices([SI)V

    .line 284
    return-void
.end method

.method public setIndices([SI)V
    .locals 0
    .param p1, "indices"    # [S
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "usage"    # I

    .prologue
    .line 287
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mIndices:[S

    .line 288
    iput p2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mIndicesUsage:I

    .line 289
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .param p1, "lineWidth"    # F

    .prologue
    .line 114
    iput p1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mLineWidth:F

    .line 115
    return-void
.end method

.method public setShader(Lcom/parrot/engine3d/GLShader;)V
    .locals 0
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mShader:Lcom/parrot/engine3d/GLShader;

    .line 100
    return-void
.end method

.method public setTexture(Lcom/parrot/engine3d/buffer/textures/GLTexture;)V
    .locals 0
    .param p1, "texture"    # Lcom/parrot/engine3d/buffer/textures/GLTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 103
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    .line 104
    return-void
.end method

.method public setVertices([F)V
    .locals 1
    .param p1, "vertices"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    const v0, 0x88e4

    invoke-virtual {p0, p1, v0}, Lcom/parrot/engine3d/objects/GLMesh;->setVertices([FI)V

    .line 275
    return-void
.end method

.method public setVertices([FI)V
    .locals 0
    .param p1, "vertices"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "usage"    # I

    .prologue
    .line 278
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mVertices:[F

    .line 279
    iput p2, p0, Lcom/parrot/engine3d/objects/GLMesh;->mVerticesUsage:I

    .line 280
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->updateResources(Landroid/content/res/Resources;)V

    .line 193
    :cond_0
    return-void
.end method

.method public updateTextureBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 107
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    instance-of v1, v1, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    if-eqz v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLMesh;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    check-cast v0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    .line 109
    .local v0, "texture2D":Lcom/parrot/engine3d/buffer/textures/GLTexture2D;
    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    .end local v0    # "texture2D":Lcom/parrot/engine3d/buffer/textures/GLTexture2D;
    :cond_0
    return-void
.end method
