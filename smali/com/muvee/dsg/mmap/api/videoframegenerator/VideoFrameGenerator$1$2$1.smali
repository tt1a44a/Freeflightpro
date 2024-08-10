.class Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2$1;
.super Ljava/lang/Object;
.source "VideoFrameGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->a()V

    .line 131
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;

    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$2;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v1

    .line 138
    :goto_0
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
