.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$23;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

.field final synthetic b:Z

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;Z)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$23;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$23;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    iput-boolean p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$23;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$23;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$23;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$23;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
