.class Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$9;
.super Ljava/lang/Object;
.source "AdvancedVideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->playWithAudio(ILcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$9;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$9;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeEgl()V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public setUpEgl()V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public swap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 704
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$9;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->e(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$9;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->e(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 706
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$9;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$9;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    move-result-object v1

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 708
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->swap()V

    .line 710
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$9;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$9;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 713
    :cond_0
    return-void

    .line 706
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
