.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;
.super Ljava/lang/Object;
.source "MVDroneComposerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->seekTo(JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/muvee/studio/view/MmsaGLSurfaceView;

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field final synthetic d:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->d:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iput-wide p2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->a:J

    iput-object p4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    iput-object p5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 251
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::seekTo:: run(): %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "++"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 254
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::seekTo:: above Lollipop: seekTo %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "+"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->d:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iget-wide v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->a:J

    long-to-int v1, v2

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$1;

    invoke-direct {v3, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$1;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->seek(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::seekTo: above Lollipop: seekTo %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "-"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_1
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::seekTo:: run(): %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "--"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "::seekTo:: above Lollipop: seek fail!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$2;

    invoke-direct {v0, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$2;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;)V

    .line 292
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    :try_start_1
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 296
    :catch_1
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
