.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$19;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setMedia([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$19;->b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$19;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$19;->b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$19;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetMedia([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
