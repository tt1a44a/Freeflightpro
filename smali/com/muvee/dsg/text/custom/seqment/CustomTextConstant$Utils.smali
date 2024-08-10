.class public Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;
.super Ljava/lang/Object;
.source "CustomTextConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;
    .locals 7

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, v1, p2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;-><init>(Landroid/graphics/RectF;Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;)V

    goto :goto_0
.end method

.method public static createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;
    .locals 2

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v0

    goto :goto_0
.end method

.method public static drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;Landroid/graphics/Paint;FFZLcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;)V
    .locals 11

    .prologue
    .line 69
    if-nez p1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 75
    if-eqz p8, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p8 .. p8}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->getCenterX()F

    move-result v1

    mul-float/2addr v1, v0

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p8 .. p8}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->getCenterY()F

    move-result v2

    mul-float/2addr v0, v2

    .line 80
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 83
    if-nez p3, :cond_7

    .line 85
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    mul-float v4, v4, p5

    .line 87
    if-eqz p8, :cond_3

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p8 .. p8}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->getWidth()F

    move-result v3

    mul-float/2addr v2, v3

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p8 .. p8}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->getHeight()F

    move-result v5

    mul-float/2addr v3, v5

    .line 90
    div-float v5, v2, v3

    cmpl-float v5, v5, v4

    if-ltz v5, :cond_5

    .line 91
    float-to-int v3, v2

    .line 92
    div-float/2addr v2, v4

    float-to-int v2, v2

    .line 99
    :cond_3
    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    sget-object v6, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->a:Ljava/lang/String;

    const-string v7, "::drawBitmap: 000 source = %s , target = %s, targetAspectRatio = %f, sourceZoom = %f"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v3

    mul-float/2addr v6, v7

    int-to-float v7, v2

    div-float/2addr v6, v7

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_6

    .line 104
    sget-object v3, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->a:Ljava/lang/String;

    const-string v6, "::drawBitmap: 000 %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, ">="

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    int-to-float v3, v2

    mul-float/2addr v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float v3, v1, v3

    float-to-int v3, v3

    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 106
    int-to-float v3, v2

    mul-float/2addr v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 107
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    float-to-int v3, v3

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 108
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 117
    :goto_2
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 118
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, p6

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v6, v6, p6

    invoke-virtual {v2, v3, v6, v1, v0}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 121
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 123
    sget-object v1, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->a:Ljava/lang/String;

    const-string v2, "::drawBitmap: 000 source = %s , zoomed = %s, targetAspectRatio = %f"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const/4 v5, 0x2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz p7, :cond_4

    .line 126
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 127
    invoke-virtual {p2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getZ()F

    move-result v1

    invoke-virtual {p2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 129
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 130
    if-eqz p7, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 94
    :cond_5
    float-to-int v2, v3

    .line 95
    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto/16 :goto_1

    .line 110
    :cond_6
    sget-object v2, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->a:Ljava/lang/String;

    const-string v6, "::drawBitmap: 000 %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "<"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    int-to-float v2, v3

    div-float/2addr v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float v2, v0, v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 112
    int-to-float v2, v3

    div-float/2addr v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 113
    div-int/lit8 v2, v3, 0x2

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 114
    div-int/lit8 v2, v3, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    .line 135
    :cond_7
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    mul-float v4, v4, p5

    .line 138
    if-eqz p8, :cond_8

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p8 .. p8}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->getWidth()F

    move-result v3

    mul-float/2addr v2, v3

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p8 .. p8}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->getHeight()F

    move-result v5

    mul-float/2addr v3, v5

    .line 141
    div-float v5, v2, v3

    cmpl-float v5, v5, v4

    if-ltz v5, :cond_a

    .line 142
    float-to-int v3, v2

    .line 143
    div-float/2addr v2, v4

    float-to-int v2, v2

    .line 150
    :cond_8
    :goto_3
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v3

    mul-float/2addr v6, v7

    int-to-float v7, v2

    div-float/2addr v6, v7

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_b

    .line 153
    sget-object v3, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->a:Ljava/lang/String;

    const-string v6, "::drawBitmap: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, ">="

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    int-to-float v3, v2

    mul-float/2addr v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float v3, v1, v3

    float-to-int v3, v3

    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 155
    int-to-float v3, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 156
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    float-to-int v3, v3

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 157
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 166
    :goto_4
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 167
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, p6

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v4, v4, p6

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 169
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 170
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 172
    if-eqz p7, :cond_9

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 174
    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getZ()F

    move-result v1

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 176
    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 177
    if-eqz p7, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 145
    :cond_a
    float-to-int v2, v3

    .line 146
    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto/16 :goto_3

    .line 159
    :cond_b
    sget-object v2, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->a:Ljava/lang/String;

    const-string v6, "::drawBitmap: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "<"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    int-to-float v2, v3

    div-float/2addr v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float v2, v0, v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 161
    int-to-float v2, v3

    div-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 162
    div-int/lit8 v2, v3, 0x2

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 163
    div-int/lit8 v2, v3, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4
.end method
