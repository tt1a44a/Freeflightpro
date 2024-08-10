.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager;->removeRun(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->removeRun(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$600(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1100(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$10;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1300(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 430
    return-void
.end method
