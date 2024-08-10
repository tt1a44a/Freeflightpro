.class public Lcom/muvee/dsg/mams/image/cache/ImageCacheUtil;
.super Ljava/lang/Object;
.source "ImageCacheUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static correctOrientation(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 79
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 117
    :goto_0
    return-object v0

    .line 83
    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 88
    :pswitch_1
    const/high16 v1, 0x43340000    # 180.0f

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 91
    :pswitch_2
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 92
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 95
    :pswitch_3
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 96
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 99
    :pswitch_4
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 102
    :pswitch_5
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 103
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 106
    :pswitch_6
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static correctOrientationWrtSize(Ljava/lang/String;II)Landroid/graphics/Matrix;
    .locals 6

    .prologue
    .line 122
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 124
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 127
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 128
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 129
    const-string v3, "ImageCacheUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::correctOrientationWrtSize:orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 171
    :goto_0
    return-object v0

    .line 134
    :cond_0
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 139
    :pswitch_1
    const/high16 v1, 0x43340000    # 180.0f

    :try_start_1
    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    .line 142
    :pswitch_2
    const/high16 v1, 0x43340000    # 180.0f

    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 143
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 146
    :pswitch_3
    const/high16 v2, 0x42b40000    # 90.0f

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 147
    neg-float v2, v1

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 150
    :pswitch_4
    const/high16 v2, 0x42b40000    # 90.0f

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 152
    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 155
    :pswitch_5
    const/high16 v2, -0x3d4c0000    # -90.0f

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 156
    neg-float v2, v1

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 159
    :pswitch_6
    const/high16 v2, -0x3d4c0000    # -90.0f

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 160
    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static createMatrixForResizeRotateCropOrLetterBox(ZIIIII)Landroid/graphics/Matrix;
    .locals 5

    .prologue
    .line 19
    int-to-float v0, p2

    int-to-float v1, p4

    div-float v1, v0, v1

    .line 20
    int-to-float v0, p3

    int-to-float v2, p5

    div-float/2addr v0, v2

    .line 22
    sparse-switch p1, :sswitch_data_0

    .line 33
    :goto_0
    if-eqz p0, :cond_0

    .line 34
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 39
    :goto_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 40
    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 41
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 42
    sparse-switch p1, :sswitch_data_1

    .line 58
    :goto_2
    return-object v1

    .line 25
    :sswitch_0
    int-to-float v0, p2

    int-to-float v1, p5

    div-float v1, v0, v1

    .line 26
    int-to-float v0, p3

    int-to-float v2, p4

    div-float/2addr v0, v2

    .line 27
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    .line 44
    :sswitch_1
    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p4, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 47
    :sswitch_2
    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p5, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p4, 0x2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 50
    :sswitch_3
    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p4, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 53
    :sswitch_4
    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p5, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p4, 0x2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 22
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 42
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_3
        0x10e -> :sswitch_4
    .end sparse-switch
.end method
