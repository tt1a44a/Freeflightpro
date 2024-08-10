.class Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;
.super Ljava/lang/Object;
.source "MediaCodecBufferEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;

.field private b:Landroid/media/MediaCodec;

.field private c:[B

.field private d:[B

.field private e:[B

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 253
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-boolean v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->f:Z

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->g:Z

    .line 254
    if-nez p2, :cond_0

    .line 255
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    const-string v1, "Warning!!!! Assuming default values to generate Config header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;

    invoke-direct {p2, p1, v3}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$1;)V

    .line 257
    const/16 v0, 0x500

    iput v0, p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->a:I

    .line 258
    const/16 v0, 0x2d0

    iput v0, p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->b:I

    .line 259
    iget v0, p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->a:I

    iget v1, p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->b:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iput v0, p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->d:I

    .line 260
    const/16 v0, 0x1e

    iput v0, p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->c:I

    .line 263
    :cond_0
    :try_start_0
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    const-string/jumbo v0, "video/avc"

    iget v1, p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->a:I

    iget v2, p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->b:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 268
    const-string v1, "bitrate"

    iget v2, p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 269
    const-string v1, "frame-rate"

    iget v2, p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 270
    const-string v1, "color-format"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 271
    const-string v1, "i-frame-interval"

    iget v2, p2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 272
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 273
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 274
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->g:Z

    return v0
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->e:[B

    return-object v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 278
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 279
    return-void
.end method

.method public d()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 285
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 286
    if-ltz v1, :cond_0

    .line 287
    aget-object v3, v0, v1

    .line 288
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 289
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    .line 290
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 291
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 292
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 295
    :cond_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 296
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 297
    :goto_0
    if-ltz v0, :cond_3

    .line 298
    aget-object v2, v7, v0

    .line 299
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 300
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 301
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->d:[B

    if-eqz v2, :cond_1

    .line 302
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 303
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 332
    :goto_1
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 333
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    goto :goto_0

    .line 305
    :cond_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 307
    const-string v4, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    const-string/jumbo v5, "parsing sps/pps"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-ne v4, v9, :cond_2

    .line 313
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 314
    add-int/lit8 v4, v2, -0x8

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    .line 315
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    array-length v8, v8

    invoke-static {v3, v4, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    array-length v4, v3

    sub-int/2addr v4, v2

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->d:[B

    .line 317
    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->d:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->d:[B

    array-length v6, v6

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->f:Z

    if-eqz v2, :cond_4

    .line 319
    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 320
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->d:[B

    array-length v4, v4

    add-int/2addr v3, v4

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->e:[B

    .line 321
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->e:[B

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->e:[B

    array-length v6, v2

    iget-object v8, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    array-length v8, v8

    invoke-static {v3, v4, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->e:[B

    array-length v5, v2

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    array-length v6, v6

    add-int/2addr v5, v6

    array-length v6, v2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->d:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->e:[B

    array-length v6, v2

    iget-object v8, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    array-length v8, v8

    add-int/2addr v6, v8

    array-length v2, v2

    add-int/2addr v2, v6

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->d:[B

    array-length v6, v6

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->g:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 338
    :cond_3
    return-void

    .line 326
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->d:[B

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->e:[B

    .line 327
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->e:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->d:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->e:[B

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c:[B

    array-length v5, v5

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->d:[B

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 319
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method
