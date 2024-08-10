.class final Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;
.super Ljava/lang/Object;
.source "VideoFrameGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->generateFrame(Lcom/muvee/dsg/mmap/api/videoframegenerator/InitParam;Lcom/muvee/dsg/mmap/api/videoframegenerator/GetFrameParam;Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)V

    .line 110
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$1;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->c(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 145
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->c(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
