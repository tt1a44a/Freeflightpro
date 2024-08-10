.class public Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;
.super Landroid/os/AsyncTask;
.source "FetchMomentsPreviewsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;,
        Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_OUTPUT_HEIGHT:I = 0xb4

.field public static final DEFAULT_OUTPUT_WIDTH:I = 0x140

.field private static final MICROS_TO_MILLIS_MULTIPLIER:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mFrameRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "frameRate"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->mFrameRate:I

    .line 45
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private doExtract(Landroid/media/MediaExtractor;ILandroid/media/MediaCodec;Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;J)Ljava/util/List;
    .locals 29
    .param p1, "extractor"    # Landroid/media/MediaExtractor;
    .param p2, "trackIndex"    # I
    .param p3, "decoder"    # Landroid/media/MediaCodec;
    .param p4, "outputSurface"    # Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    .param p5, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaExtractor;",
            "I",
            "Landroid/media/MediaCodec;",
            "Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;",
            "J)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const v11, 0x989680

    .line 134
    .local v11, "TIMEOUT_USEC":I
    const/16 v21, 0x0

    .line 135
    .local v21, "inputChunk":I
    const/16 v22, 0x0

    .line 136
    .local v22, "isLast":Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v13, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 138
    .local v14, "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    new-instance v17, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 140
    .local v17, "info":Landroid/media/MediaCodec$BufferInfo;
    const-wide/16 v18, 0x0

    .local v18, "i":J
    :goto_0
    cmp-long v4, v18, p5

    if-gez v4, :cond_1

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 143
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 145
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 146
    const/4 v13, 0x0

    .line 232
    .end local v13    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :cond_1
    return-object v13

    .line 151
    .restart local v13    # "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :cond_2
    const-wide/32 v24, 0x989680

    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 152
    .local v5, "inputBufIndex":I
    if-ltz v5, :cond_3

    .line 153
    aget-object v20, v14, v5

    .line 156
    .local v20, "inputBuf":Ljava/nio/ByteBuffer;
    const-wide/16 v24, 0x3e8

    mul-long v24, v24, v18

    const/4 v4, 0x2

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 157
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 158
    .local v7, "chunkSize":I
    if-gez v7, :cond_6

    .line 160
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    move-object/from16 v4, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 184
    .end local v7    # "chunkSize":I
    .end local v20    # "inputBuf":Ljava/nio/ByteBuffer;
    :cond_3
    :goto_2
    const-wide/32 v24, 0x989680

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v15

    .line 185
    .local v15, "decoderStatus":I
    const/4 v4, -0x1

    if-ne v15, v4, :cond_8

    .line 222
    :cond_4
    :goto_3
    if-nez v22, :cond_1

    .line 226
    sub-long v24, p5, v18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->mFrameRate:I

    int-to-long v0, v4

    move-wide/from16 v26, v0

    cmp-long v4, v24, v26

    if-gez v4, :cond_5

    .line 227
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->mFrameRate:I

    int-to-long v0, v4

    move-wide/from16 v24, v0

    sub-long v24, p5, v24

    const-wide/16 v26, 0xa

    sub-long v18, v24, v26

    .line 228
    const/16 v22, 0x1

    .line 140
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->mFrameRate:I

    int-to-long v0, v4

    move-wide/from16 v24, v0

    add-long v18, v18, v24

    goto/16 :goto_0

    .line 164
    .end local v15    # "decoderStatus":I
    .restart local v7    # "chunkSize":I
    .restart local v20    # "inputBuf":Ljava/nio/ByteBuffer;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v4

    move/from16 v0, p2

    if-eq v4, v0, :cond_7

    .line 165
    sget-object v4, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WEIRD: got sample from track "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", expected "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 169
    .local v8, "presentationTimeUs":J
    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 175
    add-int/lit8 v21, v21, 0x1

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2

    .line 190
    .end local v7    # "chunkSize":I
    .end local v8    # "presentationTimeUs":J
    .end local v20    # "inputBuf":Ljava/nio/ByteBuffer;
    .restart local v15    # "decoderStatus":I
    :cond_8
    const/4 v4, -0x3

    if-eq v15, v4, :cond_4

    .line 195
    const/4 v4, -0x2

    if-ne v15, v4, :cond_9

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto :goto_3

    .line 200
    :cond_9
    if-ltz v15, :cond_4

    .line 209
    move-object/from16 v0, v17

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_a

    .line 213
    :cond_a
    move-object/from16 v0, v17

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_b

    const/16 v16, 0x1

    .line 214
    .local v16, "doRender":Z
    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 215
    if-eqz v16, :cond_4

    .line 216
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->awaitNewImage()V

    .line 217
    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->drawImage(Z)V

    .line 218
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->saveFrame()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 213
    .end local v16    # "doRender":Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_4
.end method

