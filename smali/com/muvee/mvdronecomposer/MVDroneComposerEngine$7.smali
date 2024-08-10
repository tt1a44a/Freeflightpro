.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;
.super Ljava/lang/Object;
.source "MVDroneComposerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)V
    .locals 0

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->close()V

    .line 1122
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7$1;

    invoke-direct {v0, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7$1;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;)V

    .line 1135
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
