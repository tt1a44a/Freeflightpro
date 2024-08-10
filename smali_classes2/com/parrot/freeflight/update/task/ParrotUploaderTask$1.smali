.class Lcom/parrot/freeflight/update/task/ParrotUploaderTask$1;
.super Ljava/lang/Object;
.source "ParrotUploaderTask.java"

# interfaces
.implements Lcom/parrot/arsdk/arupdater/ARUpdaterPlfUploadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/ParrotUploaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlfUploadProgress(Ljava/lang/Object;F)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "progress"    # F

    .prologue
    .line 324
    const-string v1, "FF4.Updater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload progress: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    invoke-static {v1}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$100(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;)Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$ProgressResultPool;->obtain()Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    move-result-object v0

    .line 327
    .local v0, "progressResult":Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;
    sget-object v1, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;->ONGOING:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->setState(Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;)V

    .line 328
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->setProgress(F)V

    .line 329
    iget-object v1, p0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;->access$200(Lcom/parrot/freeflight/update/task/ParrotUploaderTask;[Ljava/lang/Object;)V

    .line 330
    return-void
.end method
