.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$9$1;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9$1;->this$1:Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9;->val$listener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$9$1;->val$result:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onSuccess(Ljava/lang/Object;)V

    .line 414
    return-void
.end method
