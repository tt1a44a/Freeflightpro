.class Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1$1;
.super Ljava/lang/Object;
.source "TranscoderBitmap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->onlyIFrame:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;->b:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->f(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V

    goto :goto_0
.end method
