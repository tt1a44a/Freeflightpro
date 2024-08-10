.class Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/SurfaceTexture;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 333
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;

    move-result-object v1

    monitor-enter v1

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 335
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->m(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    move-result-object v0

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->l(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->makeCurrent(Ljava/lang/Object;)V

    .line 336
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->c(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)I

    move-result v3

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->d(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 337
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->m(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    move-result-object v0

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;

    move-result-object v2

    iget-wide v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;->a:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->l(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->setPresentationTime(JLjava/lang/Object;)V

    .line 338
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->clearFrame()V

    .line 340
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->e(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    move-result-object v0

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->EXTERNAL_A:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->n(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;->getTextureId()I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->drawFrame(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;ILcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$DrawFrameHandler;F)V

    .line 341
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->m(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    move-result-object v0

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->l(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->swapBuffers(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 344
    monitor-exit v1

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
