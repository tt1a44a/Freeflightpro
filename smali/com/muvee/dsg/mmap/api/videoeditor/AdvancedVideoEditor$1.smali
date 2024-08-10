.class Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;
.super Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;
.source "AdvancedVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->init()V
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
    .line 146
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/sdk/Engine;->setAdvancedMode(Z)V

    .line 150
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->setUpEGL()Z

    .line 151
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->b(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
