.class public interface abstract Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder$OnFrameAvailableListener;
.super Ljava/lang/Object;
.source "ARStream2MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/decoder/ARStream2MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFrameAvailableListener"
.end annotation


# virtual methods
.method public abstract onFrameAvailable(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;JZFFFFLcom/parrot/controller/stream/UserMetadata;)V
    .param p1    # Landroid/media/MediaCodecInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/parrot/controller/stream/UserMetadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
