.class Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$1;
.super Ljava/lang/Object;
.source "MVDroneComposerEngine.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;


# direct methods
.method constructor <init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(IF)V
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::seekTo:: above Lollipop: state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1$1;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;

    iget-object v0, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;->c:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-interface {v0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 262
    return-void
.end method
