.class Lcom/parrot/freeflight/update/UpdaterUiController$18;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/UpdaterUiController;->showUploadingFailedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$18;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$18;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$400(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/UpdaterController;->isDeviceReadyForUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$18;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$400(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/UpdaterController;->retryUpload()V

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$18;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$600(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    goto :goto_0
.end method
