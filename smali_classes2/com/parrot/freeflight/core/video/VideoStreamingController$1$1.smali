.class Lcom/parrot/freeflight/core/video/VideoStreamingController$1$1;
.super Ljava/lang/Object;
.source "VideoStreamingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->videoDecodingStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/core/video/VideoStreamingController$1;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/video/VideoStreamingController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/core/video/VideoStreamingController$1;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1$1;->this$1:Lcom/parrot/freeflight/core/video/VideoStreamingController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1$1;->this$1:Lcom/parrot/freeflight/core/video/VideoStreamingController$1;

    iget-object v0, v0, Lcom/parrot/freeflight/core/video/VideoStreamingController$1;->this$0:Lcom/parrot/freeflight/core/video/VideoStreamingController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->access$100(Lcom/parrot/freeflight/core/video/VideoStreamingController;)V

    .line 94
    return-void
.end method
