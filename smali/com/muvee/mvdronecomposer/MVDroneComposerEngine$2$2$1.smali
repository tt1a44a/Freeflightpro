.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1;
.super Ljava/lang/Object;
.source "MVDroneComposerEngine.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;->a([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(IF)V
    .locals 2

    .prologue
    .line 373
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1$1;

    invoke-direct {v1, p0, p2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1$1;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1;F)V

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    if-nez p1, :cond_2

    .line 380
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1$2;

    invoke-direct {v1, p0, p2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1$2;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1;F)V

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 385
    :cond_2
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1$3;

    invoke-direct {v1, p0, p2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1$3;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1;F)V

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
