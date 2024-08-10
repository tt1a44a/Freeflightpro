.class Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;
.super Ljava/lang/Object;
.source "MediaCodecTextureEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

.field private b:Landroid/media/MediaCodec;

.field private c:Landroid/view/Surface;

.field private d:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

.field private e:[B

.field private f:[B

.field private g:[B

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;Lcom/muvee/dsg/mmapcodec/CodecInitParams;)V
    .locals 7

    .prologue
    const/16 v6, 0x1e

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 519
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;

    .line 492
    iput-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->c:Landroid/view/Surface;

    .line 493
    iput-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->d:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    .line 499
    iput v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->h:I

    .line 500
    iput v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->i:I

    .line 501
    iput v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->j:I

    .line 502
    iput v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->k:I

    .line 504
    iput-boolean v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->l:Z

    .line 505
    iput-boolean v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->m:Z

    .line 521
    iget v0, p2, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->i:I

    .line 522
    iget v0, p2, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->j:I

    .line 524
    iput v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->k:I

    .line 529
    iput v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->h:I

    .line 532
    :try_start_0
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_0
    const-string/jumbo v0, "video/avc"

    iget v1, p2, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iget v2, p2, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 537
    const-string v1, "bitrate"

    iget v2, p2, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 539
    const-string v1, "frame-rate"

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 543
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 544
    const-string v1, "i-frame-interval"

    iget v2, p2, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 545
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v4, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 546
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 547
    iput-boolean v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->m:Z

    .line 548
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "Creating Encoder for Config Header Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ConfigHeader Creation for Encoder Failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 551
    :cond_0
    iput-boolean v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->m:Z

    .line 552
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->c:Landroid/view/Surface;

    .line 553
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 554
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->c:Landroid/view/Surface;

    invoke-direct {v0, p1, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->d:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    .line 555
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->d:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b()V

    .line 556
    return-void
.end method

.method private a(I)J
    .locals 4

    .prologue
    .line 641
    .line 642
    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->k:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private b(I)V
    .locals 7

    .prologue
    const/16 v6, 0x4000

    const/16 v5, 0xc11

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 656
    rem-int/lit8 v0, p1, 0x8

    .line 659
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 661
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->i:I

    div-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v0

    .line 662
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->j:I

    div-int/lit8 v0, v0, 0x2

    .line 668
    :goto_0
    const v2, 0x3f088889

    invoke-static {v3, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 669
    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    .line 671
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 672
    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->i:I

    div-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->j:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v0, v2, v3}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 673
    const v0, 0x3f6ceced

    const v1, 0x3e48c8c9

    const v2, 0x3f3ababb

    invoke-static {v0, v1, v2, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 674
    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    .line 675
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 676
    return-void

    .line 664
    :cond_0
    rsub-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->i:I

    div-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v0

    .line 665
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 582
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 583
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 584
    :goto_0
    if-ltz v0, :cond_2

    .line 585
    aget-object v3, v1, v0

    .line 586
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v4, v4, [B

    .line 587
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 588
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->e:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->f:[B

    if-eqz v3, :cond_0

    .line 589
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 590
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 621
    :goto_1
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 622
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    goto :goto_0

    .line 592
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 593
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    if-ne v5, v10, :cond_3

    .line 594
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "parsing sps/pps"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 599
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-ne v5, v10, :cond_1

    .line 602
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 603
    const/4 v5, 0x4

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    .line 604
    add-int/lit8 v6, v3, -0x8

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->e:[B

    .line 605
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->e:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->e:[B

    array-length v9, v9

    invoke-static {v4, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 606
    array-length v6, v4

    sub-int/2addr v6, v3

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->f:[B

    .line 607
    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->f:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->f:[B

    array-length v8, v8

    invoke-static {v4, v3, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->e:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->f:[B

    array-length v4, v4

    add-int/2addr v3, v4

    array-length v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->g:[B

    .line 615
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->g:[B

    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v3, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->e:[B

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->g:[B

    array-length v7, v5

    iget-object v8, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->e:[B

    array-length v8, v8

    invoke-static {v3, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->g:[B

    array-length v6, v5

    iget-object v7, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->e:[B

    array-length v7, v7

    add-int/2addr v6, v7

    array-length v7, v5

    invoke-static {v5, v3, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->f:[B

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->g:[B

    array-length v7, v5

    iget-object v8, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->e:[B

    array-length v8, v8

    add-int/2addr v7, v8

    array-length v5, v5

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->f:[B

    array-length v7, v7

    invoke-static {v3, v4, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->l:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 624
    :catch_0
    move-exception v0

    .line 625
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 627
    :cond_2
    return-void

    .line 596
    :cond_3
    :try_start_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "something is amiss?"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 603
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->m:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->l:Z

    return v0
.end method

.method public c()[B
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->g:[B

    return-object v0
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 560
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 561
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->d:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->a()V

    .line 562
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->f()V

    .line 566
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->h:I

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b(I)V

    .line 567
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->d:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->h:I

    invoke-direct {p0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->a(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->a(J)V

    .line 568
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to encoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->d:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->c()Z

    .line 570
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->h:I

    .line 571
    return-void
.end method
