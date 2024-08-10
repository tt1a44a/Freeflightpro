.class public Lcom/muvee/dsg/text/TextRenderer;
.super Ljava/lang/Object;
.source "TextRenderer.java"

# interfaces
.implements Lcom/muvee/dsg/text/TextRendererConstant;


# instance fields
.field private a:Lcom/muvee/dsg/text/TextRendereInitParam;

.field private b:Lcom/muvee/dsg/text/CustomTextRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->b:Lcom/muvee/dsg/text/CustomTextRenderer;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->b:Lcom/muvee/dsg/text/CustomTextRenderer;

    invoke-interface {v0}, Lcom/muvee/dsg/text/CustomTextRenderer;->close()V

    .line 48
    :cond_0
    return-void
.end method

.method public static invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 26
    const-string v0, "com.muvee.dsg.text.TextRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::invoke:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    aget-object v0, p0, v3

    const-string v1, "create"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/muvee/dsg/text/TextRenderer;

    invoke-direct {v0}, Lcom/muvee/dsg/text/TextRenderer;-><init>()V

    .line 39
    :goto_0
    return-object v0

    .line 29
    :cond_0
    aget-object v0, p0, v3

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    aget-object v0, p0, v4

    check-cast v0, Lcom/muvee/dsg/text/TextRenderer;

    .line 31
    aget-object v1, p0, v5

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/TextRenderer;->init(Ljava/util/Map;)Lcom/muvee/dsg/text/TextRendereInitParam;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    aget-object v0, p0, v3

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    aget-object v0, p0, v4

    check-cast v0, Lcom/muvee/dsg/text/TextRenderer;

    .line 34
    invoke-direct {v0}, Lcom/muvee/dsg/text/TextRenderer;->a()V

    .line 39
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_3
    aget-object v0, p0, v3

    const-string v1, "getFrame"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    aget-object v0, p0, v4

    check-cast v0, Lcom/muvee/dsg/text/TextRenderer;

    .line 37
    aget-object v1, p0, v5

    check-cast v1, Lcom/muvee/dsg/text/TextRendererFrameParam;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/TextRenderer;->getFrame(Lcom/muvee/dsg/text/TextRendererFrameParam;)Lcom/muvee/dsg/text/TextRendererFrameParam;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getFrame(Lcom/muvee/dsg/text/TextRendererFrameParam;)Lcom/muvee/dsg/text/TextRendererFrameParam;
    .locals 12

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->b:Lcom/muvee/dsg/text/CustomTextRenderer;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->b:Lcom/muvee/dsg/text/CustomTextRenderer;

    invoke-interface {v0, p1}, Lcom/muvee/dsg/text/CustomTextRenderer;->getFrame(Lcom/muvee/dsg/text/TextRendererFrameParam;)Lcom/muvee/dsg/text/TextRendererFrameParam;

    move-result-object p1

    .line 187
    :goto_0
    return-object p1

    .line 107
    :cond_0
    iget-object v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->renderParam:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 109
    if-nez v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->a:Lcom/muvee/dsg/text/TextRendereInitParam;

    iget-object v0, v0, Lcom/muvee/dsg/text/TextRendereInitParam;->renderParam:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 113
    :goto_1
    const-string v3, "No Text Value or empty text (key.text) set"

    .line 115
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 117
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 119
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 121
    const-string v0, "key.text.color"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 126
    :cond_1
    const/high16 v0, 0x42900000    # 72.0f

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 129
    const/16 v5, 0x500

    .line 132
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 134
    const-string v0, "key.text.alignment"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_3

    .line 136
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 137
    and-int/lit8 v8, v0, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 138
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 141
    :cond_2
    and-int/lit8 v0, v0, 0x10

    const/16 v8, 0x10

    if-ne v0, v8, :cond_3

    .line 142
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 150
    :cond_3
    const/4 v10, 0x0

    .line 153
    const-string v0, "key.text"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 154
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 157
    :goto_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 159
    new-instance v0, Landroid/text/StaticLayout;

    move v8, v7

    move v9, v2

    move v11, v2

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 173
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    .line 175
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 178
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 180
    iput v5, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->bufferWidth:I

    .line 181
    iput v1, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->bufferHeight:I

    .line 182
    iget v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->bufferWidth:I

    iget v1, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->bufferHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->bufferSize:I

    .line 183
    iget v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->bufferSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->buffer:Ljava/nio/ByteBuffer;

    .line 184
    iget-object v0, p1, Lcom/muvee/dsg/text/TextRendererFrameParam;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 186
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_4
    move-object v1, v3

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public init(Ljava/util/Map;)Lcom/muvee/dsg/text/TextRendereInitParam;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/muvee/dsg/text/TextRendereInitParam;"
        }
    .end annotation

    .prologue
    .line 62
    const-string v0, "com.muvee.dsg.text.TextRenderer"

    const-string v1, "TextRenderer::init: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/text/TextRenderer;->a:Lcom/muvee/dsg/text/TextRendereInitParam;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lcom/muvee/dsg/text/TextRendereInitParam;

    invoke-direct {v0}, Lcom/muvee/dsg/text/TextRendereInitParam;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->a:Lcom/muvee/dsg/text/TextRendereInitParam;

    .line 67
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->a:Lcom/muvee/dsg/text/TextRendereInitParam;

    iput-object p1, v0, Lcom/muvee/dsg/text/TextRendereInitParam;->renderParam:Ljava/lang/Object;

    .line 69
    const-string v0, "key.text.custom.renderer.class"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/CustomTextRenderer;

    iput-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->b:Lcom/muvee/dsg/text/CustomTextRenderer;

    .line 75
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->b:Lcom/muvee/dsg/text/CustomTextRenderer;

    invoke-interface {v0, p1}, Lcom/muvee/dsg/text/CustomTextRenderer;->init(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 88
    :cond_0
    :goto_0
    const-string v0, "key.text.custom.renderer.object"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    check-cast v0, Lcom/muvee/dsg/text/CustomTextRenderer;

    iput-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->b:Lcom/muvee/dsg/text/CustomTextRenderer;

    .line 91
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->b:Lcom/muvee/dsg/text/CustomTextRenderer;

    invoke-interface {v0, p1}, Lcom/muvee/dsg/text/CustomTextRenderer;->init(Ljava/util/Map;)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderer;->a:Lcom/muvee/dsg/text/TextRendereInitParam;

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 82
    :catch_2
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
