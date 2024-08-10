.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;
.super Landroid/os/AsyncTask;
.source "MVDroneComposerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->resumeExport()V
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
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;->b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 921
    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 946
    :try_start_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;->b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    new-instance v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5$1;

    invoke-direct {v1, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5$1;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;)V

    invoke-virtual {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->resumeSave(Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 958
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;->a:Z

    if-eqz v0, :cond_0

    .line 959
    const/4 v0, -0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 966
    :goto_0
    return-object v0

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;->b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->increaseExportCount()V

    .line 962
    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 966
    const/4 v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 932
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;->b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 933
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 934
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 921
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 921
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 926
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;->a:Z

    .line 928
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 938
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;->b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    .line 939
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 938
    invoke-interface {v1, v2, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 940
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 941
    return-void
.end method
