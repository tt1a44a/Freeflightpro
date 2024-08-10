.class public interface abstract Lcom/parrot/freeflight/core/video/VideoStreamingController$OnFrameDecodedListener;
.super Ljava/lang/Object;
.source "VideoStreamingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/video/VideoStreamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFrameDecodedListener"
.end annotation


# virtual methods
.method public abstract onFrameDecoded([Lcom/parrot/arsdk/lynx/ARCodecsComponent;JZFFFFIILcom/parrot/controller/stream/UserMetadata;)V
    .param p1    # [Lcom/parrot/arsdk/lynx/ARCodecsComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
