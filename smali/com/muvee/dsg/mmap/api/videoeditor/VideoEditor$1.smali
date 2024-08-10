.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$1;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->init()V
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
    .line 176
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeInit()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
