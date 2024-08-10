.class Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$1;
.super Ljava/lang/Object;
.source "FlypadUploaderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->onProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$1;->this$1:Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

    iput p2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$1;->this$1:Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$000(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$1;->this$1:Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$100(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$1;->val$progress:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/update/task/UploaderTask$Listener;->onProgressChange(F)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$1;->this$1:Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;

    iget-object v0, v0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$100(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$1$1;->val$progress:I

    mul-int/lit8 v1, v1, 0x14

    div-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0x50

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/update/task/UploaderTask$Listener;->onProgressChange(F)V

    goto :goto_0
.end method
