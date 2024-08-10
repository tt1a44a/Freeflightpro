.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->play(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field final synthetic d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;->a:I

    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

    iput-object p4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 534
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/sdk/Engine;->setPreviewEx(Z)V

    .line 535
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)V

    .line 537
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;->a:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->b(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)I

    move-result v2

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativePlay(IILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
