.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;


# instance fields
.field private a:[I

.field private b:[I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->a:[I

    .line 13
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->b:[I

    return-void
.end method


# virtual methods
.method public bind(II)V
    .locals 6

    .prologue
    const v3, 0x8d40

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->a:[I

    aget v0, v0, v4

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 52
    const v0, 0x8ce0

    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->b:[I

    aget v2, v2, v4

    invoke-static {v3, v0, v1, v2, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 54
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 55
    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    .line 56
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

    .line 61
    :goto_0
    invoke-static {v4, v4, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v5, v5, v5, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 65
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 68
    return-void

    .line 58
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
    iput p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->c:I

    .line 21
    iput p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->d:I

    .line 24
    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->a:[I

    invoke-static {v4, v3, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 27
    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->b:[I

    invoke-static {v4, v3, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 30
    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->b:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 33
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 35
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 37
    const/16 v3, 0x2800

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 39
    const/16 v3, 0x2801

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 42
    const v7, 0x8363

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 44
    return-void
.end method

.method public delete()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->b:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 77
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->a:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 78
    return-void
.end method

.method public getTextureInfo()Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->b:[I

    aget v1, v1, v3

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->NORMAL:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    iget v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->c:I

    iget v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/FrameBuffer;->d:I

    invoke-direct/range {v0 .. v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;-><init>(ILcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;III)V

    return-object v0
.end method

.method public isFrameReady()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public resumeAfter(J)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public unBind()V
    .locals 2

    .prologue
    .line 72
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 73
    return-void
.end method