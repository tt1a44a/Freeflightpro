.class public Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;
.super Ljava/lang/Object;
.source "CodecOutputSurface.java"


# instance fields
.field private a:I

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Landroid/view/Surface;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkGlError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v1, "com.muvee.dsg.videoframegenerator.CodecOutputSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->c:Landroid/view/Surface;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->a:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->d:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->d:Z

    .line 73
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 74
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 75
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->c:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 77
    return-void
.end method

.method public setUp(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 5

    .prologue
    const v4, 0x812f

    const/4 v1, 0x0

    const/4 v3, 0x1

    const v2, 0x8d65

    .line 28
    new-array v0, v3, [I

    .line 29
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 31
    aget v0, v0, v1

    iput v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->a:I

    .line 32
    iget v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->a:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 33
    const-string v0, "glBindTexture mTextureID"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->checkGlError(Ljava/lang/String;)V

    .line 35
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 37
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 39
    const/16 v0, 0x2802

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 41
    const/16 v0, 0x2803

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 43
    const-string v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->checkGlError(Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->a:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 47
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->c:Landroid/view/Surface;

    .line 49
    iput-boolean v3, p0, Lcom/muvee/dsg/mmas/api/texture/util/CodecOutputSurface;->d:Z

    .line 51
    return-void
.end method
