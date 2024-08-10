.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;
.super Ljava/lang/Object;
.source "MVDroneComposerEngine.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(IF)V
    .locals 2

    .prologue
    .line 338
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1$1;

    invoke-direct {v1, p0, p2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1$1;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;F)V

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    if-nez p1, :cond_2

    .line 345
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1$2;

    invoke-direct {v1, p0, p2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1$2;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;F)V

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 350
    :cond_2
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1$3;

    invoke-direct {v1, p0, p2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1$3;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;F)V

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
