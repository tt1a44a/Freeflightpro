.class public Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;
.super Ljava/lang/Object;
.source "CustomImageDecoder.java"


# static fields
.field static a:Landroid/graphics/Paint;

.field private static final b:Landroid/graphics/Paint;

.field private static c:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->b:Landroid/graphics/Paint;

    .line 34
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 36
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 37
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->c:[F

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->a:Landroid/graphics/Paint;

    .line 45
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v2, Landroid/graphics/ColorMatrix;

    sget-object v3, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->c:[F

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 46
    return-void

    .line 41
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3eaaaaab
        0x3eaaaaab
        0x3eaaaaab
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateEngineBitmapBytesForImage(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;Ljava/nio/ByteBuffer;)Z
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 52
    const-string v0, "com.muvee.dsg.mmap.api.twoJPEG.CustomImageDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v4, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_1
    move v4, v0

    .line 83
    :goto_2
    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 85
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 86
    const/4 v6, 0x1

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 87
    sparse-switch v4, :sswitch_data_0

    .line 95
    :goto_3
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v7, v7, 0x2

    div-int/2addr v6, v7

    if-lt v6, p1, :cond_2

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v7, v7, 0x2

    div-int/2addr v6, v7

    if-lt v6, p2, :cond_2

    .line 96
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v6, v6, 0x2

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v2, "com.muvee.dsg.mmap.api.twoJPEG.CustomImageDecoder"

    const-string v3, "### ::generateEngineBitmapBytesForImage: OUT OF MEMORY ERROR  ###"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 62
    :pswitch_1
    const/16 v0, 0xb4

    .line 63
    goto :goto_1

    .line 65
    :pswitch_2
    const/16 v0, 0x10e

    .line 66
    goto :goto_1

    .line 68
    :pswitch_3
    const/16 v0, 0x5a

    .line 69
    goto :goto_1

    .line 78
    :catch_1
    move-exception v0

    .line 79
    const-string v4, "com.muvee.dsg.mmap.api.twoJPEG.CustomImageDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::generateEngineBitmapBytesForImage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    goto :goto_2

    .line 90
    :goto_4
    :sswitch_0
    :try_start_2
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v7, v7, 0x2

    div-int/2addr v6, v7

    if-lt v6, p2, :cond_2

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v7, v7, 0x2

    div-int/2addr v6, v7

    if-lt v6, p1, :cond_2

    .line 91
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v6, v6, 0x2

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_4

    .line 100
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 101
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 104
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ".mask"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 107
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 111
    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    :goto_5
    if-eqz v6, :cond_0

    .line 116
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 117
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 118
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 119
    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 120
    sparse-switch v4, :sswitch_data_1

    .line 134
    int-to-float v4, p1

    mul-float/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v8

    int-to-float v8, p2

    mul-float/2addr v8, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 138
    :goto_6
    sget-object v4, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->b:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 139
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    if-eqz v0, :cond_3

    .line 142
    sget-object v4, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->b:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 143
    sget-object v4, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->b:Landroid/graphics/Paint;

    invoke-virtual {v5, v0, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 144
    sget-object v4, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->b:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    :cond_3
    if-nez p4, :cond_4

    .line 149
    const-string v0, "com.muvee.dsg.mmap.api.twoJPEG.CustomImageDecoder"

    const-string v2, "Sent in Buffer is NULL, Unable to copy required data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 122
    :sswitch_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 123
    int-to-float v4, p1

    mul-float/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v8

    int-to-float v8, p2

    mul-float/2addr v8, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_6

    .line 126
    :sswitch_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 127
    int-to-float v4, p1

    mul-float/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v8

    int-to-float v8, p2

    mul-float/2addr v8, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_6

    .line 130
    :sswitch_3
    const/4 v4, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 131
    int-to-float v4, p1

    mul-float/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v8

    int-to-float v8, p2

    mul-float/2addr v8, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_6

    .line 153
    :cond_4
    invoke-virtual {v3, p4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 154
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v2

    .line 155
    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    goto/16 :goto_5

    .line 60
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 120
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 25
    const-string v1, "com.muvee.dsg.mmap.api.twoJPEG.CustomImageDecoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::invokeCustomImager:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    aget-object v0, p0, v3

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v1, 0x3

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x4

    aget-object v1, p0, v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/muvee/dsg/mmapcodec/CustomImageDecoder;->generateEngineBitmapBytesForImage(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;Ljava/nio/ByteBuffer;)Z

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
