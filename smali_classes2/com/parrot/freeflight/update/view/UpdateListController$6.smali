.class Lcom/parrot/freeflight/update/view/UpdateListController$6;
.super Ljava/lang/Object;
.source "UpdateListController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/view/UpdateListController;->processInternetConnectionChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

.field final synthetic val$hasInternet:Z


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/view/UpdateListController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/view/UpdateListController;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController$6;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    iput-boolean p2, p0, Lcom/parrot/freeflight/update/view/UpdateListController$6;->val$hasInternet:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 297
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$6;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v0, v3}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$902(Lcom/parrot/freeflight/update/view/UpdateListController;Z)Z

    .line 298
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$6;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    iget-boolean v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController$6;->val$hasInternet:Z

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$1002(Lcom/parrot/freeflight/update/view/UpdateListController;Z)Z

    .line 299
    iget-boolean v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$6;->val$hasInternet:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$6;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$1102(Lcom/parrot/freeflight/update/view/UpdateListController;Z)Z

    .line 301
    new-instance v0, Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController$6;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;-><init>(Lcom/parrot/freeflight/update/view/UpdateListController;Lcom/parrot/freeflight/update/view/UpdateListController$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$6;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$1300(Lcom/parrot/freeflight/update/view/UpdateListController;)V

    .line 304
    return-void
.end method
