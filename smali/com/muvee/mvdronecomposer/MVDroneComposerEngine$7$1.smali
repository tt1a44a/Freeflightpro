.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7$1;
.super Landroid/os/AsyncTask;
.source "MVDroneComposerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;->run()V
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
.field final synthetic a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;)V
    .locals 0

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1128
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->close()V

    .line 1130
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-static {v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    .line 1132
    :cond_0
    return-object v1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1125
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
