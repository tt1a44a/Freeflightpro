.class Lcom/parrot/freeflight/core/video/VideoStreamingController$2;
.super Ljava/lang/Object;
.source "VideoStreamingController.java"

# interfaces
.implements Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/video/VideoStreamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/video/VideoStreamingController;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;JZFFFFLcom/parrot/controller/stream/UserMetadata;)V
    .locals 15
    .param p1, "mediaCodecInfo"    # Landroid/media/MediaCodecInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mediaFormat"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "info"    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "frame"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "frameTimestamp"    # J
    .param p7, "metadataAvailable"    # Z
    .param p8, "qW"    # F
    .param p9, "qX"    # F
    .param p10, "qY"    # F
    .param p11, "qZ"    # F
    .param p12, "userMetadata"    # Lcom/parrot/controller/stream/UserMetadata;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$2;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->processYUVFrame(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;JZFFFFLcom/parrot/controller/stream/UserMetadata;)V

    .line 133
    return-void
.end method
