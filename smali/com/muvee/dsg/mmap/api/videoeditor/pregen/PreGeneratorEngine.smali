.class public Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;
.super Ljava/lang/Object;
.source "PreGeneratorEngine.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;,
        Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;,
        Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;
    }
.end annotation


# static fields
.field private static final a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;


# instance fields
.field private b:Ljava/lang/String;

.field private c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:J

.field private f:J

.field private g:Z

.field private h:Landroid/graphics/Bitmap;

.field private i:Z

.field private j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "/sdcard/testDecoder/"

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->b:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->d:Ljava/util/Map;

    .line 83
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->g:Z

    .line 86
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->i:Z

    .line 75
    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    if-eqz v0, :cond_1

    .line 294
    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 295
    iget v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->EUniform_Speed:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 296
    iget-object v0, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 300
    :goto_1
    return v0

    .line 294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_1
    const/16 v0, 0x64

    goto :goto_1
.end method

.method private static a(J)J
    .locals 8

    .prologue
    const-wide/32 v6, 0xf4240

    .line 391
    div-long v0, p0, v6

    .line 392
    mul-long v2, v0, v6

    sub-long v2, p0, v2

    .line 393
    const-wide/32 v4, 0x3d090

    div-long/2addr v2, v4

    .line 394
    mul-long/2addr v0, v6

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;)J
    .locals 4

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->e:J

    return-wide v0
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->f:J

    return-wide v0
.end method

.method public static getEngine()Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    return-object v0
.end method

.method public static getVideoCacheFileFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 432
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->videoCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_%d.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 441
    const-string v0, "MD5"

    .line 444
    :try_start_0
    const-string v0, "MD5"

    .line 445
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 446
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 447
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-byte v0, v2, v1

    .line 452
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 455
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 457
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 462
    :goto_2
    return-object v0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 462
    const-string v0, ""

    goto :goto_2
.end method

.method public static videoCacheFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 436
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelCurrentProcess()V
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    .line 283
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->i:Z

    .line 284
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->cancel()V

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->clear()V

    .line 288
    monitor-exit p0

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    iput-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    .line 399
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 400
    iput-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->h:Landroid/graphics/Bitmap;

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->g:Z

    .line 402
    return-void
.end method

