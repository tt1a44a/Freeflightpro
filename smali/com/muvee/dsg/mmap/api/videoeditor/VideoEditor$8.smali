.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->getFrame(IIILjava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/nio/ByteBuffer;

.field final synthetic e:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;IIILjava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;->e:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;->a:I

    iput p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;->b:I

    iput p4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;->c:I

    iput-object p5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;->d:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 762
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;->e:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;->a:I

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;->b:I

    iget v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;->c:I

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeGetFrame(IIILjava/nio/ByteBuffer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
