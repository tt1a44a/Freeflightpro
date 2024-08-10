.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;
.super Ljava/lang/Object;
.source "ImageTexture.java"


# instance fields
.field private a:[I

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;->a:[I

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

    .line 18
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;->b:Landroid/graphics/Bitmap;

    .line 19
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;->a:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 22
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;->a:[I

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 25
    const/16 v0, 0x2802

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 27
    const/16 v0, 0x2803

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 29
    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 31
    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 34
    invoke-static {v2, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 36
    return-void
.end method

.method public getTextureInfo()Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;->a:[I

    aget v1, v1, v3

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->NORMAL:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;-><init>(ILcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;III)V

    return-object v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/ImageTexture;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 44
    return-void
.end method
