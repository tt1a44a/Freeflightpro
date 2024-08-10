.class Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$2;
.super Ljava/lang/Object;
.source "GlSurfaceViewAndDecoderLinker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->unlink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;


# direct methods
.method constructor <init>(Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$2;->this$0:Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$2;->this$0:Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;

    iget-object v0, v0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->mRenderingView:Landroid/view/View;

    check-cast v0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 50
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$2;->this$0:Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;

    invoke-virtual {v0}, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->safeDetach()V

    .line 51
    return-void
.end method
