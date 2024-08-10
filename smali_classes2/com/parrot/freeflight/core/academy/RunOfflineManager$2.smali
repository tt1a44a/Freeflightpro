.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$2;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$2;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$2;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$300(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$2;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$200(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$2;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$200(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :cond_0
    return-void
.end method
