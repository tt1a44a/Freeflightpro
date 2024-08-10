.class Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$5;
.super Ljava/lang/Object;
.source "AdvancedVideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->seek(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
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
    .line 557
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$5;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$5;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeEgl()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public setUpEgl()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method public swap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$5;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$5;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    move-result-object v1

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 562
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->swap()V

    .line 564
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$5;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$5;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 567
    :cond_0
    return-void
.end method
