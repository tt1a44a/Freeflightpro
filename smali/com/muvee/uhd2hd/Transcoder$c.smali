.class Lcom/muvee/uhd2hd/Transcoder$c;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/uhd2hd/Transcoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/uhd2hd/Transcoder;

.field private b:Lcom/muvee/uhd2hd/ITranscoderListener;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/muvee/uhd2hd/Transcoder$b;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/muvee/uhd2hd/Transcoder;Ljava/lang/String;Ljava/lang/String;Lcom/muvee/uhd2hd/Transcoder$b;Lcom/muvee/uhd2hd/ITranscoderListener;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 270
    iput-object p1, p0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    .line 264
    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$c;->c:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$c;->d:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$c;->e:Lcom/muvee/uhd2hd/Transcoder$b;

    .line 267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/uhd2hd/Transcoder$c;->f:J

    .line 271
    iput-object p2, p0, Lcom/muvee/uhd2hd/Transcoder$c;->c:Ljava/lang/String;

    .line 272
    iput-object p3, p0, Lcom/muvee/uhd2hd/Transcoder$c;->d:Ljava/lang/String;

    .line 273
    iput-object p4, p0, Lcom/muvee/uhd2hd/Transcoder$c;->e:Lcom/muvee/uhd2hd/Transcoder$b;

    .line 274
    iput-object p5, p0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    .line 275
    return-void
.end method