.method public getCodecFrameParams(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 16

    .prologue
    .line 354
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 356
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v4

    .line 357
    invoke-virtual {v4}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getPreSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    const/16 v6, 0x2d0

    const/16 v7, 0x2d0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->h:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v6, v7, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->readBitmpByte(Landroid/graphics/Bitmap;JLcom/muvee/dsg/mmapcodec/CodecInitParams;)J

    move-result-wide v6

    .line 361
    invoke-virtual {v4}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getPreSurface()Landroid/view/Surface;

    move-result-object v5

    .line 362
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v8

    .line 364
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 366
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x43b40000    # 360.0f

    const/high16 v12, 0x43b40000    # 360.0f

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 367
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->h:Landroid/graphics/Bitmap;

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->h:Landroid/graphics/Bitmap;

    .line 368
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 369
    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 367
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 372
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 374
    invoke-virtual {v5, v8}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 375
    invoke-virtual {v4}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getPreSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 377
    invoke-virtual {v4}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getPreTextureId()I

    move-result v4

    move-object/from16 v0, p1

    iput v4, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    .line 378
    sget-object v4, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 379
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 381
    const-string v4, "com.muvee.dsg.mmap.api.videoeditor.pregen.PreGeneratorEngine"

    const-string v5, "::getCodecFrameParams: 002 TimeTaken=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-object p1

    .line 382
    :catch_0
    move-exception v2

    .line 383
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getVideoCacheFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isSupport()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->g:Z

    return v0
.end method

.method public prepare([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;Z)Z
    .locals 15

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->i:Z

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->g:Z

    .line 97
    const/16 v2, 0x2d0

    const/16 v3, 0x2d0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->h:Landroid/graphics/Bitmap;

    .line 99
    const-string v2, "com.muvee.dsg.mmap.api.videoeditor.pregen.PreGeneratorEngine"

    const-string v3, "::prepare: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "+"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz p2, :cond_0

    .line 102
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->PRE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, p0, v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;->onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;[Ljava/lang/Object;)V

    .line 105
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 106
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 108
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v2, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    .line 109
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v4, v2, :cond_c

    .line 110
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;)V

    aput-object v3, v2, v4

    .line 113
    :try_start_1
    new-instance v11, Landroid/media/MediaExtractor;

    invoke-direct {v11}, Landroid/media/MediaExtractor;-><init>()V

    .line 114
    aget-object v2, p1, v4

    iget-object v5, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaPath:Ljava/lang/String;

    .line 115
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedSet;

    .line 116
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->d:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/SortedSet;

    .line 117
    if-nez v2, :cond_18

    .line 118
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 119
    invoke-interface {v10, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v2

    .line 122
    :goto_1
    if-nez v3, :cond_17

    .line 123
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 124
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->d:Ljava/util/Map;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v3

    .line 127
    :goto_2
    invoke-virtual {v11, v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 129
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 130
    invoke-virtual {v11, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 131
    const-string v5, "mime"

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    const-string/jumbo v5, "video/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-virtual {v11, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 138
    :cond_1
    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    if-eqz v2, :cond_4

    .line 139
    const/4 v2, 0x0

    :goto_4
    aget-object v3, p1, v4

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 140
    aget-object v3, p1, v4

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    aget-object v3, v3, v2

    .line 141
    invoke-direct {p0, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->a(Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;)I

    move-result v5

    .line 142
    const-string v6, "com.muvee.dsg.mmap.api.videoeditor.pregen.PreGeneratorEngine"

    const-string v7, "::prepare: %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    const/16 v6, 0x320

    if-ge v5, v6, :cond_3

    .line 139
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 94
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 129
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 148
    :cond_3
    :try_start_3
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;)V

    .line 149
    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->effectInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 150
    iget v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->startTimeMSec:I

    int-to-long v6, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v6, v12

    const/4 v12, 0x1

    invoke-virtual {v11, v6, v7, v12}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 151
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;->a:J

    .line 152
    iget v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    int-to-long v6, v3

    const-wide/16 v12, 0x3e8

    mul-long/2addr v6, v12

    const/4 v3, 0x0

    invoke-virtual {v11, v6, v7, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 153
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;->b:J

    .line 154
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;->a:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 195
    :catch_0
    move-exception v2

    .line 197
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    :goto_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_0

    .line 158
    :cond_4
    if-nez p3, :cond_8

    .line 159
    const/4 v2, 0x0

    move v5, v2

    :goto_7
    :try_start_4
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_b

    .line 160
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;->a:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;

    iget-wide v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;->a:J

    const/4 v6, 0x1

    invoke-virtual {v11, v2, v3, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 161
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-wide v6, v2

    .line 164
    :goto_8
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-ltz v2, :cond_5

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;->a:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;

    iget-wide v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;->b:J

    cmp-long v2, v12, v2

    if-gez v2, :cond_7

    .line 166
    :cond_5
    invoke-static {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->a(J)J

    move-result-wide v2

    .line 167
    :goto_9
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_6

    .line 168
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_9

    .line 170
    :cond_6
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    .line 171
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-wide v6, v2

    .line 173
    goto :goto_8

    .line 159
    :cond_7
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_7

    .line 177
    :cond_8
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_b

    .line 178
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;

    iget-wide v6, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;->a:J

    const/4 v2, 0x1

    invoke-virtual {v11, v6, v7, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 179
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    .line 180
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 183
    :goto_b
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v2, v6, v12

    if-ltz v2, :cond_9

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;

    iget-wide v12, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;->b:J

    cmp-long v2, v6, v12

    if-gez v2, :cond_a

    .line 185
    :cond_9
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const-wide/16 v12, 0xa

    add-long/2addr v6, v12

    const/4 v2, 0x1

    invoke-virtual {v11, v6, v7, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 186
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    .line 187
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v2, "com.muvee.dsg.mmap.api.videoeditor.pregen.PreGeneratorEngine"

    const-string v5, "::prepare: %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v13

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 177
    :cond_a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_a

    .line 194
    :cond_b
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    .line 201
    :cond_c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->f:J

    .line 203
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getVideoCacheFileFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedSet;

    .line 207
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 208
    new-instance v8, Ljava/io/File;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v9, v11

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 211
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 214
    :cond_e
    invoke-interface {v2, v6}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    .line 216
    iget-wide v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->f:J

    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->f:J

    goto :goto_c

    .line 219
    :cond_f
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 220
    if-eqz p2, :cond_10

    .line 221
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->PRE_RENDER:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, p0, v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;->onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;[Ljava/lang/Object;)V

    .line 223
    :cond_10
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->e:J

    .line 224
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    monitor-enter p0

    .line 226
    :try_start_5
    iget-boolean v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->i:Z

    if-eqz v3, :cond_15

    .line 227
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 267
    :cond_12
    if-eqz p2, :cond_13

    .line 268
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->POST_RENDER:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, p0, v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;->onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;[Ljava/lang/Object;)V

    .line 273
    :cond_13
    if-eqz p2, :cond_14

    .line 274
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;->POST:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, p0, v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;->onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack$State;[Ljava/lang/Object;)V

    .line 276
    :cond_14
    const-string v2, "com.muvee.dsg.mmap.api.videoeditor.pregen.PreGeneratorEngine"

    const-string v3, "::prepare: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "-"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->i:Z

    if-nez v2, :cond_16

    const/4 v2, 0x1

    :goto_f
    return v2

    .line 229
    :cond_15
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 230
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/SortedSet;

    .line 231
    invoke-interface {v3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 232
    monitor-enter p0

    .line 233
    :try_start_7
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;-><init>()V

    iput-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    .line 234
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 235
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;-><init>()V

    .line 236
    iput-object v2, v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->videoFile:Ljava/lang/String;

    .line 237
    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getVideoCacheFileFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputFileFormat:Ljava/lang/String;

    .line 238
    iput-object v3, v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->timeList:Ljava/util/SortedSet;

    .line 239
    const/16 v2, 0x2d0

    iput v2, v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputWidth:I

    .line 240
    const/16 v2, 0x2d0

    iput v2, v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputHeight:I

    .line 241
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->CURRENT_SAVE_MODE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

    iput-object v2, v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->saveMode:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

    .line 242
    move/from16 v0, p3

    iput-boolean v0, v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->onlyIFrame:Z

    .line 244
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;

    move-object/from16 v0, p2

    invoke-direct {v2, p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$1;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$CallBack;)V

    iput-object v2, v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    .line 263
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-virtual {v2, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->performTranscode(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;)V

    goto/16 :goto_e

    .line 229
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 234
    :catchall_2
    move-exception v2

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v2

    .line 278
    :cond_16
    const/4 v2, 0x0

    goto :goto_f

    :cond_17
    move-object v8, v3

    goto/16 :goto_2

    :cond_18
    move-object v9, v2

    goto/16 :goto_1
.end method

.method public readBitmpByte(Landroid/graphics/Bitmap;JLcom/muvee/dsg/mmapcodec/CodecInitParams;)J
    .locals 14

    .prologue
    const-wide/16 v10, 0x0

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->d:Ljava/util/Map;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedSet;

    .line 310
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 311
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-ltz v4, :cond_0

    .line 312
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 317
    :goto_0
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getVideoCacheFileFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 318
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$2;->b:[I

    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->CURRENT_SAVE_MODE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    :goto_1
    move-wide v2, v8

    .line 346
    :goto_2
    return-wide v2

    .line 322
    :pswitch_0
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v12, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 324
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    .line 325
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 326
    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 327
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 328
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 341
    :catch_0
    move-exception v2

    .line 342
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_3
    move-wide v2, v10

    .line 346
    goto :goto_2

    .line 331
    :pswitch_1
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 332
    iput-object p1, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 333
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 343
    :catch_1
    move-exception v2

    .line 344
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_1
    move-wide v8, v10

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVideoCacheFolder(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->b:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public usePreGeneratored(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    if-eqz v0, :cond_0

    .line 415
    iget-wide v0, p3, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mSourceId:J

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    array-length v3, v3

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->c:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;

    iget-wide v4, p3, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mSourceId:J

    long-to-int v1, v4

    aget-object v3, v0, v1

    .line 417
    iget-object v0, v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    move v1, v2

    .line 418
    :goto_0
    iget-object v0, v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 419
    iget-object v0, v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;

    .line 420
    iget-wide v4, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;->a:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_1

    iget-wide v4, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine$a;->b:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    .line 422
    const/4 v2, 0x1

    .line 428
    :cond_0
    return v2

    .line 418
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
