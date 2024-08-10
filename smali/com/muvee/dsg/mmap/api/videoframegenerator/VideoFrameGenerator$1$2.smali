.class Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;
.super Ljava/lang/Object;
.source "VideoFrameGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->b()V

    .line 125
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->d(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2$1;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 141
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->d(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 142
    return-void
.end method
