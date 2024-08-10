.class Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$2;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f()V
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
    .line 253
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$2;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$2;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->j(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V

    .line 261
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
