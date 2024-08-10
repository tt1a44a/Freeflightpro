.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;
.super Landroid/os/AsyncTask;
.source "MVDroneComposerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->run()V
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
.field final synthetic a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 365
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::startPreview:: doInBackground: preview %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "+"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->a:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 369
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->d:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    iget v1, v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->b:I

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    iget-object v2, v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;->c:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1;

    invoke-direct {v3, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2$1;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;)V

    invoke-static {v0, v1, v2, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 395
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::startPreview:: doInBackground: preview %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "-"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 361
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2$2;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
