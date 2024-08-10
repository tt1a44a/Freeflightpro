.class public Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;
.super Ljava/lang/Object;
.source "MultiMediaCustomTextRenderer.java"

# interfaces
.implements Lcom/muvee/dsg/text/CustomTextRenderer;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/text/custom/seqment/Seqment;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Canvas;

.field private f:Ljava/nio/ByteBuffer;

.field private g:F

.field private h:I

.field private i:I

.field private j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->a:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->b:Landroid/graphics/Paint;

    .line 51
    sget-object v0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->b:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    sget-object v0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    sget-object v0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->c:Ljava/util/List;

    .line 72
    const v0, 0x3fe38e39

    iput v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->g:F

    .line 74
    const/16 v0, 0x280

    iput v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->h:I

    .line 75
    const/high16 v0, 0x44200000    # 640.0f

    iget v1, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->g:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->i:I

    .line 76
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    iget v1, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->h:I

    iget v2, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->i:I

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;-><init>(II)V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    .line 91
    sget-object v0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->a:Ljava/lang/String;

    const-string v1, "MultiMediaCustomTextRenderer: 20170419_0530PM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method


# virtual methods
.method public clearSources()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->clearSources()V

    .line 309
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->e:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    iput-object v1, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->e:Landroid/graphics/Canvas;

    .line 82
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    iput-object v1, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->d:Landroid/graphics/Bitmap;

    .line 84
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 85
    iput-object v1, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->f:Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->clearSources()V

    .line 87
    iput-object v1, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    .line 88
    return-void
.end method

.method public getFontFilePathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getFontFilePathList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrame(Lcom/muvee/dsg/text/TextRendererFrameParam;)Lcom/muvee/dsg/text/TextRendererFrameParam;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 97
    sget-object v0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->a:Ljava/lang/String;

    const-string v1, "::getFrame: %d %d %f %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->reguestWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget v5, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->reguestHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    iget v6, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->requestTimeFactor:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->time:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 102
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/seqment/Seqment;

    .line 103
    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getInterval()Lcom/muvee/dsg/text/custom/seqment/Interval;

    move-result-object v4

    iget v5, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->time:I

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/text/custom/seqment/Interval;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    iget-object v4, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    iget v5, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->time:I

    iget-object v6, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->e:Landroid/graphics/Canvas;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->onDraw(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;F)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    iput v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->bufferSize:I

    .line 140
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->f:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->buffer:Ljava/nio/ByteBuffer;

    .line 141
    iget v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->h:I

    iput v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->bufferWidth:I

    .line 142
    iget v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->i:I

    iput v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->bufferHeight:I

    .line 143
    iget v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->time:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->time:I

    .line 145
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->d:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 147
    sget-object v0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->a:Ljava/lang/String;

    const-string v1, "::getFrame: %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object p1
.end method

.method public getOutputAspectRatio()F
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->g:F

    return v0
.end method

.method public getResourcePaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getResourcePaths()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSeqments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/text/custom/seqment/Seqment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->c:Ljava/util/List;

    return-object v0
.end method

.method public getSourceDescriptionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getSourceDescriptionMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSourcePaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getSourcePaths()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTextMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getTextMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->a:Ljava/lang/String;

    const-string v1, "::init: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->h:I

    iget v1, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->i:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->d:Landroid/graphics/Bitmap;

    .line 157
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->e:Landroid/graphics/Canvas;

    .line 158
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->f:Ljava/nio/ByteBuffer;

    .line 184
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->init()V

    .line 207
    return-void
.end method

.method public loadSources(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/seqment/Seqment;

    .line 229
    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getResourceIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    invoke-virtual {v0, p1, v1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->loadSources(Ljava/lang/String;Ljava/util/List;)V

    .line 256
    return-void
.end method

.method public setOutputAspectRatio(F)V
    .locals 2

    .prologue
    .line 316
    iput p1, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->g:F

    .line 317
    const/high16 v0, 0x44200000    # 640.0f

    div-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->i:I

    .line 318
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->j:Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    iget v1, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->i:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->setHeight(I)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    .line 319
    return-void
.end method

.method public setSeqments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/text/custom/seqment/Seqment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/MultiMediaCustomTextRenderer;->c:Ljava/util/List;

    .line 215
    return-void
.end method
