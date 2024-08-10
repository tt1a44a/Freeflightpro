.class Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;
.super Ljava/lang/Object;
.source "TranscoderBitmap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->performTranscode(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V

    .line 82
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    move-result-object v2

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputWidth:I

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    move-result-object v3

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputHeight:I

    invoke-direct {v1, v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;-><init>(II)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    .line 83
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->EXTERNAL_A:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    invoke-direct {v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    .line 84
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->c(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->validate()V

    .line 86
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    move-result-object v2

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputWidth:I

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    move-result-object v3

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputHeight:I

    invoke-direct {v1, v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;-><init>(II)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;

    .line 88
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V

    .line 90
    const-string v0, "decoder.input.thread"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1$1;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 101
    const-string v0, "decoder.ouput.thread"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1$2;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1$2;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
