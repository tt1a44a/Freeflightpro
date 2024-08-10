.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$10;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->save(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$10;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$10;->a:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$10;->b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 822
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/sdk/Engine;->setPreviewEx(Z)V

    .line 823
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$10;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)V

    .line 824
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$10;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$10;->a:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$10;->b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-virtual {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSave(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
