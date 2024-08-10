.class Lcom/parrot/freeflight/update/view/UpdateListController$1;
.super Ljava/lang/Object;
.source "UpdateListController.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetStatusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/view/UpdateListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/view/UpdateListController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/view/UpdateListController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/view/UpdateListController;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController$1;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternetStatusChanged(Z)V
    .locals 1
    .param p1, "isInternetAvailable"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$1;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$000(Lcom/parrot/freeflight/update/view/UpdateListController;Z)V

    .line 88
    return-void
.end method
