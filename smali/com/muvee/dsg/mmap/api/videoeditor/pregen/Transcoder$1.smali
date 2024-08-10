.class Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->performTranscode(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V

    .line 68
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Landroid/media/MediaFormat;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;I)I

    .line 69
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;I)I

    .line 71
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->c(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)I

    move-result v2

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->d(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;-><init>(II)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    .line 72
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->EXTERNAL_A:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    invoke-direct {v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    .line 73
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->e(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->validate()V

    .line 75
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V

    .line 76
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V

    .line 78
    const-string v0, "decoder.input.thread"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1$1;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 84
    const-string v0, "decoder.ouput.thread"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1$2;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1$2;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