.method private selectTrack(Landroid/media/MediaExtractor;)I
    .locals 5
    .param p1, "extractor"    # Landroid/media/MediaExtractor;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    .line 114
    .local v3, "numTracks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 115
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 116
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "mime":Ljava/lang/String;
    const-string v4, "video/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v1    # "i":I
    .end local v2    # "mime":Ljava/lang/String;
    :goto_1
    return v1

    .line 114
    .restart local v0    # "format":Landroid/media/MediaFormat;
    .restart local v1    # "i":I
    .restart local v2    # "mime":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 26
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    move-object/from16 v0, p1

    array-length v5, v0

    if-nez v5, :cond_1

    .line 50
    const/4 v4, 0x0

    .line 103
    :cond_0
    :goto_0
    return-object v4

    .line 51
    :cond_1
    const/4 v5, 0x0

    aget-object v19, p1, v5

    .line 52
    .local v19, "path":Ljava/lang/String;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 53
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 55
    :cond_3
    const/4 v8, 0x0

    .line 56
    .local v8, "decoder":Landroid/media/MediaCodec;
    const/16 v18, 0x0

    .line 57
    .local v18, "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    const/4 v14, 0x0

    .line 58
    .local v14, "extractor":Landroid/media/MediaExtractor;
    const/4 v4, 0x0

    .line 61
    .local v4, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :try_start_0
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v16, "inputFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_6

    .line 63
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to read "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v16    # "inputFile":Ljava/io/File;
    :catch_0
    move-exception v13

    move-object v6, v14

    .end local v14    # "extractor":Landroid/media/MediaExtractor;
    .local v6, "extractor":Landroid/media/MediaExtractor;
    move-object/from16 v9, v18

    .line 90
    .end local v18    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    .local v9, "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    .local v13, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 92
    if-eqz v9, :cond_4

    .line 93
    invoke-virtual {v9}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->release()V

    .line 95
    :cond_4
    if-eqz v8, :cond_5

    .line 96
    invoke-virtual {v8}, Landroid/media/MediaCodec;->stop()V

    .line 97
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V

    .line 99
    :cond_5
    if-eqz v6, :cond_0

    .line 100
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    goto :goto_0

    .line 65
    .end local v6    # "extractor":Landroid/media/MediaExtractor;
    .end local v9    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v14    # "extractor":Landroid/media/MediaExtractor;
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v18    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    :cond_6
    :try_start_2
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .end local v14    # "extractor":Landroid/media/MediaExtractor;
    .restart local v6    # "extractor":Landroid/media/MediaExtractor;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 67
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->selectTrack(Landroid/media/MediaExtractor;)I

    move-result v7

    .line 68
    .local v7, "trackIndex":I
    if-gez v7, :cond_7

    .line 69
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No video track found in "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    .end local v7    # "trackIndex":I
    :catch_1
    move-exception v13

    move-object/from16 v9, v18

    .end local v18    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    .restart local v9    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    goto :goto_1

    .line 71
    .end local v9    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    .restart local v7    # "trackIndex":I
    .restart local v18    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    :cond_7
    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 72
    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v15

    .line 77
    .local v15, "format":Landroid/media/MediaFormat;
    new-instance v9, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;

    const/16 v5, 0x140

    const/16 v21, 0xb4

    move/from16 v0, v21

    invoke-direct {v9, v5, v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;-><init>(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .end local v18    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    .restart local v9    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    :try_start_4
    const-string v5, "mime"

    invoke-virtual {v15, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 79
    .local v17, "mime":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v8

    .line 80
    invoke-virtual {v9}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v8, v15, v5, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 81
    invoke-virtual {v8}, Landroid/media/MediaCodec;->start()V

    .line 82
    new-instance v20, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v20 .. v20}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 83
    .local v20, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 84
    const/16 v5, 0x9

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, "duration":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 86
    .local v10, "durationInMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .local v22, "startTime":J
    move-object/from16 v5, p0

    .line 87
    invoke-direct/range {v5 .. v11}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->doExtract(Landroid/media/MediaExtractor;ILandroid/media/MediaCodec;Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;J)Ljava/util/List;

    move-result-object v4

    .line 88
    sget-object v5, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "scan took, ms: "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 92
    if-eqz v9, :cond_8

    .line 93
    invoke-virtual {v9}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->release()V

    .line 95
    :cond_8
    if-eqz v8, :cond_9

    .line 96
    invoke-virtual {v8}, Landroid/media/MediaCodec;->stop()V

    .line 97
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V

    .line 99
    :cond_9
    if-eqz v6, :cond_0

    .line 100
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    goto/16 :goto_0

    .line 92
    .end local v6    # "extractor":Landroid/media/MediaExtractor;
    .end local v7    # "trackIndex":I
    .end local v9    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    .end local v10    # "durationInMillis":J
    .end local v12    # "duration":Ljava/lang/String;
    .end local v15    # "format":Landroid/media/MediaFormat;
    .end local v16    # "inputFile":Ljava/io/File;
    .end local v17    # "mime":Ljava/lang/String;
    .end local v20    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v22    # "startTime":J
    .restart local v14    # "extractor":Landroid/media/MediaExtractor;
    .restart local v18    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    :catchall_0
    move-exception v5

    move-object v6, v14

    .end local v14    # "extractor":Landroid/media/MediaExtractor;
    .restart local v6    # "extractor":Landroid/media/MediaExtractor;
    move-object/from16 v9, v18

    .end local v18    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    .restart local v9    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    :goto_2
    if-eqz v9, :cond_a

    .line 93
    invoke-virtual {v9}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->release()V

    .line 95
    :cond_a
    if-eqz v8, :cond_b

    .line 96
    invoke-virtual {v8}, Landroid/media/MediaCodec;->stop()V

    .line 97
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V

    .line 99
    :cond_b
    if-eqz v6, :cond_c

    .line 100
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    :cond_c
    throw v5

    .line 92
    .end local v9    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v18    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    :catchall_1
    move-exception v5

    move-object/from16 v9, v18

    .end local v18    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    .restart local v9    # "outputSurface":Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
    goto :goto_2

    .end local v16    # "inputFile":Ljava/io/File;
    :catchall_2
    move-exception v5

    goto :goto_2

    .line 89
    .restart local v7    # "trackIndex":I
    .restart local v15    # "format":Landroid/media/MediaFormat;
    .restart local v16    # "inputFile":Ljava/io/File;
    :catch_2
    move-exception v13

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "momentItems":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 238
    return-void
.end method
