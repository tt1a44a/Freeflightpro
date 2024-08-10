.class public Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;
.super Lcom/muvee/dsg/mmapcodec/Codec;
.source "MediaCodecImageDecoder.java"

# interfaces
.implements Lcom/muvee/dsg/mmapcodec/CodecConstants;


# instance fields
.field private a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/Codec;-><init>()V

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 14

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_FAIL:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getImageCache()Lcom/muvee/dsg/mams/image/cache/ImageCache;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 84
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v1, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getFaceDescriptorMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;

    .line 86
    const-string v5, "com.muvee.dsg.mmapcodec.MediaCodecImageDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "privateGetNextFrame: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz v0, :cond_2

    const-string v1, "FD"

    .line 89
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v6, v6, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-static {v6}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->createIdForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v1, v1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v6, v6, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    invoke-virtual {v4, v5, v1, v6}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->getSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    const-string v6, "com.muvee.dsg.mmapcodec.MediaCodecImageDecoder"

    const-string v7, "::getNextFrame: isPreview=%b %s %d %d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v10, v10, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v10, v10, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-nez v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v1, v1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v6, v6, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 94
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    iget-object v8, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v8, v8, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    iget-object v9, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v9, v9, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    iget-object v10, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v10, v10, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v9, v10, v11}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->getInSampleSize(Ljava/lang/String;IIF)I

    move-result v8

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 97
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 98
    iget-object v8, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v8, v8, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 100
    iget-object v8, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v8, v8, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/muvee/dsg/mams/image/cache/ImageCacheUtil;->correctOrientationWrtSize(Ljava/lang/String;II)Landroid/graphics/Matrix;

    move-result-object v8

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->facePositionX:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    .line 104
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->facePositionY:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    .line 118
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->facePositionX:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->facePositionY:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 119
    iget v11, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->faceRotationDegZ:F

    invoke-virtual {v8, v11, v9, v10}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 120
    iget v11, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->faceScale:F

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->faceScale:F

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v0, v12

    invoke-virtual {v8, v11, v0, v9, v10}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 125
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v0, v9

    .line 126
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 127
    invoke-virtual {v8, v0, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 131
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v0, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v6, v6, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    invoke-virtual {v4, v5, v0, v6, v1}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->push(Ljava/lang/String;IILandroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 136
    :goto_1
    iget v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferAllocation:I

    if-nez v1, :cond_1

    .line 137
    const-string v1, "ImageDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning!!! Direct allocation of buffer of size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 140
    :cond_1
    iget-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 142
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 143
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecImageDecoder"

    const-string v1, "::getNextFrame: 00 TimeTaken = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_2
    return-object p1

    .line 87
    :cond_2
    const-string v1, ""

    goto/16 :goto_0

    .line 133
    :cond_3
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->getInstance()Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    move-result-object v0

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v4, v4, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto :goto_1

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v0, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v1, v1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 149
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 152
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v3, v3, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v4, v4, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v5, v5, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v4, v5, v6}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->getInSampleSize(Ljava/lang/String;IIF)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 153
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 154
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v3, v3, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 155
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v0, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/muvee/dsg/mams/image/cache/ImageCacheUtil;->correctOrientationWrtSize(Ljava/lang/String;II)Landroid/graphics/Matrix;

    move-result-object v4

    .line 157
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v5, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getFaceDescriptorMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;

    .line 159
    const-string v6, "com.muvee.dsg.mmapcodec.MediaCodecImageDecoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "privateGetNextFrame: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz v0, :cond_5

    .line 162
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->facePositionX:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 163
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->facePositionY:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 178
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->facePositionX:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->facePositionY:F

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 179
    iget v7, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->faceRotationDegZ:F

    invoke-virtual {v4, v7, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 180
    iget v7, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->faceScale:F

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->faceScale:F

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v0, v8

    invoke-virtual {v4, v7, v0, v5, v6}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 184
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 186
    invoke-virtual {v4, v0, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 197
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferAllocation:I

    if-nez v0, :cond_6

    .line 200
    const-string v0, "ImageDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning!!! Direct allocation of buffer of size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 203
    :cond_6
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 204
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 205
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_2
.end method


# virtual methods
.method public closeCodec()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    .line 39
    :try_start_0
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object v0

    .line 40
    iget-object v1, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    if-lez v1, :cond_0

    move-object p1, v0

    .line 62
    :goto_0
    return-object p1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v0, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v1, v1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 47
    iget-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "com.muvee.dsg.mmapcodec.MediaCodecImageDecoder"

    const-string v2, "getNextFrame: Failed in getNextFrame"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v0, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v1, v1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 59
    iget-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    goto :goto_0
.end method

.method public init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 1

    .prologue
    .line 30
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecImageDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 31
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 32
    return-object p1
.end method
