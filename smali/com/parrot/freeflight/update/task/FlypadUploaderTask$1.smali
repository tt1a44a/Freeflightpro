.class Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;
.super Ljava/lang/Object;
.source "FlypadUploaderTask.java"

# interfaces
.implements Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/FlypadUploaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 214
    const-string v0, "FlypadUploaderTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgress() called with: progress = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$200(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$1;-><init>(Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V
    .locals 5
    .param p1, "state"    # Lcom/parrot/freeflight3/update/UpdateState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 229
    const-string v0, "FlypadUploaderTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChanged: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v0, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    if-ne p1, v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$300(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;Z)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    sget-object v0, Lcom/parrot/freeflight3/update/UpdateState;->FINISH:Lcom/parrot/freeflight3/update/UpdateState;

    if-ne p1, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$000(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)I

    move-result v0

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$400(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight3/update/CsrUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->release()V

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0, v4}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$402(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$500(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight3/update/McuUpdateManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$200(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$2;-><init>(Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0, v3}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$300(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;Z)V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$500(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight3/update/McuUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->release()V

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0, v4}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$502(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/McuUpdateManager;

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0, v3}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$300(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;Z)V

    goto :goto_0
.end method