.method private a(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;Ljava/util/concurrent/atomic/AtomicReference;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaCodecInfo;",
            "Landroid/media/MediaFormat;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Landroid/media/MediaCodec;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 845
    .line 846
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 847
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 849
    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 850
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 851
    return-object v0
.end method

.method private a(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    .line 836
    invoke-direct {p0, p1}, Lcom/muvee/uhd2hd/Transcoder$c;->a(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 837
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 838
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 839
    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 871
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    move v3, v1

    .line 872
    :goto_0
    if-ge v3, v4, :cond_3

    .line 873
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 875
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 872
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .line 880
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 881
    aget-object v6, v5, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v2

    .line 886
    :goto_2
    return-object v0

    .line 880
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 886
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a()Landroid/media/MediaMuxer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/muvee/uhd2hd/Transcoder$c;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/muvee/uhd2hd/Transcoder$c;)Lcom/muvee/uhd2hd/ITranscoderListener;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    return-object v0
.end method

.method private a(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 855
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/media/MediaExtractor;Landroid/media/MediaExtractor;ILandroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/media/MediaMuxer;Lcom/muvee/uhd2hd/a;Lcom/muvee/uhd2hd/b;)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muvee/uhd2hd/TException;
        }
    .end annotation

    .prologue
    .line 600
    .line 606
    invoke-virtual/range {p4 .. p4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v24

    .line 607
    invoke-virtual/range {p4 .. p4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 608
    invoke-virtual/range {p5 .. p5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 609
    new-instance v25, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v25 .. v25}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 610
    new-instance v26, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v26 .. v26}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 613
    const/4 v5, 0x0

    .line 615
    const/4 v13, -0x1

    .line 616
    const/4 v11, -0x1

    .line 617
    const/16 v21, 0x0

    .line 618
    const/4 v4, 0x0

    .line 619
    const/16 v18, 0x0

    .line 620
    const/16 v16, 0x0

    .line 621
    const/16 v17, 0x0

    .line 623
    const-wide/16 v14, 0x0

    .line 625
    const/4 v12, 0x0

    .line 628
    const-string v7, "Transcoder"

    .line 630
    const/high16 v7, 0x40000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 631
    new-instance v28, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v28 .. v28}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 633
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v7}, Lcom/muvee/uhd2hd/Transcoder;->l(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 634
    const/16 v17, 0x1

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    .line 637
    :goto_0
    if-eqz v16, :cond_0

    if-nez v17, :cond_26

    .line 639
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v5}, Lcom/muvee/uhd2hd/Transcoder;->f(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    move/from16 v4, v17

    .line 819
    :goto_1
    if-eqz v16, :cond_20

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    if-eqz v4, :cond_20

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v5}, Lcom/muvee/uhd2hd/Transcoder;->m(Lcom/muvee/uhd2hd/Transcoder;)D

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcoderProgressUpdated(D)V

    .line 826
    :cond_1
    return-void

    .line 642
    :cond_2
    if-nez v4, :cond_25

    if-eqz v22, :cond_3

    if-eqz v12, :cond_25

    .line 644
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v5}, Lcom/muvee/uhd2hd/Transcoder;->f(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_7

    move/from16 v8, v17

    move/from16 v20, v4

    move/from16 v4, v21

    .line 670
    :goto_2
    if-nez v8, :cond_4

    if-eqz v12, :cond_4

    .line 671
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v5}, Lcom/muvee/uhd2hd/Transcoder;->f(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 700
    :cond_4
    if-nez v18, :cond_23

    if-eqz v22, :cond_5

    if-eqz v12, :cond_23

    .line 702
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v5}, Lcom/muvee/uhd2hd/Transcoder;->f(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_10

    move/from16 v9, v18

    move-object/from16 v10, v19

    .line 750
    :goto_3
    if-nez v16, :cond_22

    if-eqz v22, :cond_6

    if-eqz v12, :cond_22

    .line 752
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v5}, Lcom/muvee/uhd2hd/Transcoder;->f(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    .line 803
    :goto_4
    if-nez v12, :cond_29

    if-eqz v17, :cond_29

    .line 804
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    .line 805
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v5}, Lcom/muvee/uhd2hd/Transcoder;->l(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_28

    .line 807
    invoke-virtual/range {p2 .. p3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 806
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v5

    .line 808
    const/4 v4, 0x0

    .line 811
    :goto_5
    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaMuxer;->start()V

    .line 812
    const/4 v6, 0x1

    move v11, v5

    move v5, v4

    move v4, v6

    move v6, v7

    .line 815
    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v7}, Lcom/muvee/uhd2hd/Transcoder;->f(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_27

    move v4, v8

    .line 816
    goto/16 :goto_1

    .line 646
    :cond_7
    const-wide/16 v6, 0x2710

    .line 647
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 648
    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    move/from16 v8, v17

    move/from16 v20, v4

    move/from16 v4, v21

    .line 649
    goto/16 :goto_2

    .line 651
    :cond_8
    aget-object v4, v24, v5

    .line 652
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 655
    if-ltz v7, :cond_9

    .line 656
    const/4 v6, 0x0

    .line 658
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    move-object/from16 v4, p4

    .line 656
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move-wide v14, v8

    .line 661
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v20, 0x1

    .line 662
    :goto_7
    if-eqz v20, :cond_24

    .line 663
    const-string v4, "Transcoder"

    const-string/jumbo v6, "video extractor: EOS"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move/from16 v8, v17

    move/from16 v4, v21

    goto/16 :goto_2

    .line 661
    :cond_a
    const/16 v20, 0x0

    goto :goto_7

    .line 674
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v5}, Lcom/muvee/uhd2hd/Transcoder;->f(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_4

    .line 678
    :cond_c
    if-eqz v4, :cond_d

    .line 679
    const-string v5, "Transcoder"

    const-string v6, "audio extractor:  EOS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/16 v17, 0x1

    move/from16 v8, v17

    .line 681
    goto/16 :goto_2

    .line 683
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 685
    if-lez v4, :cond_e

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    move-object/from16 v0, v28

    iput-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    move-object/from16 v0, v28

    iput v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 690
    move-object/from16 v0, v28

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 691
    const/4 v4, 0x0

    move-object/from16 v0, v28

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 692
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v11, v1, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 695
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x1

    .line 696
    :goto_8
    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v6, v14

    if-lez v5, :cond_c

    goto/16 :goto_2

    .line 695
    :cond_f
    const/4 v4, 0x0

    goto :goto_8

    .line 704
    :cond_10
    const-wide/16 v6, 0x2710

    .line 705
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 707
    const/4 v5, -0x1

    if-ne v6, v5, :cond_11

    move/from16 v9, v18

    move-object/from16 v10, v19

    .line 708
    goto/16 :goto_3

    .line 710
    :cond_11
    const/4 v5, -0x3

    if-ne v6, v5, :cond_12

    .line 711
    const-string v5, "Transcoder"

    const-string/jumbo v6, "video decoder: output buffers changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-virtual/range {p4 .. p4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move/from16 v9, v18

    move-object v10, v5

    .line 714
    goto/16 :goto_3

    .line 716
    :cond_12
    const/4 v5, -0x2

    if-ne v6, v5, :cond_13

    .line 718
    invoke-virtual/range {p4 .. p4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    .line 719
    const-string v6, "Transcoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "video decoder: output format changed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v9, v18

    move-object/from16 v10, v19

    .line 722
    goto/16 :goto_3

    .line 725
    :cond_13
    aget-object v5, v19, v6

    .line 726
    move-object/from16 v0, v25

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_14

    .line 727
    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move/from16 v9, v18

    move-object/from16 v10, v19

    .line 729
    goto/16 :goto_3

    .line 731
    :cond_14
    move-object/from16 v0, v25

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    .line 732
    :goto_9
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 734
    if-eqz v5, :cond_16

    .line 735
    const/4 v5, 0x1

    invoke-virtual/range {p8 .. p8}, Lcom/muvee/uhd2hd/b;->c()Z

    move-result v6

    if-ne v5, v6, :cond_15

    .line 736
    invoke-virtual/range {p8 .. p8}, Lcom/muvee/uhd2hd/b;->d()V

    .line 738
    :cond_15
    move-object/from16 v0, v25

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v30, 0x3e8

    mul-long v6, v6, v30

    .line 739
    move-object/from16 v0, p7

    invoke-virtual {v0, v6, v7}, Lcom/muvee/uhd2hd/a;->a(J)V

    .line 740
    invoke-virtual/range {p7 .. p7}, Lcom/muvee/uhd2hd/a;->c()Z

    .line 742
    :cond_16
    move-object/from16 v0, v25

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_23

    .line 743
    const-string v5, "Transcoder"

    const-string/jumbo v6, "video decoder: EOS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v5, 0x1

    .line 745
    invoke-virtual/range {p5 .. p5}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move v9, v5

    move-object/from16 v10, v19

    goto/16 :goto_3

    .line 731
    :cond_17
    const/4 v5, 0x0

    goto :goto_9

    .line 754
    :cond_18
    const-wide/16 v6, 0x2710

    .line 755
    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v17

    .line 757
    const/4 v5, -0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_19

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    .line 758
    goto/16 :goto_4

    .line 760
    :cond_19
    const/4 v5, -0x3

    move/from16 v0, v17

    if-ne v0, v5, :cond_1a

    .line 761
    const-string v5, "Transcoder"

    const-string/jumbo v6, "video encoder: output buffers changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual/range {p5 .. p5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v23

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    .line 764
    goto/16 :goto_4

    .line 766
    :cond_1a
    const/4 v5, -0x2

    move/from16 v0, v17

    if-ne v0, v5, :cond_1c

    .line 767
    const-string v5, "Transcoder"

    const-string/jumbo v6, "video encoder: output format changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    if-ltz v13, :cond_1b

    .line 769
    const-string v5, "Transcoder"

    const-string/jumbo v6, "video encoder changed its output format again?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_1b
    invoke-virtual/range {p5 .. p5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v22

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    .line 774
    goto/16 :goto_4

    .line 776
    :cond_1c
    aget-object v5, v23, v17

    .line 777
    move-object/from16 v0, v26

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1d

    .line 778
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    .line 780
    goto/16 :goto_4

    .line 782
    :cond_1d
    move-object/from16 v0, v26

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_1e

    .line 783
    move-object/from16 v0, p6

    move-object/from16 v1, v26

    invoke-virtual {v0, v13, v5, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    if-eqz v5, :cond_1e

    .line 788
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v18, -0x1

    cmp-long v6, v6, v18

    if-gtz v6, :cond_1f

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/muvee/uhd2hd/Transcoder$c;->f:J

    long-to-double v6, v6

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    move-object/from16 v18, v0

    .line 791
    invoke-static/range {v18 .. v18}, Lcom/muvee/uhd2hd/Transcoder;->m(Lcom/muvee/uhd2hd/Transcoder;)D

    move-result-wide v18

    mul-double v6, v6, v18

    .line 789
    invoke-interface {v5, v6, v7}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcoderProgressUpdated(D)V

    .line 794
    :cond_1e
    move-object/from16 v0, v26

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_21

    .line 795
    const-string v5, "Transcoder"

    const-string/jumbo v6, "video encoder: EOS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v5, 0x1

    .line 798
    :goto_b
    const/4 v6, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move/from16 v16, v5

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    .line 800
    goto/16 :goto_4

    .line 788
    :cond_1f
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/muvee/uhd2hd/Transcoder$c;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v6, v6, v18

    goto :goto_a

    .line 822
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v4}, Lcom/muvee/uhd2hd/Transcoder;->f(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 823
    new-instance v4, Lcom/muvee/uhd2hd/TException;

    sget-object v5, Lcom/muvee/uhd2hd/ETranscoderErrors;->OPERATION_CANCELLED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    invoke-direct {v4, v5}, Lcom/muvee/uhd2hd/TException;-><init>(Lcom/muvee/uhd2hd/ETranscoderErrors;)V

    throw v4

    :cond_21
    move/from16 v5, v16

    goto :goto_b

    :cond_22
    move-object/from16 v17, v22

    move-object/from16 v18, v23

    goto/16 :goto_4

    :cond_23
    move/from16 v9, v18

    move-object/from16 v10, v19

    goto/16 :goto_3

    :cond_24
    move/from16 v8, v17

    move/from16 v4, v21

    goto/16 :goto_2

    :cond_25
    move/from16 v8, v17

    move/from16 v20, v4

    move/from16 v4, v21

    goto/16 :goto_2

    :cond_26
    move/from16 v4, v17

    goto/16 :goto_1

    :cond_27
    move v12, v4

    move/from16 v21, v5

    move v13, v6

    move-object/from16 v22, v17

    move-object/from16 v23, v18

    move-object/from16 v19, v10

    move/from16 v4, v20

    move/from16 v17, v8

    move/from16 v18, v9

    goto/16 :goto_0

    :cond_28
    move v5, v11

    goto/16 :goto_5

    :cond_29
    move v5, v4

    move v6, v13

    move v4, v12

    goto/16 :goto_6

    :cond_2a
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    goto/16 :goto_0
.end method

.method private b(Landroid/media/MediaFormat;)Z
    .locals 2

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/muvee/uhd2hd/Transcoder$c;->a(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/media/MediaFormat;)Z
    .locals 2

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/muvee/uhd2hd/Transcoder$c;->a(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    const-string v0, "Transcoder"

    const-string v1, "Fix for Z2, device has partial audio/raw support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v0, 0x0

    .line 867
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/muvee/uhd2hd/Transcoder$c;->a(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 280
    const/4 v15, 0x0

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v2}, Lcom/muvee/uhd2hd/Transcoder;->e(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v2}, Lcom/muvee/uhd2hd/Transcoder;->f(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v2}, Lcom/muvee/uhd2hd/Transcoder;->j(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 286
    const/4 v8, 0x0

    .line 288
    const/4 v14, 0x0

    .line 289
    const/4 v11, 0x0

    .line 290
    const/4 v13, 0x0

    .line 291
    const/4 v10, 0x0

    .line 292
    const/4 v12, 0x0

    .line 294
    const/16 v17, -0x1

    .line 295
    const/16 v16, -0x1

    .line 299
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 301
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->c:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v3}, Lcom/muvee/uhd2hd/Transcoder;->k(Lcom/muvee/uhd2hd/Transcoder;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    .line 305
    invoke-static {v4}, Lcom/muvee/uhd2hd/Transcoder;->k(Lcom/muvee/uhd2hd/Transcoder;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v6}, Lcom/muvee/uhd2hd/Transcoder;->k(Lcom/muvee/uhd2hd/Transcoder;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 304
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 314
    :goto_0
    const/16 v3, 0x9

    .line 316
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 317
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->f:J

    .line 319
    const-string v2, "Transcoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/muvee/uhd2hd/Transcoder$c;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string/jumbo v2, "video/avc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/uhd2hd/Transcoder$c;->a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v18

    .line 321
    if-nez v18, :cond_10

    .line 322
    new-instance v2, Lcom/muvee/uhd2hd/TException;

    sget-object v3, Lcom/muvee/uhd2hd/ETranscoderErrors;->VIDEO_CODEC_UNSUPPORTED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    invoke-direct {v2, v3}, Lcom/muvee/uhd2hd/TException;-><init>(Lcom/muvee/uhd2hd/ETranscoderErrors;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 453
    :catch_0
    move-exception v2

    move-object v9, v12

    move-object v7, v13

    move-object v3, v8

    move-object v8, v10

    move-object v10, v11

    move-object v11, v14

    .line 454
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    const-string v4, "Transcoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/muvee/uhd2hd/TException;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    check-cast v2, Lcom/muvee/uhd2hd/TException;

    invoke-virtual {v2}, Lcom/muvee/uhd2hd/TException;->getCode()Lcom/muvee/uhd2hd/ETranscoderErrors;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcodingFailed(Lcom/muvee/uhd2hd/ETranscoderErrors;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 464
    :cond_0
    const-string v2, "Transcoder"

    const-string/jumbo v4, "releasing extractor, decoder, encoder, and muxer"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v2, "Transcoder"

    .line 468
    if-eqz v3, :cond_1

    .line 469
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    .line 476
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 477
    :try_start_5
    invoke-virtual {v7}, Landroid/media/MediaCodec;->stop()V

    .line 478
    invoke-virtual {v7}, Landroid/media/MediaCodec;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15

    .line 484
    :cond_2
    :goto_3
    if-eqz v11, :cond_3

    .line 485
    :try_start_6
    invoke-virtual {v11}, Lcom/muvee/uhd2hd/b;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_16

    .line 491
    :cond_3
    :goto_4
    if-eqz v8, :cond_4

    .line 492
    :try_start_7
    invoke-virtual {v8}, Landroid/media/MediaCodec;->stop()V

    .line 493
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_17

    .line 499
    :cond_4
    :goto_5
    if-eqz v9, :cond_5

    .line 500
    :try_start_8
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->stop()V

    .line 501
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_18

    .line 507
    :cond_5
    :goto_6
    if-eqz v10, :cond_6

    .line 508
    :try_start_9
    invoke-virtual {v10}, Lcom/muvee/uhd2hd/a;->a()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_19

    :cond_6
    :goto_7
    move v2, v15

    .line 515
    :goto_8
    if-eqz v2, :cond_2d

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v2}, Lcom/muvee/uhd2hd/Transcoder;->l(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v2}, Lcom/muvee/uhd2hd/Transcoder;->j(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 518
    new-instance v2, Lcom/muvee/uhd2hd/Transcoder$c$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/muvee/uhd2hd/Transcoder$c$1;-><init>(Lcom/muvee/uhd2hd/Transcoder$c;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v3}, Lcom/muvee/uhd2hd/Transcoder;->o(Lcom/muvee/uhd2hd/Transcoder;)I

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v3, v2}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;Lcom/muvee/dsg/mmap/api/audiosizeconvertor/OnProgressUpdateListener;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/uhd2hd/Transcoder$c;->c:Ljava/lang/String;

    const-string v5, "/sdcard/tempmuxed.mp4"

    invoke-static {v2, v3, v4, v5}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 532
    if-nez v2, :cond_2a

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-interface {v2, v4, v5}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcoderProgressUpdated(D)V

    .line 534
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 536
    if-eqz v2, :cond_29

    .line 537
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/tempmuxed.mp4"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 538
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->d:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 540
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 541
    const-string v3, "com.muvee.uhd2hd.Transcoder"

    const-string v5, "Renaming Failed, will move file"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v8, 0x0

    .line 543
    const/4 v3, 0x0

    .line 545
    :try_start_a
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 546
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 547
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 548
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 549
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_28
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 557
    if-eqz v3, :cond_7

    .line 559
    :try_start_b
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_26

    .line 564
    :cond_7
    :goto_9
    if-eqz v8, :cond_8

    .line 566
    :try_start_c
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_27

    .line 573
    :cond_8
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    invoke-interface {v2}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcodingSucess()V

    .line 591
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v2}, Lcom/muvee/uhd2hd/Transcoder;->p(Lcom/muvee/uhd2hd/Transcoder;)I

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v2}, Lcom/muvee/uhd2hd/Transcoder;->e(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 593
    return-void

    .line 307
    :cond_9
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_0

    .line 309
    :catch_1
    move-exception v2

    .line 310
    :try_start_e
    const-string v3, "Transcoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaExtractor Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v2, Lcom/muvee/uhd2hd/TException;

    sget-object v3, Lcom/muvee/uhd2hd/ETranscoderErrors;->INPUT_FILE_ERROR:Lcom/muvee/uhd2hd/ETranscoderErrors;

    invoke-direct {v2, v3}, Lcom/muvee/uhd2hd/TException;-><init>(Lcom/muvee/uhd2hd/ETranscoderErrors;)V

    throw v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 459
    :catch_2
    move-exception v2

    .line 460
    :goto_c
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    .line 461
    const-string v3, "Transcoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    sget-object v3, Lcom/muvee/uhd2hd/ETranscoderErrors;->FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    invoke-interface {v2, v3}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcodingFailed(Lcom/muvee/uhd2hd/ETranscoderErrors;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 464
    const-string v2, "Transcoder"

    const-string/jumbo v3, "releasing extractor, decoder, encoder, and muxer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v2, "Transcoder"

    .line 468
    if-eqz v8, :cond_a

    .line 469
    :try_start_10
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->release()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1a

    .line 476
    :cond_a
    :goto_d
    if-eqz v13, :cond_b

    .line 477
    :try_start_11
    invoke-virtual {v13}, Landroid/media/MediaCodec;->stop()V

    .line 478
    invoke-virtual {v13}, Landroid/media/MediaCodec;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1b

    .line 484
    :cond_b
    :goto_e
    if-eqz v14, :cond_c

    .line 485
    :try_start_12
    invoke-virtual {v14}, Lcom/muvee/uhd2hd/b;->a()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1c

    .line 491
    :cond_c
    :goto_f
    if-eqz v10, :cond_d

    .line 492
    :try_start_13
    invoke-virtual {v10}, Landroid/media/MediaCodec;->stop()V

    .line 493
    invoke-virtual {v10}, Landroid/media/MediaCodec;->release()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1d

    .line 499
    :cond_d
    :goto_10
    if-eqz v12, :cond_e

    .line 500
    :try_start_14
    invoke-virtual {v12}, Landroid/media/MediaMuxer;->stop()V

    .line 501
    invoke-virtual {v12}, Landroid/media/MediaMuxer;->release()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1e

    .line 507
    :cond_e
    :goto_11
    if-eqz v11, :cond_f

    .line 508
    :try_start_15
    invoke-virtual {v11}, Lcom/muvee/uhd2hd/a;->a()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1f

    :cond_f
    :goto_12
    move v2, v15

    .line 513
    goto/16 :goto_8

    .line 325
    :cond_10
    :try_start_16
    new-instance v19, Landroid/media/MediaExtractor;

    invoke-direct/range {v19 .. v19}, Landroid/media/MediaExtractor;-><init>()V

    .line 326
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 328
    :try_start_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->c:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v3}, Lcom/muvee/uhd2hd/Transcoder;->k(Lcom/muvee/uhd2hd/Transcoder;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    .line 332
    invoke-static {v4}, Lcom/muvee/uhd2hd/Transcoder;->k(Lcom/muvee/uhd2hd/Transcoder;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v6}, Lcom/muvee/uhd2hd/Transcoder;->k(Lcom/muvee/uhd2hd/Transcoder;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 331
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    .line 334
    invoke-static {v3}, Lcom/muvee/uhd2hd/Transcoder;->k(Lcom/muvee/uhd2hd/Transcoder;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    .line 335
    invoke-static {v3}, Lcom/muvee/uhd2hd/Transcoder;->k(Lcom/muvee/uhd2hd/Transcoder;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    .line 336
    invoke-static {v3}, Lcom/muvee/uhd2hd/Transcoder;->k(Lcom/muvee/uhd2hd/Transcoder;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    move-object/from16 v4, v19

    .line 333
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 346
    :goto_13
    :try_start_18
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 347
    const/4 v4, 0x1

    if-le v3, v4, :cond_11

    .line 348
    const-string v4, "Transcoder"

    const-string v5, "Input file has more than 2 tracks"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_11
    const-string v4, "Transcoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "other track count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v3}, Lcom/muvee/uhd2hd/Transcoder;->l(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 354
    const/4 v3, 0x0

    move/from16 v6, v16

    move/from16 v4, v17

    .line 355
    :goto_14
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v5

    if-ge v3, v5, :cond_15

    .line 356
    const-string v5, "Transcoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    .line 359
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    .line 358
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/muvee/uhd2hd/Transcoder$c;->b(Landroid/media/MediaFormat;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 360
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move v4, v3

    .line 364
    :cond_12
    const/4 v5, -0x1

    if-ne v6, v5, :cond_13

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/muvee/uhd2hd/Transcoder$c;->c(Landroid/media/MediaFormat;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 365
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v5}, Lcom/muvee/uhd2hd/Transcoder;->l(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 367
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move v6, v3

    .line 355
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 338
    :cond_14
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->c:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/lang/Error; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_13

    .line 341
    :catch_3
    move-exception v3

    .line 342
    :try_start_1a
    const-string v4, "Trancoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception creating extractor : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v3, Lcom/muvee/uhd2hd/TException;

    sget-object v4, Lcom/muvee/uhd2hd/ETranscoderErrors;->INPUT_FILE_ERROR:Lcom/muvee/uhd2hd/ETranscoderErrors;

    invoke-direct {v3, v4}, Lcom/muvee/uhd2hd/TException;-><init>(Lcom/muvee/uhd2hd/ETranscoderErrors;)V

    throw v3

    .line 453
    :catch_4
    move-exception v3

    move-object v9, v12

    move-object v8, v10

    move-object v7, v13

    move-object v10, v11

    move-object v11, v14

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    goto/16 :goto_1

    .line 371
    :cond_15
    const-string v3, "Transcode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initialized extractors Video : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", Audio "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v3, -0x1

    if-ne v4, v3, :cond_16

    .line 374
    const-string v3, "Transcoder"

    const-string v4, "Selecting video track failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v3, Lcom/muvee/uhd2hd/TException;

    sget-object v4, Lcom/muvee/uhd2hd/ETranscoderErrors;->INPUT_FILE_ERROR:Lcom/muvee/uhd2hd/ETranscoderErrors;

    invoke-direct {v3, v4}, Lcom/muvee/uhd2hd/TException;-><init>(Lcom/muvee/uhd2hd/ETranscoderErrors;)V

    throw v3

    .line 459
    :catch_5
    move-exception v3

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_c

    .line 378
    :cond_16
    const/4 v3, -0x1

    if-eq v6, v3, :cond_1e

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v3}, Lcom/muvee/uhd2hd/Transcoder;->l(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    const-wide v8, 0x4058c00000000000L    # 99.0

    invoke-static {v3, v8, v9}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;D)D

    .line 386
    :goto_15
    invoke-virtual {v2, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 387
    const-string/jumbo v3, "video/avc"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/uhd2hd/Transcoder$c;->e:Lcom/muvee/uhd2hd/Transcoder$b;

    iget v5, v5, Lcom/muvee/uhd2hd/Transcoder$b;->a:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/muvee/uhd2hd/Transcoder$c;->e:Lcom/muvee/uhd2hd/Transcoder$b;

    iget v7, v7, Lcom/muvee/uhd2hd/Transcoder$b;->b:I

    invoke-static {v3, v5, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 389
    const-string v5, "color-format"

    const v7, 0x7f000789

    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 391
    const-string v5, "bitrate"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/muvee/uhd2hd/Transcoder$c;->e:Lcom/muvee/uhd2hd/Transcoder$b;

    iget v7, v7, Lcom/muvee/uhd2hd/Transcoder$b;->c:I

    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 393
    const-string v5, "frame-rate"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/muvee/uhd2hd/Transcoder$c;->e:Lcom/muvee/uhd2hd/Transcoder$b;

    iget v7, v7, Lcom/muvee/uhd2hd/Transcoder$b;->d:I

    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 395
    const-string v5, "i-frame-interval"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/muvee/uhd2hd/Transcoder$c;->e:Lcom/muvee/uhd2hd/Transcoder$b;

    iget v7, v7, Lcom/muvee/uhd2hd/Transcoder$b;->e:I

    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 398
    const-string v5, "Transcoder"

    const-string v7, "Creating video encoder"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 401
    :try_start_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3, v5}, Lcom/muvee/uhd2hd/Transcoder$c;->a(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;Ljava/util/concurrent/atomic/AtomicReference;)Landroid/media/MediaCodec;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6
    .catch Ljava/lang/Error; {:try_start_1b .. :try_end_1b} :catch_7
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-result-object v8

    .line 413
    :try_start_1c
    new-instance v10, Lcom/muvee/uhd2hd/a;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-direct {v10, v3}, Lcom/muvee/uhd2hd/a;-><init>(Landroid/view/Surface;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_34
    .catch Ljava/lang/Error; {:try_start_1c .. :try_end_1c} :catch_30
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 414
    :try_start_1d
    invoke-virtual {v10}, Lcom/muvee/uhd2hd/a;->b()V

    .line 415
    new-instance v11, Lcom/muvee/uhd2hd/b;

    invoke-direct {v11}, Lcom/muvee/uhd2hd/b;-><init>()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_35
    .catch Ljava/lang/Error; {:try_start_1d .. :try_end_1d} :catch_31
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 417
    :try_start_1e
    const-string v3, "Transcoder"

    const-string v5, "Creating video decoder"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9
    .catch Ljava/lang/Error; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 420
    :try_start_1f
    invoke-virtual {v11}, Lcom/muvee/uhd2hd/b;->b()Landroid/view/Surface;

    move-result-object v3

    .line 419
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/muvee/uhd2hd/Transcoder$c;->a(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move-result-object v7

    .line 431
    :try_start_20
    const-string v3, "Transcoder"

    const-string v4, "Creating new muxer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d
    .catch Ljava/lang/Error; {:try_start_20 .. :try_end_20} :catch_32
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    .line 433
    :try_start_21
    invoke-direct/range {p0 .. p0}, Lcom/muvee/uhd2hd/Transcoder$c;->a()Landroid/media/MediaMuxer;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c
    .catch Ljava/lang/Error; {:try_start_21 .. :try_end_21} :catch_32
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    move-result-object v9

    .line 439
    :try_start_22
    const-string v3, "Transcoder"

    const-string v4, "Big loop"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v5, v19

    .line 440
    invoke-direct/range {v3 .. v11}, Lcom/muvee/uhd2hd/Transcoder$c;->a(Landroid/media/MediaExtractor;Landroid/media/MediaExtractor;ILandroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/media/MediaMuxer;Lcom/muvee/uhd2hd/a;Lcom/muvee/uhd2hd/b;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v3}, Lcom/muvee/uhd2hd/Transcoder;->j(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v3}, Lcom/muvee/uhd2hd/Transcoder;->l(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 446
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_17

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    invoke-static {v3}, Lcom/muvee/uhd2hd/Transcoder;->j(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_36
    .catch Ljava/lang/Error; {:try_start_22 .. :try_end_22} :catch_33
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    .line 451
    :cond_17
    const/4 v3, 0x1

    .line 464
    const-string v4, "Transcoder"

    const-string/jumbo v5, "releasing extractor, decoder, encoder, and muxer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v4, "Transcoder"

    .line 468
    if-eqz v2, :cond_18

    .line 469
    :try_start_23
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e

    .line 476
    :cond_18
    :goto_16
    if-eqz v7, :cond_19

    .line 477
    :try_start_24
    invoke-virtual {v7}, Landroid/media/MediaCodec;->stop()V

    .line 478
    invoke-virtual {v7}, Landroid/media/MediaCodec;->release()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_f

    .line 484
    :cond_19
    :goto_17
    if-eqz v11, :cond_1a

    .line 485
    :try_start_25
    invoke-virtual {v11}, Lcom/muvee/uhd2hd/b;->a()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_10

    .line 491
    :cond_1a
    :goto_18
    if-eqz v8, :cond_1b

    .line 492
    :try_start_26
    invoke-virtual {v8}, Landroid/media/MediaCodec;->stop()V

    .line 493
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_11

    .line 499
    :cond_1b
    :goto_19
    if-eqz v9, :cond_1c

    .line 500
    :try_start_27
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->stop()V

    .line 501
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->release()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_12

    .line 507
    :cond_1c
    :goto_1a
    if-eqz v10, :cond_1d

    .line 508
    :try_start_28
    invoke-virtual {v10}, Lcom/muvee/uhd2hd/a;->a()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_13

    :cond_1d
    :goto_1b
    move v2, v3

    .line 513
    goto/16 :goto_8

    .line 382
    :cond_1e
    :try_start_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/uhd2hd/Transcoder$c;->a:Lcom/muvee/uhd2hd/Transcoder;

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    invoke-static {v3, v8, v9}, Lcom/muvee/uhd2hd/Transcoder;->a(Lcom/muvee/uhd2hd/Transcoder;D)D
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_4
    .catch Ljava/lang/Error; {:try_start_29 .. :try_end_29} :catch_5
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto/16 :goto_15

    .line 464
    :catchall_0
    move-exception v3

    move-object v8, v2

    move-object v2, v3

    :goto_1c
    const-string v3, "Transcoder"

    const-string/jumbo v4, "releasing extractor, decoder, encoder, and muxer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v3, "Transcoder"

    .line 468
    if-eqz v8, :cond_1f

    .line 469
    :try_start_2a
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->release()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_20

    .line 476
    :cond_1f
    :goto_1d
    if-eqz v13, :cond_20

    .line 477
    :try_start_2b
    invoke-virtual {v13}, Landroid/media/MediaCodec;->stop()V

    .line 478
    invoke-virtual {v13}, Landroid/media/MediaCodec;->release()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_21

    .line 484
    :cond_20
    :goto_1e
    if-eqz v14, :cond_21

    .line 485
    :try_start_2c
    invoke-virtual {v14}, Lcom/muvee/uhd2hd/b;->a()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_22

    .line 491
    :cond_21
    :goto_1f
    if-eqz v10, :cond_22

    .line 492
    :try_start_2d
    invoke-virtual {v10}, Landroid/media/MediaCodec;->stop()V

    .line 493
    invoke-virtual {v10}, Landroid/media/MediaCodec;->release()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_23

    .line 499
    :cond_22
    :goto_20
    if-eqz v12, :cond_23

    .line 500
    :try_start_2e
    invoke-virtual {v12}, Landroid/media/MediaMuxer;->stop()V

    .line 501
    invoke-virtual {v12}, Landroid/media/MediaMuxer;->release()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_24

    .line 507
    :cond_23
    :goto_21
    if-eqz v11, :cond_24

    .line 508
    :try_start_2f
    invoke-virtual {v11}, Lcom/muvee/uhd2hd/a;->a()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_25

    .line 513
    :cond_24
    :goto_22
    throw v2

    .line 403
    :catch_6
    move-exception v3

    .line 404
    :try_start_30
    const-string v4, "Transcoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initialzing Encoder Failed with exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    throw v3

    .line 407
    :catch_7
    move-exception v3

    .line 408
    const-string v4, "Trancoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initialzing Encoder Failed with error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    throw v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_4
    .catch Ljava/lang/Error; {:try_start_30 .. :try_end_30} :catch_5
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 421
    :catch_8
    move-exception v3

    .line 422
    :try_start_31
    const-string v4, "Trancoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initialzing Decoder failed with exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    throw v3

    .line 453
    :catch_9
    move-exception v3

    move-object v9, v12

    move-object v7, v13

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    goto/16 :goto_1

    .line 425
    :catch_a
    move-exception v3

    .line 426
    const-string v4, "Transcoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initialzing Decoder failed with error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    throw v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_9
    .catch Ljava/lang/Error; {:try_start_31 .. :try_end_31} :catch_b
    .catchall {:try_start_31 .. :try_end_31} :catchall_5

    .line 459
    :catch_b
    move-exception v3

    move-object v14, v11

    move-object v11, v10

    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_c

    .line 434
    :catch_c
    move-exception v3

    .line 435
    :try_start_32
    const-string v4, "Transcoder"

    const-string v5, "Creating muxer failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    throw v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_d
    .catch Ljava/lang/Error; {:try_start_32 .. :try_end_32} :catch_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_6

    .line 453
    :catch_d
    move-exception v3

    move-object v9, v12

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    goto/16 :goto_1

    .line 471
    :catch_e
    move-exception v2

    .line 472
    const-string v4, "Transcoder"

    const-string v5, "error while releasing videoExtractor"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 480
    :catch_f
    move-exception v2

    .line 481
    const-string v4, "Transcoder"

    const-string v5, "error while releasing videoDecoder"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 487
    :catch_10
    move-exception v2

    .line 488
    const-string v4, "Transcoder"

    const-string v5, "error while releasing outputSurface"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 495
    :catch_11
    move-exception v2

    .line 496
    const-string v4, "Transcoder"

    const-string v5, "error while releasing videoEncoder"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 503
    :catch_12
    move-exception v2

    .line 504
    const-string v4, "Transcoder"

    const-string v5, "error while releasing muxer"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 510
    :catch_13
    move-exception v2

    .line 511
    const-string v4, "Transcoder"

    const-string v5, "error while releasing inputSurface"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .line 471
    :catch_14
    move-exception v2

    .line 472
    const-string v3, "Transcoder"

    const-string v4, "error while releasing videoExtractor"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 480
    :catch_15
    move-exception v2

    .line 481
    const-string v3, "Transcoder"

    const-string v4, "error while releasing videoDecoder"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 487
    :catch_16
    move-exception v2

    .line 488
    const-string v3, "Transcoder"

    const-string v4, "error while releasing outputSurface"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 495
    :catch_17
    move-exception v2

    .line 496
    const-string v3, "Transcoder"

    const-string v4, "error while releasing videoEncoder"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 503
    :catch_18
    move-exception v2

    .line 504
    const-string v3, "Transcoder"

    const-string v4, "error while releasing muxer"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 510
    :catch_19
    move-exception v2

    .line 511
    const-string v3, "Transcoder"

    const-string v4, "error while releasing inputSurface"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 471
    :catch_1a
    move-exception v2

    .line 472
    const-string v3, "Transcoder"

    const-string v4, "error while releasing videoExtractor"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 480
    :catch_1b
    move-exception v2

    .line 481
    const-string v3, "Transcoder"

    const-string v4, "error while releasing videoDecoder"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 487
    :catch_1c
    move-exception v2

    .line 488
    const-string v3, "Transcoder"

    const-string v4, "error while releasing outputSurface"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 495
    :catch_1d
    move-exception v2

    .line 496
    const-string v3, "Transcoder"

    const-string v4, "error while releasing videoEncoder"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 503
    :catch_1e
    move-exception v2

    .line 504
    const-string v3, "Transcoder"

    const-string v4, "error while releasing muxer"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 510
    :catch_1f
    move-exception v2

    .line 511
    const-string v3, "Transcoder"

    const-string v4, "error while releasing inputSurface"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 471
    :catch_20
    move-exception v3

    .line 472
    const-string v4, "Transcoder"

    const-string v5, "error while releasing videoExtractor"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 480
    :catch_21
    move-exception v3

    .line 481
    const-string v4, "Transcoder"

    const-string v5, "error while releasing videoDecoder"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 487
    :catch_22
    move-exception v3

    .line 488
    const-string v4, "Transcoder"

    const-string v5, "error while releasing outputSurface"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 495
    :catch_23
    move-exception v3

    .line 496
    const-string v4, "Transcoder"

    const-string v5, "error while releasing videoEncoder"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 503
    :catch_24
    move-exception v3

    .line 504
    const-string v4, "Transcoder"

    const-string v5, "error while releasing muxer"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 510
    :catch_25
    move-exception v3

    .line 511
    const-string v4, "Transcoder"

    const-string v5, "error while releasing inputSurface"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 560
    :catch_26
    move-exception v2

    .line 562
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 567
    :catch_27
    move-exception v2

    .line 569
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 550
    :catch_28
    move-exception v2

    .line 552
    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    .line 557
    if-eqz v3, :cond_25

    .line 559
    :try_start_34
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_2a

    .line 564
    :cond_25
    :goto_23
    if-eqz v8, :cond_8

    .line 566
    :try_start_35
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_29

    goto/16 :goto_a

    .line 567
    :catch_29
    move-exception v2

    .line 569
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 560
    :catch_2a
    move-exception v2

    .line 562
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 553
    :catch_2b
    move-exception v2

    .line 555
    :try_start_36
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    .line 557
    if-eqz v3, :cond_26

    .line 559
    :try_start_37
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_2d

    .line 564
    :cond_26
    :goto_24
    if-eqz v8, :cond_8

    .line 566
    :try_start_38
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_2c

    goto/16 :goto_a

    .line 567
    :catch_2c
    move-exception v2

    .line 569
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 560
    :catch_2d
    move-exception v2

    .line 562
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .line 557
    :catchall_1
    move-exception v2

    if-eqz v3, :cond_27

    .line 559
    :try_start_39
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_2e

    .line 564
    :cond_27
    :goto_25
    if-eqz v8, :cond_28

    .line 566
    :try_start_3a
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_2f

    .line 570
    :cond_28
    :goto_26
    throw v2

    .line 560
    :catch_2e
    move-exception v3

    .line 562
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 567
    :catch_2f
    move-exception v3

    .line 569
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 575
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    sget-object v3, Lcom/muvee/uhd2hd/ETranscoderErrors;->FILE_RENAME_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    invoke-interface {v2, v3}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcodingFailed(Lcom/muvee/uhd2hd/ETranscoderErrors;)V

    goto/16 :goto_b

    .line 578
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    sget-object v3, Lcom/muvee/uhd2hd/ETranscoderErrors;->AUDIO_JOIN_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    invoke-interface {v2, v3}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcodingFailed(Lcom/muvee/uhd2hd/ETranscoderErrors;)V

    goto/16 :goto_b

    .line 581
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-interface {v2, v4, v5}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcoderProgressUpdated(D)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    invoke-interface {v2}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcodingSucess()V

    goto/16 :goto_b

    .line 585
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-interface {v2, v4, v5}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcoderProgressUpdated(D)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    invoke-interface {v2}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcodingSucess()V

    goto/16 :goto_b

    .line 589
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/uhd2hd/Transcoder$c;->b:Lcom/muvee/uhd2hd/ITranscoderListener;

    sget-object v3, Lcom/muvee/uhd2hd/ETranscoderErrors;->DEVICE_UNSUPPORTED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    invoke-interface {v2, v3}, Lcom/muvee/uhd2hd/ITranscoderListener;->transcodingFailed(Lcom/muvee/uhd2hd/ETranscoderErrors;)V

    goto/16 :goto_b

    .line 464
    :catchall_2
    move-exception v2

    goto/16 :goto_1c

    :catchall_3
    move-exception v3

    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_1c

    :catchall_4
    move-exception v3

    move-object v11, v10

    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_1c

    :catchall_5
    move-exception v3

    move-object v14, v11

    move-object v11, v10

    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_1c

    :catchall_6
    move-exception v3

    move-object v13, v7

    move-object v14, v11

    move-object v11, v10

    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_1c

    :catchall_7
    move-exception v3

    move-object v12, v9

    move-object v13, v7

    move-object v14, v11

    move-object v11, v10

    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_1c

    :catchall_8
    move-exception v2

    move-object v12, v9

    move-object v13, v7

    move-object v14, v11

    move-object v11, v10

    move-object v10, v8

    move-object v8, v3

    goto/16 :goto_1c

    .line 459
    :catch_30
    move-exception v3

    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_c

    :catch_31
    move-exception v3

    move-object v11, v10

    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_c

    :catch_32
    move-exception v3

    move-object v13, v7

    move-object v14, v11

    move-object v11, v10

    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_c

    :catch_33
    move-exception v3

    move-object v12, v9

    move-object v13, v7

    move-object v14, v11

    move-object v11, v10

    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_c

    .line 453
    :catch_34
    move-exception v3

    move-object v9, v12

    move-object v7, v13

    move-object v10, v11

    move-object v11, v14

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    goto/16 :goto_1

    :catch_35
    move-exception v3

    move-object v9, v12

    move-object v7, v13

    move-object v11, v14

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    goto/16 :goto_1

    :catch_36
    move-exception v3

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    goto/16 :goto_1
.end method
