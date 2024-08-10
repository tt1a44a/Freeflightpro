.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$5;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->playWithAudio(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$5;->b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$5;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(IF)V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$5;->b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-static {v0, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;F)F

    .line 691
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$5;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$5;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-interface {v0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 695
    :cond_0
    return-void
.end method
