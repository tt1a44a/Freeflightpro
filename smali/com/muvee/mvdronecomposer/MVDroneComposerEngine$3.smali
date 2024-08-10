.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;
.super Ljava/lang/Object;
.source "MVDroneComposerEngine.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/muvee/studio/view/MmsaGLSurfaceView;

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field final synthetic d:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Lcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 1

    .prologue
    .line 844
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;->d:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iput-object p2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    iput-object p3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;->a:Z

    return-void
.end method


# virtual methods
.method public closeEgl()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->closeEGL()V

    .line 865
    return-void
.end method

.method public setUpEgl()V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->setUpEGL(I)Z

    .line 860
    return-void
.end method

.method public swap()V
    .locals 3

    .prologue
    .line 849
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->swap()V

    .line 850
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;->a:Z

    .line 854
    :cond_0
    return-void
.end method
