.class Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;
.super Landroid/os/AsyncTask;
.source "UpdateListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/view/UpdateListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckServerUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/view/UpdateListController;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/update/view/UpdateListController;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/update/view/UpdateListController;Lcom/parrot/freeflight/update/view/UpdateListController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;
    .param p2, "x1"    # Lcom/parrot/freeflight/update/view/UpdateListController$1;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;-><init>(Lcom/parrot/freeflight/update/view/UpdateListController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 342
    new-instance v0, Lcom/parrot/freeflight/update/UpdateSyncable;

    invoke-direct {v0}, Lcom/parrot/freeflight/update/UpdateSyncable;-><init>()V

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$1400(Lcom/parrot/freeflight/update/view/UpdateListController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/update/UpdateSyncable;->checkUpdates(Landroid/content/Context;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 339
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$1102(Lcom/parrot/freeflight/update/view/UpdateListController;Z)Z

    .line 348
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$1300(Lcom/parrot/freeflight/update/view/UpdateListController;)V

    .line 349
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 339
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
