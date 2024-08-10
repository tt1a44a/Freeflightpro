.class public Lcom/muvee/dsg/videothumb/MpegFramesExtractor;
.super Ljava/lang/Object;
.source "MpegFramesExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;,
        Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;
    }
.end annotation


# static fields
.field private static a:[Landroid/graphics/Bitmap;


# instance fields
.field public decoder:Landroid/media/MediaCodec;

.field public extractor:Landroid/media/MediaExtractor;

.field public outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

.field public trackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    .line 36
    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    .line 37
    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    return-void
.end method

.method private a(Landroid/media/MediaExtractor;)I
    .locals 6

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    .line 109
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 110
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 111
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    const-string/jumbo v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const-string v1, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extractor selected track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_1
    return v0

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static a([JLandroid/media/MediaExtractor;ILandroid/media/MediaCodec;Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 135
    new-instance v16, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v16 .. v16}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 136
    const/4 v10, 0x0

    .line 137
    const/4 v14, 0x0

    .line 138
    const-wide/16 v12, 0x0

    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v9, 0x0

    .line 143
    :cond_0
    :goto_0
    if-nez v11, :cond_e

    .line 144
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    const-string v3, "loop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez v9, :cond_3

    .line 148
    move-object/from16 v0, p0

    array-length v2, v0

    if-ge v10, v2, :cond_1

    .line 149
    aget-wide v2, p0, v10

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 152
    :cond_1
    const-wide/16 v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 153
    if-ltz v3, :cond_7

    .line 154
    aget-object v2, v15, v3

    .line 157
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 158
    if-lez v5, :cond_2

    move-object/from16 v0, p0

    array-length v2, v0

    if-lt v10, v2, :cond_5

    .line 160
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 162
    const/4 v2, 0x1

    .line 163
    const-string v3, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    const-string/jumbo v4, "sent input EOS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v10

    :goto_1
    move v9, v2

    move v10, v3

    .line 183
    :cond_3
    :goto_2
    if-nez v11, :cond_0

    .line 184
    if-eqz v9, :cond_8

    const-wide/32 v2, 0x7a120

    :goto_3
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 185
    const/4 v2, -0x1

    if-ne v4, v2, :cond_9

    .line 187
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    const-string v3, "no output from decoder available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v9, :cond_13

    .line 241
    :cond_4
    :goto_4
    return-void

    .line 165
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v2

    move/from16 v0, p2

    if-eq v2, v0, :cond_6

    .line 166
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WEIRD: got sample from track "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", expected "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    .line 170
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 173
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "submitted frame "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to dec, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    add-int/lit8 v2, v10, 0x1

    move v3, v2

    move v2, v9

    goto :goto_1

    .line 179
    :cond_7
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    const-string v3, "input buffer not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 184
    :cond_8
    const-wide/16 v2, 0x0

    goto/16 :goto_3

    .line 193
    :cond_9
    const/4 v2, -0x3

    if-ne v4, v2, :cond_a

    .line 195
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    const-string v3, "decoder output buffers changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v14

    :goto_5
    move v14, v2

    .line 233
    goto/16 :goto_0

    .line 196
    :cond_a
    const/4 v2, -0x2

    if-ne v4, v2, :cond_b

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 198
    const-string v3, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decoder output format changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v14

    .line 199
    goto :goto_5

    :cond_b
    if-gez v4, :cond_c

    move v2, v14

    goto :goto_5

    .line 202
    :cond_c
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "surface decoder given buffer "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, v16

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_12

    .line 205
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    const-string/jumbo v3, "output EOS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x1

    .line 209
    :goto_6
    move-object/from16 v0, v16

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    .line 215
    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 216
    if-eqz v3, :cond_11

    .line 217
    const-string v3, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "awaiting decode of frame "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual/range {p4 .. p4}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->d()V

    .line 219
    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a(Z)V

    .line 221
    const/16 v3, 0xc

    if-ge v14, v3, :cond_10

    .line 222
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 223
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a(I)V

    .line 224
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    add-long/2addr v4, v12

    .line 226
    :goto_8
    add-int/lit8 v3, v14, 0x1

    .line 228
    move-object/from16 v0, p0

    array-length v6, v0

    if-ge v3, v6, :cond_4

    move v11, v2

    move-wide v12, v4

    move v2, v3

    goto/16 :goto_5

    .line 209
    :cond_d
    const/4 v3, 0x0

    goto :goto_7

    .line 236
    :cond_e
    const/16 v2, 0xc

    if-ge v2, v14, :cond_f

    const/16 v14, 0xc

    .line 237
    :cond_f
    if-lez v14, :cond_4

    .line 238
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " frames took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v14

    div-long v4, v12, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " us per frame"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_10
    move-wide v4, v12

    goto :goto_8

    :cond_11
    move v11, v2

    move v2, v14

    goto/16 :goto_5

    :cond_12
    move v2, v11

    goto/16 :goto_6

    :cond_13
    move v2, v14

    goto/16 :goto_5
.end method

.method static synthetic a()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->a:[Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 784
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    invoke-virtual {v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a()V

    .line 786
    iput-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 790
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 791
    iput-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    .line 794
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 795
    iput-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    .line 799
    :cond_2
    return-void
.end method

.method public extractMpegFrames([JLjava/lang/String;Z)[Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 42
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->a:[Landroid/graphics/Bitmap;

    .line 44
    const/16 v0, 0xb4

    .line 45
    const/16 v1, 0xb4

    .line 49
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v3, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    .line 52
    iget-object v3, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 53
    iget-object v3, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-direct {p0, v3}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->a(Landroid/media/MediaExtractor;)I

    move-result v3

    iput v3, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->trackIndex:I

    .line 54
    iget v3, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->trackIndex:I

    if-gez v3, :cond_3

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No video track found in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_2

    .line 84
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    invoke-virtual {v1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a()V

    .line 86
    iput-object v8, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 90
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 91
    iput-object v8, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 95
    iput-object v8, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    :cond_2
    throw v0

    .line 57
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    iget v3, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->trackIndex:I

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 59
    iget-object v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    iget v3, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->trackIndex:I

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 61
    const-string/jumbo v3, "width"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 62
    const-string v4, "height"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 65
    const-string v5, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Video size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v5, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;-><init>(IIII)V

    iput-object v5, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    .line 73
    const-string v0, "mime"

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    .line 75
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    invoke-virtual {v1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->c()Landroid/view/Surface;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 76
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 77
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->trackIndex:I

    iget-object v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->a([JLandroid/media/MediaExtractor;ILandroid/media/MediaCodec;Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;)V

    .line 79
    sget-object v0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->a:[Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    if-eqz p3, :cond_6

    .line 84
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    if-eqz v1, :cond_4

    .line 85
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    invoke-virtual {v1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a()V

    .line 86
    iput-object v8, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->outputSurface:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_5

    .line 89
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 90
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 91
    iput-object v8, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->decoder:Landroid/media/MediaCodec;

    .line 93
    :cond_5
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_6

    .line 94
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 95
    iput-object v8, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractor:Landroid/media/MediaExtractor;

    .line 79
    :cond_6
    return-object v0
.end method
