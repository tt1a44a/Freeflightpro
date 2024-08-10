.class public Lcom/muvee/dsg/mmas/api/texture/util/ImageTexture;
.super Ljava/lang/Object;
.source "ImageTexture.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/texture/util/Frame;


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/ImageTexture;->a:[I

    return-void
.end method


# virtual methods
.method public create(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 17
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/util/ImageTexture;->a:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 20
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/util/ImageTexture;->a:[I

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 23
    const/16 v0, 0x2802

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 25
    const/16 v0, 0x2803

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 27
    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 29
    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 32
    invoke-static {v2, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 34
    return-void
.end method

.method public getTextureInfo()Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/util/ImageTexture;->a:[I

    aget v1, v1, v3

    sget-object v2, Lcom/muvee/dsg/mmas/api/texture/util/TextureRender$TextureType;->NORMAL:Lcom/muvee/dsg/mmas/api/texture/util/TextureRender$TextureType;

    invoke-direct {v0, v1, v2, v3}, Lcom/muvee/dsg/mmas/api/texture/util/TextureInfo;-><init>(ILcom/muvee/dsg/mmas/api/texture/util/TextureRender$TextureType;I)V

    return-object v0
.end method

.method public isFrameReady()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/util/ImageTexture;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 57
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
