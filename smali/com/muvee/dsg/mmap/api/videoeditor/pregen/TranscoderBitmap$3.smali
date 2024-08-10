.class Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;
.super Ljava/lang/Object;
.source "TranscoderBitmap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/SurfaceTexture;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 361
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->i(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;

    move-result-object v1

    monitor-enter v1

    .line 363
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 365
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 366
    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    move-result-object v5

    iget v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputWidth:I

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    move-result-object v6

    iget v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputHeight:I

    invoke-static {v0, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 367
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->clearFrame()V

    .line 368
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->c(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    move-result-object v0

    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->EXTERNAL_A:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->j(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;->getTextureId()I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->drawFrame(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;ILcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$DrawFrameHandler;F)V

    .line 370
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->k(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->readFrame()Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 373
    :try_start_1
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    move-result-object v4

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputFileFormat:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->i(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;

    move-result-object v7

    iget-wide v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 374
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->i(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 376
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 378
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 380
    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$4;->a:[I

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    move-result-object v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->saveMode:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 395
    :goto_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 396
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->PROCESS:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->i(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;

    move-result-object v7

    iget-wide v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, p0, v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;->onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    :cond_0
    :goto_1
    :try_start_2
    const-string v0, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v4, "::run: TimeTaken=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    return-void

    .line 382
    :pswitch_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 383
    invoke-virtual {v5, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 384
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 387
    :pswitch_1
    :try_start_5
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->l(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 388
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->l(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    move-result-object v6

    iget v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->jpgCompressionQuality:I

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
