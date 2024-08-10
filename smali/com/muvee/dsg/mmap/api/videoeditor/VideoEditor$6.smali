.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;


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

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;->a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;

    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeEgl()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

    invoke-interface {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;->closeEgl()V

    .line 723
    :cond_0
    return-void
.end method

.method public setUpEgl()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

    invoke-interface {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;->setUpEgl()V

    .line 716
    :cond_0
    return-void
.end method

.method public swap()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;->a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;->a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 704
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

    invoke-interface {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;->swap()V

    .line 709
    :cond_0
    return-void

    .line 704
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
