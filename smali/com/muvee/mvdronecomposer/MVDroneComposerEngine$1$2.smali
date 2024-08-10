.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$2;
.super Landroid/os/AsyncTask;
.source "MVDroneComposerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::seekTo:: doInBackground: seekTo %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "+"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->d:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;

    iget-wide v2, v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->a:J

    long-to-int v1, v2

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;

    iget-object v2, v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$2$1;

    invoke-direct {v3, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$2$1;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->seek(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::seekTo:: doInBackground: seekTo %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "-"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "::seekTo:: doInBackground: seek fail!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 270
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$2;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
