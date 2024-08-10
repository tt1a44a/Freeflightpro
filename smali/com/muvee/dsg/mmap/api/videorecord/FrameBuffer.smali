.class public Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# instance fields
.field private a:[I

.field private b:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->a:[I

    .line 15
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->b:[I

    return-void
.end method


# virtual methods
.method public bind(II)V
    .locals 6

    .prologue
    const v3, 0x8d40

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 67
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->a:[I

    aget v0, v0, v4

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 70
    const v0, 0x8ce0

    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->b:[I

    aget v2, v2, v4

    invoke-static {v3, v0, v1, v2, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 72
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 73
    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    .line 74
    const-string v1, "com.muvee.dsg.mmas.api.advancevideomixer.FrameBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::bind:status != GLES20.GL_FRAMEBUFFER_COMPLETE status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    invoke-static {v4, v4, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v5, v5, v5, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 83
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 84
    return-void

    .line 76
    :cond_0
    const-string v1, "com.muvee.dsg.mmas.api.advancevideomixer.FrameBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::bind:status == GLES20.GL_FRAMEBUFFER_COMPLETE status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public create(II)V
    .locals 9

    .prologue
    const/16 v5, 0x2601

    const/16 v2, 0x1907

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 20
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->a:[I

    invoke-static {v4, v3, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 23
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->b:[I

    invoke-static {v4, v3, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 26
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->b:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 29
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 31
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 33
    const/16 v3, 0x2800

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 35
    const/16 v3, 0x2801

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 38
    const v7, 0x8363

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 40
    return-void
.end method

.method public delete()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->b:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 93
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->a:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 94
    return-void
.end method

.method public getTextureId()I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public setupTextRenderToTexture(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 45
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->b:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->b:[I

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 51
    const/16 v0, 0x2802

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 53
    const/16 v0, 0x2803

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 55
    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 57
    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 60
    invoke-static {v2, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 62
    return-void
.end method

.method public unBind()V
    .locals 2

    .prologue
    .line 88
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 89
    return-void
.end method
