.class Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;
.super Ljava/lang/Object;
.source "ARStream2MediaCodecVideoDecoder.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;


# direct methods
.method constructor <init>(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFreeBuffer()I
    .locals 6

    .prologue
    .line 122
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v2, v1, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v1, v1, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/32 v4, 0x80e8

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 128
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "debug_stream"

    const-string v3, "exception in mMediaCodec.dequeueInputBuffer"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    const/4 v1, -0x1

    monitor-exit v2

    goto :goto_0

    .line 129
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBufferReady(IJIJIJJJLcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;III)V
    .locals 24
    .param p1, "bufferIdx"    # I
    .param p2, "metadata"    # J
    .param p4, "metadataSize"    # I
    .param p5, "userdata"    # J
    .param p7, "userdataSize"    # I
    .param p8, "auTimestamp"    # J
    .param p10, "auTimestampRaw"    # J
    .param p12, "auTimestampLocal"    # J
    .param p14, "auSyncType"    # Lcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;
    .param p15, "isComplete"    # I
    .param p16, "hasErrors"    # I
    .param p17, "isRef"    # I

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 139
    const/16 v20, -0x1

    .line 140
    .local v20, "outIndex":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v5, v5, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-boolean v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mUseSurface:Z

    if-eqz v4, :cond_2

    .line 144
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-static {v5}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$000(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v5

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v5, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v20

    .line 145
    if-ltz v20, :cond_1

    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 149
    :cond_1
    if-gez v20, :cond_0

    .line 203
    :goto_0
    monitor-exit v22

    .line 204
    return-void

    .line 151
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mFrameMetadataContainer:Ljava/util/Queue;

    if-eqz v4, :cond_3

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-static {v4}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$100(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;

    move-result-object v4

    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->loadMetadata(JI)V

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mFrameMetadataContainer:Ljava/util/Queue;

    new-instance v5, Lcom/parrot/controller/stream/FrameMetadata;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-static {v6}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$100(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->isAvailable()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    .line 155
    invoke-static {v6}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$100(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->getQuaternionW()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-static {v6}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$100(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->getQuaternionX()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    .line 156
    invoke-static {v6}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$100(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->getQuaternionY()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-static {v6}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$100(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/arsdk/frameinfo/FrameInfoDeserializer;->getQuaternionZ()F

    move-result v12

    move-wide/from16 v6, p8

    invoke-direct/range {v5 .. v12}, Lcom/parrot/controller/stream/FrameMetadata;-><init>(JZFFFF)V

    .line 154
    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_3
    sget-object v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->sUserMetadataDeserializer:Lcom/parrot/controller/stream/UserMetadataDeserializer;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mFrameUserMetadataContainer:Ljava/util/Queue;

    if-eqz v4, :cond_4

    .line 159
    sget-object v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->sUserMetadataDeserializer:Lcom/parrot/controller/stream/UserMetadataDeserializer;

    move-wide/from16 v0, p5

    move/from16 v2, p7

    invoke-interface {v4, v0, v1, v2}, Lcom/parrot/controller/stream/UserMetadataDeserializer;->extract(JI)Lcom/parrot/controller/stream/UserMetadata;

    move-result-object v21

    .line 160
    .local v21, "userMetadata":Lcom/parrot/controller/stream/UserMetadata;
    if-eqz v21, :cond_4

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mFrameUserMetadataContainer:Ljava/util/Queue;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v21    # "userMetadata":Lcom/parrot/controller/stream/UserMetadata;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-static {v5}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$000(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v5

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v5, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v20

    .line 168
    packed-switch v20, :pswitch_data_0

    .line 181
    :goto_1
    if-ltz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mFrameMetadataContainer:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/parrot/controller/stream/FrameMetadata;

    .line 183
    .local v19, "frameMetadataPopped":Lcom/parrot/controller/stream/FrameMetadata;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mFrameUserMetadataContainer:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/parrot/controller/stream/UserMetadata;

    .line 184
    .local v17, "frameUserMetadataPopped":Lcom/parrot/controller/stream/UserMetadata;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v9, v4, v20

    .line 185
    .local v9, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    .line 186
    .local v7, "mediaFormat":Landroid/media/MediaFormat;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-static {v4}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$200(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-virtual {v4}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->getMediaCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-static {v4}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->access$000(Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/controller/stream/FrameMetadata;->getAuTimestamp()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    .line 187
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/controller/stream/FrameMetadata;->getMetadataAvailable()Z

    move-result v12

    .line 188
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/controller/stream/FrameMetadata;->getQuaternionW()F

    move-result v13

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/controller/stream/FrameMetadata;->getQuaternionX()F

    move-result v14

    .line 189
    invoke-virtual/range {v19 .. v19}, Lcom/parrot/controller/stream/FrameMetadata;->getQuaternionY()F

    move-result v15

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/controller/stream/FrameMetadata;->getQuaternionZ()F

    move-result v16

    .line 186
    invoke-interface/range {v5 .. v17}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;->onFrameAvailable(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;JZFFFFLcom/parrot/controller/stream/UserMetadata;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 201
    .end local v7    # "mediaFormat":Landroid/media/MediaFormat;
    .end local v9    # "buffer":Ljava/nio/ByteBuffer;
    .end local v17    # "frameUserMetadataPopped":Lcom/parrot/controller/stream/UserMetadata;
    .end local v19    # "frameMetadataPopped":Lcom/parrot/controller/stream/FrameMetadata;
    :cond_5
    :goto_2
    if-gez v20, :cond_4

    goto/16 :goto_0

    .line 170
    :pswitch_0
    const-string v4, "Decoder"

    const-string v5, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v5, v5, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 194
    :catch_0
    move-exception v18

    .line 195
    .local v18, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    if-ltz v20, :cond_5

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v4, v4, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_2

    .line 203
    .end local v18    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 174
    :pswitch_1
    :try_start_3
    const-string v4, "Decoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v6, v6, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 168
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSpsPpsReady(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 111
    :try_start_0
    const-string v1, "debug_stream"

    const-string v2, "onSpsPpsReady()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->initMediaCodec(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 113
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v1, v1, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "debug_stream"

    const-string v2, "exception in initMediaCodec"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onVideoAvailable()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "debug_stream"

    const-string v1, "onVideoAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    invoke-virtual {v0}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->instantiateMediaCodec()V

    .line 85
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    invoke-interface {v0}, Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;->videoDecodingStarted()V

    .line 88
    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "debug_stream"

    const-string v1, "onVideoError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->releaseMediaCodec(Z)V

    .line 103
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    invoke-interface {v0}, Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;->videoDecodingStopped()V

    .line 106
    :cond_0
    return-void
.end method

.method public onVideoStopped()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "debug_stream"

    const-string v1, "onVideoStopped()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->releaseMediaCodec(Z)V

    .line 94
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$1;->this$0:Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    invoke-interface {v0}, Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;->videoDecodingStopped()V

    .line 97
    :cond_0
    return-void
.end method
