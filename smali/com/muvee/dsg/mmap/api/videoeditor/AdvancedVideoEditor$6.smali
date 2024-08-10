.class Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$6;
.super Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;
.source "AdvancedVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->seek(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field final synthetic d:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 1

    .prologue
    .line 577
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$6;->d:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$6;->a:I

    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$6;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

    iput-object p4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$6;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$6;->d:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$6;->a:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$6;->b:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$6;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-static {v0, v1, v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
