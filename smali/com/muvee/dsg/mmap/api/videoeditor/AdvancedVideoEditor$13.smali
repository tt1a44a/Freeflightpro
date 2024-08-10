.class Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$13;
.super Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;
.source "AdvancedVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->attachSurface(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/SurfaceHolder;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$13;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$13;->a:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 194
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$13;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->createSurface(Landroid/view/SurfaceHolder;)V

    .line 195
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$13;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$13;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 197
    const-string v2, "com.muvee.dsg.mmap.api.videoeditor.AdvancedVideoEditor"

    const-string v3, "::attachSurface: %d,%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {v7, v7, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method
