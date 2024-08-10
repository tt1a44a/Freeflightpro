.class Lcom/parrot/freeflight/update/UpdaterUiController$9;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/UpdaterUiController;->showDownloadingFailedDialog()V
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
    .line 373
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$9;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$9;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$400(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/UpdaterController;->retryDownload()V

    .line 377
    return-void
.end method
