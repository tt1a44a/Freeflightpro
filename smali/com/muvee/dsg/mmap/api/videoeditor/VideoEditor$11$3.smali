.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->a()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;

.field final synthetic d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;[ILcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->a:[I

    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->b:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

    iput-object p4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->c:Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 972
    const-string v0, "audio/mp4a-latm"

    const v1, 0xac44

    invoke-static {v0, v1, v12}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 973
    const-string v1, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 974
    new-array v1, v12, [B

    fill-array-data v1, :array_0

    .line 975
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 976
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 977
    const-string v2, "csd-0"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 979
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 981
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->b()I

    move-result v2

    new-array v2, v2, [B

    .line 982
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;-><init>()V

    .line 983
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->b()I

    move-result v4

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    .line 984
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->b()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    .line 987
    :goto_0
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->a:[I

    monitor-enter v4

    .line 995
    :try_start_0
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->a:[I

    const/4 v6, 0x1

    aget v5, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, -0xa

    if-ne v5, v6, :cond_0

    .line 997
    :try_start_1
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->a:[I

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .line 1013
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 999
    :catch_0
    move-exception v5

    .line 1000
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->a:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->a:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-nez v5, :cond_3

    .line 1013
    :cond_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1015
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->c(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)[Z

    move-result-object v4

    monitor-enter v4

    .line 1016
    :try_start_4
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-static {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->c(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)[Z

    move-result-object v5

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_4

    .line 1017
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::run: 01 %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "audio end"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v2, 0x4

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1019
    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1020
    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1021
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1022
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->b:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->writeAudioSampleData(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1023
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1061
    :cond_2
    :goto_1
    const-string v0, "AUDIO_RENDER_THREAD"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->quit(Ljava/lang/String;)V

    .line 1063
    return-void

    .line 1004
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::run: 00 %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "audio end"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/4 v2, 0x4

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1006
    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1007
    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1008
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1010
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->b:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->writeAudioSampleData(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1011
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1025
    :cond_4
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1027
    iget-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1028
    iget-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1030
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v4, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeGetNextAudioFrame(Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;)I

    move-result v4

    .line 1031
    iget-object v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    iget v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    invoke-virtual {v5, v2, v10, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1032
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "::run: %d, %d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget-wide v8, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->timeStampMsec:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->a:[I

    monitor-enter v5

    .line 1035
    :try_start_7
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->a:[I

    const/4 v7, 0x2

    aput v4, v6, v7

    .line 1036
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->a:[I

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1037
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1039
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->c()I

    move-result v5

    if-eq v4, v5, :cond_5

    iget-wide v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->timeStampMsec:J

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->c:Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;

    iget-wide v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;->duration:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_6

    .line 1040
    :cond_5
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::run: 02 %s"

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "audio end"

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iput v13, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1042
    iput v10, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1043
    iput v10, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1044
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1045
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->b:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

    invoke-virtual {v2, v0, v14, v1}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->writeAudioSampleData(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_1

    .line 1025
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 1037
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 1049
    :cond_6
    if-nez v4, :cond_2

    .line 1053
    iput v10, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1054
    iput v10, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1055
    iget v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1056
    iget-wide v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->timeStampMsec:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    iput-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1057
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "run: EncodeFrame - Java size(%d), time(%d)"

    new-array v6, v12, [Ljava/lang/Object;

    iget v7, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget-wide v8, v3, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->timeStampMsec:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;->b:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v1}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->writeAudioSampleData(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_0

    .line 974
    nop

    :array_0
    .array-data 1
        0x12t
        0x10t
    .end array-data
.end method
