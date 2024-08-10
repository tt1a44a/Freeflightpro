.class public Lcom/muvee/dsg/text/custom/seqment/TextSegment;
.super Lcom/muvee/dsg/text/custom/seqment/Seqment;
.source "TextSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/muvee/dsg/text/custom/seqment/Shadow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->c:Ljava/util/List;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->e:I

    .line 78
    const-string v0, "LEFT"

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->f:Ljava/lang/String;

    .line 79
    const-string v0, "CENTER"

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->g:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->h:Lcom/muvee/dsg/text/custom/seqment/Shadow;

    .line 84
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->a:Landroid/graphics/Paint;

    .line 85
    return-void
.end method


# virtual methods
.method public canDraw()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public onDraw(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;F)V
    .locals 18

    .prologue
    .line 135
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getBitmap(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 137
    if-nez v2, :cond_7

    .line 138
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->a:Landroid/graphics/Paint;

    check-cast v6, Landroid/text/TextPaint;

    .line 140
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;

    .line 142
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->getText(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;)Ljava/lang/String;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->getTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 151
    move-object/from16 v0, p0

    iget v2, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->e:I

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getFontFilePathMap()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->d:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    if-eqz v2, :cond_2

    .line 155
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 162
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->h:Lcom/muvee/dsg/text/custom/seqment/Shadow;

    if-eqz v2, :cond_3

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->h:Lcom/muvee/dsg/text/custom/seqment/Shadow;

    invoke-virtual {v2}, Lcom/muvee/dsg/text/custom/seqment/Shadow;->getRadius()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->h:Lcom/muvee/dsg/text/custom/seqment/Shadow;

    invoke-virtual {v3}, Lcom/muvee/dsg/text/custom/seqment/Shadow;->getDx()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->h:Lcom/muvee/dsg/text/custom/seqment/Shadow;

    invoke-virtual {v4}, Lcom/muvee/dsg/text/custom/seqment/Shadow;->getDy()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->h:Lcom/muvee/dsg/text/custom/seqment/Shadow;

    invoke-virtual {v5}, Lcom/muvee/dsg/text/custom/seqment/Shadow;->getShadowColor()I

    move-result v5

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 166
    :cond_3
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 168
    const/4 v4, 0x0

    .line 169
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 171
    const/high16 v9, 0x3f800000    # 1.0f

    .line 172
    const/high16 v10, 0x3f800000    # 1.0f

    .line 173
    const/4 v11, 0x0

    .line 174
    const/4 v12, 0x0

    .line 175
    const/4 v13, 0x0

    .line 178
    const/16 v2, 0x5a

    move v14, v2

    :goto_1
    const/16 v2, 0xa

    if-lt v14, v2, :cond_7

    .line 179
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v16

    int-to-float v3, v0

    mul-float/2addr v2, v3

    int-to-float v3, v14

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->getTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v3, v7

    float-to-int v7, v3

    .line 181
    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 183
    new-instance v2, Landroid/text/StaticLayout;

    .line 184
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 198
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v3, v0, :cond_4

    const/16 v3, 0xa

    if-ne v14, v3, :cond_8

    .line 200
    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 201
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 204
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v7, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 206
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 207
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 208
    const/4 v3, 0x0

    .line 209
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 210
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->f:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_5
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 223
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->g:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :cond_6
    :goto_4
    packed-switch v5, :pswitch_data_1

    .line 233
    :goto_5
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 234
    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getTextBitmapMap()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_7
    invoke-super/range {p0 .. p4}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->onDraw(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;F)V

    .line 243
    return-void

    .line 210
    :sswitch_0
    const-string v9, "CENTER"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string v9, "RIGHT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    .line 216
    :pswitch_0
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    .line 217
    goto :goto_3

    .line 219
    :pswitch_1
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v5

    sub-float/2addr v3, v5

    goto :goto_3

    .line 223
    :sswitch_2
    const-string v9, "TOP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v5, 0x0

    goto :goto_4

    :sswitch_3
    const-string v9, "BOTTOM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    .line 225
    :pswitch_2
    const/4 v4, 0x0

    .line 226
    goto :goto_5

    .line 228
    :pswitch_3
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    goto :goto_5

    .line 178
    :cond_8
    add-int/lit8 v2, v14, -0xa

    move v14, v2

    goto/16 :goto_1

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x4a5c9fc -> :sswitch_1
        0x7645c055 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 223
    :sswitch_data_1
    .sparse-switch
        0x14535 -> :sswitch_2
        0x75208e2b -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 89
    invoke-super {p0, p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment;

    .line 90
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 93
    :pswitch_0
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->c:Ljava/util/List;

    new-instance v6, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;

    invoke-direct {v6}, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;-><init>()V

    iget-object v7, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->setText(Ljava/lang/String;)Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :sswitch_0
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "textId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "font"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "colorHex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "hAlignment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "vAlignment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    .line 96
    :pswitch_1
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->c:Ljava/util/List;

    new-instance v6, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;

    invoke-direct {v6}, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;-><init>()V

    iget-object v7, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->setTextId(Ljava/lang/String;)Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 99
    :pswitch_2
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 102
    :pswitch_3
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->e:I

    goto/16 :goto_0

    .line 105
    :pswitch_4
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->e:I

    goto/16 :goto_0

    .line 108
    :pswitch_5
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 111
    :pswitch_6
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 118
    :cond_1
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 119
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :cond_2
    move v1, v3

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 121
    :pswitch_7
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->c:Ljava/util/List;

    new-instance v6, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;

    invoke-direct {v6}, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;-><init>()V

    invoke-virtual {v6, v0}, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :sswitch_7
    const-string/jumbo v6, "text"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_3

    :sswitch_8
    const-string/jumbo v6, "textShadow"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_3

    .line 124
    :pswitch_8
    new-instance v1, Lcom/muvee/dsg/text/custom/seqment/Shadow;

    invoke-direct {v1}, Lcom/muvee/dsg/text/custom/seqment/Shadow;-><init>()V

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Shadow;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Shadow;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->h:Lcom/muvee/dsg/text/custom/seqment/Shadow;

    goto :goto_2

    .line 129
    :cond_3
    return-object p0

    .line 91
    :sswitch_data_0
    .sparse-switch
        -0x344648d8 -> :sswitch_1
        -0x257b7348 -> :sswitch_4
        0x300c4f -> :sswitch_2
        0x36452d -> :sswitch_0
        0x5a72f63 -> :sswitch_3
        0x1ea7b65b -> :sswitch_5
        0x7aabe60d -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 119
    :sswitch_data_1
    .sparse-switch
        0x36452d -> :sswitch_7
        0x6db054ad -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
