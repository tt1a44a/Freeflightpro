.class Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$7;
.super Ljava/lang/Object;
.source "AdvancedVideoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->playWithAudio(ILcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$7;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$7;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 626
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a()I

    move-result v0

    new-array v1, v0, [B

    .line 627
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;-><init>()V

    .line 628
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a()I

    move-result v0

    iput v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    .line 630
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    .line 632
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$7;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->e(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$7;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->e(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$7;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->f(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    iget-object v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 644
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$7;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->getNextAudioFrame(Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;)Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;

    .line 672
    iget-object v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    iget v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 675
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$7;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$7;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;

    iget v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    iget-wide v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->timeStampMsec:J

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;->onAudioFrameUpdate([BIJ)V

    goto :goto_1

    .line 635
    :catch_0
    move-exception v0

    .line 636
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 682
    :cond_1
    return-void
.end method
