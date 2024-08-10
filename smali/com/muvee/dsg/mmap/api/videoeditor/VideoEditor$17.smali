.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$17;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->isNeedToInit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)V
    .locals 0

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$17;->a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$17;->a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeIsNeedToInit()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
