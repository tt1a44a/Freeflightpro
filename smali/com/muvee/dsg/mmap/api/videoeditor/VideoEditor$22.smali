.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$22;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$22;->b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$22;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$22;->b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$22;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
