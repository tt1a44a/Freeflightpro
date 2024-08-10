.class Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$3;
.super Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;
.source "AdvancedVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->setPreviewParam(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)V
    .locals 1

    .prologue
    .line 427
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$3;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 430
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;-><init>()V

    .line 431
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$3;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    move-result-object v1

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    iput v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    .line 440
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$3;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    move-result-object v1

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    iput v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    .line 441
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$3;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    move-result-object v1

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    iput v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    .line 448
    const-string v1, "com.muvee.dsg.mmap.api.videoeditor.AdvancedVideoEditor"

    const-string v2, "::setPreviewParam: %d,%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$3;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v1, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
