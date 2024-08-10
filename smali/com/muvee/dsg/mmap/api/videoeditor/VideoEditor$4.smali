.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->playWithAudio(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;->a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;

    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 601
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "playWithAudio::run: 00"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::run: getPriority=%d %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/16 v0, -0x14

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 604
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::run: getPriority=%d %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->b()I

    move-result v0

    new-array v1, v0, [B

    .line 607
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;-><init>()V

    .line 608
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->b()I

    move-result v0

    iput v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    .line 610
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->b()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    .line 612
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;->a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;->a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "playWithAudio::run: 01"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;->a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->b(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "playWithAudio::run: 02"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 625
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->getNextAudioFrame(Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;)Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;

    .line 626
    iget v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->returnMsg:I

    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->c()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 627
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "playWithAudio EOF reached, %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->returnMsg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_0
    :goto_2
    const-string v0, "AUDIO_PLAY_THREAD"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->quit(Ljava/lang/String;)V

    .line 677
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "playWithAudio::run: 04"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 631
    :cond_1
    iget v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->returnMsg:I

    if-eqz v0, :cond_2

    .line 632
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "playWithAudio failed. result = %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->returnMsg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 666
    :cond_2
    iget-object v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    iget v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    invoke-virtual {v0, v1, v6, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 669
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;

    if-eqz v0, :cond_3

    .line 670
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;

    iget v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    iget-wide v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->timeStampMsec:J

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;->onAudioFrameUpdate([BIJ)V

    .line 674
    :cond_3
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "playWithAudio::run: 03"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
