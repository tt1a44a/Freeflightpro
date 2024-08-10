.class public Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;
.super Ljava/lang/Object;
.source "SlowMotionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;,
        Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;,
        Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;,
        Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;,
        Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnSeekCompleteListener;,
        Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;,
        Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnCompletionListener;
    }
.end annotation


# static fields
.field public static final EXPORT_COMPLETED:I = 0x2


# instance fields
.field a:J

.field private b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnCompletionListener;

.field private c:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

.field private d:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnSeekCompleteListener;

.field private e:Z

.field private f:[Landroid/os/Handler;

.field private g:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayerInitParam;

.field private h:J

.field private i:F

.field private j:Landroid/media/MediaExtractor;

.field private k:Landroid/media/MediaCodec;

.field private l:Landroid/media/MediaExtractor;

.field private m:Landroid/media/MediaCodec;

.field private n:Landroid/media/MediaFormat;

.field private o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

.field private p:J

.field private q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/media/MediaFormat;

.field private u:Landroid/media/MediaCodec;

.field private v:Landroid/media/MediaMuxer;

.field private w:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->e:Z

    .line 232
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/os/Handler;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    .line 234
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->h:J

    .line 235
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i:F

    .line 241
    iput-wide v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a:J

    .line 243
    new-instance v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    invoke-direct {v0, v3}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;-><init>(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    .line 244
    iput-wide v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->p:J

    .line 246
    new-instance v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    invoke-direct {v0, v3}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;-><init>(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->r:Ljava/util/Map;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->s:Ljava/util/Map;

    .line 266
    new-instance v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;-><init>(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->start()V

    .line 267
    new-instance v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    invoke-direct {v0, p0, v2}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;-><init>(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->start()V

    .line 269
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->e:Z

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;-><init>(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->start()V

    .line 271
    new-instance v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;-><init>(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->start()V

    .line 273
    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 418
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 420
    const-wide/16 v0, 0x3e8

    :try_start_0
    div-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    rem-long v2, p1, v2

    mul-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V
    .locals 12

    .prologue
    .line 705
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::exportAudioEncoderOutput:++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const v0, 0x4e742400    # 1.024E9f

    iget v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->x:I

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 708
    const-wide/16 v0, 0x0

    .line 711
    :cond_0
    :goto_0
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 712
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v3, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 713
    if-ltz v4, :cond_0

    .line 714
    const-string v5, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v6, "::exportAudioEncoderOutput: %d,%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 715
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 714
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 742
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->v:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 743
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->v:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 745
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;->b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;->b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;->onProgressUpdate(IJ)V

    .line 749
    :cond_1
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::exportAudioEncoderOutput:--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void

    .line 719
    :cond_2
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 720
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-nez v6, :cond_3

    .line 721
    aget-object v6, v5, v4

    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 722
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 723
    const/4 v7, 0x0

    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 724
    const/4 v7, 0x0

    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 725
    iput-wide v0, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 726
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v3, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 727
    const-string v3, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v7, "::exportAudioEncoderOutput: size=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 728
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 727
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->v:Landroid/media/MediaMuxer;

    iget v7, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->w:I

    aget-object v5, v5, v4

    invoke-virtual {v3, v7, v5, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 731
    long-to-float v0, v0

    add-float/2addr v0, v2

    float-to-long v0, v0

    .line 736
    :cond_3
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->c(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)[Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 26

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->n:Landroid/media/MediaFormat;

    const-string/jumbo v5, "sample-rate"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->n:Landroid/media/MediaFormat;

    const-string v5, "channel-count"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 321
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/16 v7, 0xc

    .line 322
    :goto_0
    const/4 v4, 0x2

    invoke-static {v6, v7, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    .line 324
    new-instance v4, Landroid/media/AudioTrack;

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 325
    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V

    .line 327
    const-wide/16 v14, -0x1

    .line 330
    const-wide/16 v12, 0x0

    .line 331
    const-wide/16 v10, 0x0

    .line 333
    const/16 v5, 0x1000

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 335
    new-instance v16, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-direct/range {v16 .. v16}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;-><init>()V

    .line 336
    new-instance v17, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-direct/range {v17 .. v17}, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;-><init>()V

    .line 337
    move-object/from16 v0, v17

    iput v6, v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->sampleRate:I

    .line 338
    new-instance v18, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-direct/range {v18 .. v18}, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;-><init>()V

    .line 339
    const-wide/16 v8, -0x1

    .line 342
    :cond_0
    :goto_1
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    move-object/from16 v20, v0

    const-wide/16 v22, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v20

    .line 347
    if-ltz v20, :cond_0

    .line 349
    iget v0, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x4

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 414
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V

    .line 415
    return-void

    .line 321
    :cond_1
    const/16 v7, 0x10

    goto :goto_0

    .line 353
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->s:Ljava/util/Map;

    move-object/from16 v21, v0

    iget-wide v0, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    .line 356
    const-wide/16 v24, 0x0

    cmp-long v21, v14, v24

    if-gez v21, :cond_4

    .line 358
    iget-wide v10, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 365
    :goto_3
    iget v14, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v14, v14, [B

    .line 366
    aget-object v15, v19, v20

    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 367
    move-object/from16 v0, p0

    iget v15, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v19

    if-nez v15, :cond_5

    .line 368
    const-wide/16 v22, 0x5dc

    sub-long v12, v12, v22

    .line 369
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a(J)V

    .line 370
    const/4 v15, 0x0

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v14, v15, v5}, Landroid/media/AudioTrack;->write([BII)I

    .line 401
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 402
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 406
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v5, v5, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    and-int/lit8 v5, v5, 0x1

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_7

    const/4 v5, 0x1

    .line 407
    :goto_4
    if-nez v5, :cond_8

    .line 408
    monitor-exit v19

    goto :goto_2

    .line 410
    :catchall_0
    move-exception v4

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 360
    :cond_4
    sub-long v12, v22, v14

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 361
    iget-wide v14, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v10, v14, v10

    long-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i:F

    div-float/2addr v10, v11

    long-to-float v11, v12

    sub-float/2addr v10, v11

    float-to-long v12, v10

    .line 362
    iget-wide v10, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_3

    .line 372
    :cond_5
    int-to-float v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i:F

    move/from16 v19, v0

    div-float v15, v15, v19

    float-to-int v15, v15

    .line 373
    int-to-long v0, v15

    move-wide/from16 v22, v0

    cmp-long v19, v8, v22

    if-eqz v19, :cond_6

    .line 374
    invoke-virtual/range {v16 .. v16}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->close()V

    .line 375
    move-object/from16 v0, v18

    iput v15, v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->sampleRate:I

    .line 376
    invoke-virtual/range {v16 .. v18}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->init(Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;)V

    .line 377
    int-to-long v8, v15

    .line 380
    :cond_6
    new-instance v15, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;

    invoke-direct {v15}, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;-><init>()V

    .line 381
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 382
    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 383
    iput-object v7, v15, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->buffer:Ljava/nio/ByteBuffer;

    .line 384
    iget v0, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v15, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->frameSize:I

    .line 385
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->attachFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V

    .line 387
    long-to-float v12, v12

    const v13, 0x44bb8000    # 1500.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i:F

    move/from16 v19, v0

    div-float v13, v13, v19

    sub-float/2addr v12, v13

    float-to-long v12, v12

    .line 388
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a(J)V

    .line 391
    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->getFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V

    .line 392
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 393
    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 394
    iget v0, v15, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->frameSize:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 397
    const/16 v19, 0x0

    iget v0, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v4, v14, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_5

    .line 406
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 410
    :cond_8
    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private b(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V
    .locals 20

    .prologue
    .line 758
    const-string v2, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v3, "::exportAudioDecoderOutput:++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const v2, 0x4e742400    # 1.024E9f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->x:I

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 763
    move-object/from16 v0, p0

    iget v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->y:I

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 765
    new-instance v14, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-direct {v14}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;-><init>()V

    .line 766
    new-instance v15, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-direct {v15}, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;-><init>()V

    .line 767
    move-object/from16 v0, p0

    iget v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->x:I

    iput v2, v15, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->sampleRate:I

    .line 768
    new-instance v16, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-direct/range {v16 .. v16}, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;-><init>()V

    .line 769
    const-wide/16 v2, -0x1

    move-wide v10, v2

    .line 772
    :goto_0
    new-instance v17, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 775
    if-ltz v2, :cond_2

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 778
    move-object/from16 v0, v17

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v4, [B

    move-object/from16 v18, v0

    .line 779
    aget-object v3, v3, v2

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->s:Ljava/util/Map;

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 783
    const/high16 v3, 0x3f800000    # 1.0f

    .line 784
    if-eqz v2, :cond_6

    .line 785
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 788
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_3

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 790
    if-ltz v3, :cond_1

    .line 791
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    .line 865
    const-string v2, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v3, "::exportAudioDecoderOutput:--"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void

    .line 796
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 797
    aget-object v4, v2, v3

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 798
    aget-object v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    array-length v5, v0

    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, v17

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 858
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;->b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

    if-eqz v2, :cond_2

    .line 859
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;->b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

    const/4 v3, 0x0

    const-wide/16 v4, 0x32

    const-wide/16 v6, 0x32

    move-object/from16 v0, v17

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->h:J

    const-wide/16 v18, 0x3e8

    mul-long v8, v8, v18

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;->onProgressUpdate(IJ)V

    :cond_2
    move-wide v2, v10

    move-wide v10, v2

    .line 862
    goto/16 :goto_0

    .line 804
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->x:I

    int-to-float v3, v3

    div-float v2, v3, v2

    float-to-int v2, v2

    .line 806
    int-to-long v4, v2

    cmp-long v3, v10, v4

    if-eqz v3, :cond_4

    .line 807
    invoke-virtual {v14}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->close()V

    .line 808
    move-object/from16 v0, v16

    iput v2, v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->sampleRate:I

    .line 809
    invoke-virtual/range {v14 .. v16}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->init(Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;)V

    .line 810
    int-to-long v10, v2

    .line 815
    :cond_4
    new-instance v19, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;

    invoke-direct/range {v19 .. v19}, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;-><init>()V

    .line 816
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 817
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 818
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->buffer:Ljava/nio/ByteBuffer;

    .line 819
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v19

    iput v2, v0, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->frameSize:I

    .line 820
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->attachFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V

    .line 822
    const/4 v2, 0x0

    move v9, v2

    .line 824
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->getFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V

    .line 825
    const-string v2, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v3, "::exportAudioDecoderOutput: framsize=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    iget v6, v0, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->frameSize:I

    .line 827
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 826
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 825
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 829
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 830
    move-object/from16 v0, v19

    iget v2, v0, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->frameSize:I

    if-lez v2, :cond_1

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 834
    if-ltz v3, :cond_5

    .line 836
    const-string v2, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v4, "::exportAudioDecoderOutput: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 838
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 836
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 841
    aget-object v4, v2, v3

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 842
    aget-object v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    array-length v5, v0

    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-float v6, v6

    int-to-float v7, v9

    mul-float/2addr v7, v12

    add-float/2addr v6, v7

    float-to-long v6, v6

    move-object/from16 v0, v17

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 845
    add-int/lit8 v2, v9, 0x1

    :goto_3
    move v9, v2

    .line 847
    goto :goto_2

    :cond_5
    move v2, v9

    goto :goto_3

    :cond_6
    move v2, v3

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l()V

    return-void
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->b(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V

    return-void
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 428
    move v0, v7

    .line 429
    :goto_0
    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 432
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    const-wide/16 v8, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 434
    if-ltz v1, :cond_0

    .line 435
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    aget-object v6, v0, v1

    invoke-virtual {v3, v6, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 436
    if-lez v3, :cond_1

    .line 437
    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 438
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 444
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    monitor-enter v1

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_3

    move v0, v7

    .line 448
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 450
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 447
    goto :goto_1
.end method

.method private c(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V
    .locals 14

    .prologue
    .line 903
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::exportVideo:++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->getDuration()J

    .line 908
    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->v:Landroid/media/MediaMuxer;

    .line 909
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->v:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->t:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v8

    .line 910
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->v:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->n:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->w:I

    .line 913
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->v:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 915
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 916
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 918
    const v0, 0x7e9000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 920
    const-wide/16 v2, -0x1

    .line 921
    const-wide/16 v0, -0x1

    move-wide v6, v2

    move-wide v2, v0

    .line 924
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 925
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    .line 926
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::exportVideo: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    if-lez v10, :cond_2

    .line 929
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 930
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_1

    .line 932
    const-wide/16 v0, 0x0

    move-wide v2, v4

    .line 946
    :goto_1
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 947
    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v7

    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 948
    const/4 v7, 0x0

    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 949
    iput-wide v0, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 950
    iput v10, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 951
    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->v:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v8, v9, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 954
    iget-object v6, p1, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;->b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

    if-eqz v6, :cond_0

    .line 955
    iget-object v6, p1, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;->b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

    const/4 v7, 0x0

    const-wide/16 v10, 0x32

    mul-long/2addr v4, v10

    iget-wide v10, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->h:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long/2addr v4, v10

    invoke-interface {v6, v7, v4, v5}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;->onProgressUpdate(IJ)V

    .line 962
    :cond_0
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move-wide v6, v2

    move-wide v2, v0

    .line 963
    goto :goto_0

    .line 935
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->r:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 936
    const/high16 v1, 0x3f800000    # 1.0f

    .line 937
    if-eqz v0, :cond_3

    .line 938
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 941
    :goto_2
    sub-long v6, v4, v6

    long-to-float v1, v6

    div-float v0, v1, v0

    float-to-long v0, v0

    .line 943
    add-long/2addr v0, v2

    move-wide v2, v4

    goto :goto_1

    .line 966
    :cond_2
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::exportVideo:video done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->n:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 969
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->n:Landroid/media/MediaFormat;

    const-string/jumbo v2, "sample-rate"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->x:I

    .line 970
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->n:Landroid/media/MediaFormat;

    const-string v2, "channel-count"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->y:I

    .line 972
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    .line 973
    const-string v2, "mime"

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v2, "aac-profile"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 975
    const-string/jumbo v2, "sample-rate"

    iget v3, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->x:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 976
    const-string v2, "channel-count"

    iget v3, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 977
    const-string v2, "bitrate"

    const v3, 0x1f400

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 978
    const-string v2, "max-input-size"

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 982
    :try_start_1
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    .line 983
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 984
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 993
    :goto_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 995
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 996
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 997
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 999
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1001
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1002
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1003
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1005
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1007
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::exportVideo:--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void

    .line 985
    :catch_0
    move-exception v0

    .line 986
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 989
    :catch_1
    move-exception v0

    .line 990
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_3
    move v0, v1

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i()V

    return-void
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V

    return-void
.end method

.method private d()V
    .locals 12

    .prologue
    .line 454
    const-wide/16 v2, -0x1

    .line 457
    const-wide/16 v0, 0x0

    .line 458
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a:J

    .line 460
    :cond_0
    :goto_0
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 461
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 462
    if-ltz v6, :cond_0

    .line 464
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->r:Ljava/util/Map;

    iget-wide v8, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 467
    const-wide/16 v10, 0x0

    cmp-long v4, v2, v10

    if-gez v4, :cond_1

    .line 469
    iget-wide v2, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a:J

    .line 476
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a(J)V

    .line 478
    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    monitor-enter v7

    .line 479
    :try_start_0
    iget v2, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 480
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    .line 481
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :goto_2
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    monitor-enter v1

    .line 498
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    .line 499
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->e()V

    .line 500
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    return-void

    .line 471
    :cond_1
    sub-long v0, v8, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 472
    iget-wide v2, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v8, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a:J

    sub-long/2addr v2, v8

    long-to-float v2, v2

    iget v3, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i:F

    div-float/2addr v2, v3

    long-to-float v0, v0

    sub-float v0, v2, v0

    float-to-long v0, v0

    .line 473
    iget-wide v2, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a:J

    goto :goto_1

    .line 483
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    move v4, v2

    .line 484
    :goto_3
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v2, v6, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 485
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 486
    if-nez v4, :cond_4

    .line 487
    monitor-exit v7

    goto :goto_2

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 483
    :cond_3
    const/4 v2, 0x0

    move v4, v2

    goto :goto_3

    .line 489
    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->c:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

    if-eqz v4, :cond_5

    .line 490
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->c:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

    const/4 v6, 0x0

    iget-wide v8, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-interface {v4, v6, v8, v9}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;->onProgressUpdate(IJ)V

    .line 493
    :cond_5
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 500
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic d(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->g()V

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 504
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 505
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 506
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 507
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->e:Z

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnCompletionListener;

    invoke-interface {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnCompletionListener;->onCompletion()V

    .line 516
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 517
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iput v4, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    .line 519
    :cond_2
    return-void

    .line 514
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f()V

    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 522
    move v0, v7

    .line 523
    :goto_0
    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 526
    if-ltz v1, :cond_0

    .line 527
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 528
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    aget-object v6, v0, v1

    invoke-virtual {v3, v6, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 529
    if-lez v3, :cond_1

    .line 530
    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 531
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 536
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    monitor-enter v1

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    if-ne v0, v7, :cond_3

    move v0, v7

    .line 541
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 544
    :cond_2
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    monitor-enter v1

    .line 545
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    .line 546
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->e()V

    .line 547
    monitor-exit v1

    .line 548
    return-void

    :cond_3
    move v0, v2

    .line 540
    goto :goto_1

    .line 547
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->d()V

    return-void
.end method

.method private g()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 552
    :cond_0
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 553
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 554
    if-ltz v4, :cond_0

    .line 556
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v5, "::seekOutput: %d,%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->p:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    iget-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    iget-wide v6, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->p:J

    iget-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v4, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 559
    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->p:J

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 569
    :goto_1
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    iget v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;->a:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;->a:I

    .line 571
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->h()V

    .line 575
    return-void

    :cond_1
    move v0, v2

    .line 558
    goto :goto_0

    .line 563
    :cond_2
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 571
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic g(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->c()V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 579
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;->a:I

    and-int/lit8 v0, v0, 0x6

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 582
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 584
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->d:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->d:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnSeekCompleteListener;

    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->p:J

    invoke-interface {v0, v2, v3}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnSeekCompleteListener;->onSeekComplete(J)V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;->a:I

    .line 590
    :cond_1
    monitor-exit v1

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic h(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->b()V

    return-void
.end method

.method private i()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 593
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->p:J

    invoke-virtual {v0, v4, v5, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 594
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->p:J

    .line 596
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->e:Z

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->p:J

    invoke-virtual {v0, v4, v5, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 601
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 602
    if-ltz v1, :cond_2

    .line 603
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 604
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 605
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    aget-object v6, v0, v1

    invoke-virtual {v3, v6, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 606
    if-lez v3, :cond_1

    .line 607
    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 608
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 612
    :cond_2
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;->a:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 614
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->p:J

    invoke-virtual {v0, v2, v3, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 620
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    monitor-enter v1

    .line 621
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    iget v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;->a:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;->a:I

    .line 622
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 624
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->h()V

    .line 627
    return-void

    .line 616
    :cond_3
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 622
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic i(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k()V

    return-void
.end method

.method private j()V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method static synthetic j(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j()V

    return-void
.end method

.method private k()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 871
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::exportAudioDecoderInput:++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 875
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 876
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 877
    if-ltz v1, :cond_0

    .line 879
    const-string v3, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v6, "::exportAudioDecoderInput: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 880
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    .line 879
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    aget-object v6, v0, v1

    invoke-virtual {v3, v6, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 883
    if-lez v3, :cond_1

    .line 884
    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 885
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 891
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 896
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::exportAudioDecoderInput:--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void
.end method

.method static synthetic k(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->e:Z

    return v0
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1013
    :try_start_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    .line 1014
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->g:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayerInitParam;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayerInitParam;->videoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 1016
    :goto_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->n:Landroid/media/MediaFormat;

    .line 1018
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->n:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1019
    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 1021
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    .line 1022
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->n:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1023
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :cond_0
    :goto_1
    return-void

    .line 1016
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1038
    :try_start_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    .line 1039
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->g:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayerInitParam;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayerInitParam;->videoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 1041
    :goto_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1042
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->t:Landroid/media/MediaFormat;

    .line 1043
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->t:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    const-string/jumbo v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1045
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 1046
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    .line 1047
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->t:Landroid/media/MediaFormat;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->g:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayerInitParam;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayerInitParam;->surface:Landroid/view/Surface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1048
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 1052
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_1
    return-void

    .line 1041
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public export(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;)V
    .locals 3

    .prologue
    .line 691
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 692
    const/16 v1, 0x12

    iput v1, v0, Landroid/os/Message;->what:I

    .line 693
    new-instance v1, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;-><init>(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$1;)V

    .line 694
    iput-object p1, v1, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;->a:Ljava/lang/String;

    .line 695
    iput-object p2, v1, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;->b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

    .line 696
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 698
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 699
    return-void
.end method

.method public getCurrentSpeed()F
    .locals 1

    .prologue
    .line 1063
    iget v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i:F

    return v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 1122
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1123
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1124
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->g:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayerInitParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayerInitParam;->videoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1125
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 1126
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->h:J

    .line 1127
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1130
    :cond_0
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->h:J

    return-wide v0
.end method

.method public getOnCompletionListener()Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnCompletionListener;

    return-object v0
.end method

.method public getOnProgressUpdateListener()Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->c:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

    return-object v0
.end method

.method public getOnSeekCompleteListener()Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->d:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method public init(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayerInitParam;)V
    .locals 3

    .prologue
    .line 281
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->g:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayerInitParam;

    .line 282
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->h:J

    .line 283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->p:J

    .line 285
    new-instance v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$1;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$1;-><init>(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V

    .line 314
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 315
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 656
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    monitor-enter v1

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 658
    :cond_0
    monitor-exit v1

    .line 662
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    const/4 v2, 0x2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    .line 661
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public seek(J)V
    .locals 5

    .prologue
    .line 669
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    monitor-enter v1

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    if-eqz v0, :cond_1

    .line 671
    :cond_0
    monitor-exit v1

    .line 682
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    const/4 v2, 0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;->a:I

    .line 674
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->p:J

    .line 676
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 679
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 680
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 681
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentSpeed(F)V
    .locals 0

    .prologue
    .line 1072
    iput p1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i:F

    .line 1073
    return-void
.end method

.method public setOnCompletionListener(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->b:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnCompletionListener;

    .line 1086
    return-void
.end method

.method public setOnProgressUpdateListener(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->c:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnProgressUpdateListener;

    .line 1100
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->d:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$OnSeekCompleteListener;

    .line 1114
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 636
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    monitor-enter v1

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->o:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$d;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    if-eqz v0, :cond_1

    .line 638
    :cond_0
    monitor-exit v1

    .line 650
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->q:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;

    const/4 v2, 0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$c;->a:I

    .line 642
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 643
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 644
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->e:Z

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 646
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 647
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 649
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unInit()V
    .locals 3

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1140
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1145
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->m:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 1148
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    .line 1149
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1152
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_3

    .line 1153
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1157
    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1158
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 1159
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f:[Landroid/os/Handler;

    aget-object v1, v1, v0

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1157
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1162
    :cond_5
    return-void
.end method
