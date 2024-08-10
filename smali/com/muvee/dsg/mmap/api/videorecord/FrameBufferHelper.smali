.class public Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;
.super Ljava/lang/Object;
.source "FrameBufferHelper.java"


# static fields
.field public static MAX_TEMP_FRAMES:I


# instance fields
.field a:[I

.field b:[I

.field c:[I

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x64

    sput v0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->MAX_TEMP_FRAMES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->MAX_TEMP_FRAMES:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->a:[I

    .line 28
    sget v0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->MAX_TEMP_FRAMES:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->b:[I

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->c:[I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->d:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->e:I

    return-void
.end method


# virtual methods
.method public beforeRender(III)V
    .locals 6

    .prologue
    const v3, 0x8d40

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 179
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->a:[I

    aget v0, v0, p1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 182
    const v0, 0x8ce0

    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->b:[I

    aget v2, v2, p1

    invoke-static {v3, v0, v1, v2, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 184
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 185
    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    .line 186
    const-string v1, "com.muvee.dsg.mmap.api.videorecord.FrameBufferHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::beforeRender:status != GLES20.GL_FRAMEBUFFER_COMPLETE status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    invoke-static {v5, v5, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 210
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 211
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 214
    return-void

    .line 188
    :cond_0
    const-string v1, "com.muvee.dsg.mmap.api.videorecord.FrameBufferHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::beforeRender:status == GLES20.GL_FRAMEBUFFER_COMPLETE status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteAllFBs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    const-string v0, "com.muvee.dsg.mmap.api.videorecord.FrameBufferHelper"

    const-string v1, "::deleteAllFBs:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget v0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->MAX_TEMP_FRAMES:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->b:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 227
    sget v0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->MAX_TEMP_FRAMES:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->a:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 228
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    iput v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->e:I

    .line 230
    return-void
.end method

.method public deleteTexTexture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->c:[I

    aget v0, v0, v2

    if-lez v0, :cond_0

    .line 168
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->c:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 171
    :cond_0
    return-void
.end method

.method public getOffset(II)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->e:I

    sget v1, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->MAX_TEMP_FRAMES:I

    if-ge v0, v1, :cond_0

    .line 40
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->e:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->setupRenderToTexture(III)V

    .line 41
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->e:I

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->e:I

    sget v1, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->MAX_TEMP_FRAMES:I

    if-lt v0, v1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 48
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public giveBackOffset(I)V
    .locals 5

    .prologue
    .line 52
    const-string v0, "com.muvee.dsg.mmap.api.videorecord.FrameBufferHelper"

    const-string v1, "::giveBackOffset: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public setupRenderToTexture(III)V
    .locals 9

    .prologue
    const/16 v2, 0x1907

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 62
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->a:[I

    invoke-static {v7, v3, p1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 66
    const-string v3, "com.muvee.dsg.mmap.api.videorecord.FrameBufferHelper"

    const-string v4, "::setupRenderToTexture: fb=%d,error=%d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->a:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->b:[I

    invoke-static {v7, v3, p1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 70
    const-string v3, "com.muvee.dsg.mmap.api.videorecord.FrameBufferHelper"

    const-string v4, "::setupRenderToTexture: tx=%d,error=%d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->b:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->b:[I

    aget v3, v3, p1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 76
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 78
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 80
    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 82
    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 93
    const v7, 0x8363

    const/4 v8, 0x0

    move v3, p2

    move v4, p3

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 116
    return-void
.end method

.method public setupTextRenderToTexture(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 124
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->c:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 127
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->c:[I

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 130
    const/16 v0, 0x2802

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 132
    const/16 v0, 0x2803

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 134
    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 136
    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 139
    invoke-static {v2, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 164
    return-void
.end method

.method public unBind()V
    .locals 2

    .prologue
    .line 218
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 222
    return-void
.end method
