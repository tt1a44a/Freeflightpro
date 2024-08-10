.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;
.super Ljava/lang/Object;
.source "MVDroneComposerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startPreview(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field final synthetic b:I

.field final synthetic c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

.field final synthetic d:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;ILcom/muvee/studio/view/MmsaGLSurfaceView;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->d:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iput-object p2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    iput p3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->b:I

    iput-object p4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::startPreview:: run: preview %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "++"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 330
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::startPreview:: above Lollipop: preview %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "+"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 334
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->d:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iget v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->b:I

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;

    invoke-direct {v3, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$1;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;)V

    invoke-static {v0, v1, v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 359
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::startPreview:: above Lollipop: preview %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "-"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::run: preview %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "--"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void

    .line 361
    :cond_0
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;

    invoke-direct {v0, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;)V

    .line 399
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 401
    :try_start_0
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 404
    :catch_1
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method
