.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$14;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setMaxMuveeDuration(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;I)V
    .locals 0

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$14;->b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$14;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$14;->b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$14;->a:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetMaxMuveeDuration(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
