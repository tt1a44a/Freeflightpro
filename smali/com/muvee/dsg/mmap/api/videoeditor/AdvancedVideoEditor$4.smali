.class Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;
.super Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;
.source "AdvancedVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->getFrame(IIILjava/nio/ByteBuffer;)V
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

.field final synthetic e:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;IIILjava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 534
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;->e:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;->a:I

    iput p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;->b:I

    iput p4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;->c:I

    iput-object p5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;->d:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 537
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;->e:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;->a:I

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;->b:I

    iget v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;->c:I

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;IIILjava/nio/ByteBuffer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
