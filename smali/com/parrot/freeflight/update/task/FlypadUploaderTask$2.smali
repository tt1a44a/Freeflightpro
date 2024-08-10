.class Lcom/parrot/freeflight/update/task/FlypadUploaderTask$2;
.super Ljava/lang/Object;
.source "FlypadUploaderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->notifyOnFinish(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    iput-boolean p2, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$2;->this$0:Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;->access$100(Lcom/parrot/freeflight/update/task/FlypadUploaderTask;)Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask$2;->val$success:Z

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/update/task/UploaderTask$Listener;->onFinish(Z)V

    .line 266
    return-void
.end method
