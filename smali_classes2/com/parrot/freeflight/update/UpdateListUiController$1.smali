.class Lcom/parrot/freeflight/update/UpdateListUiController$1;
.super Ljava/lang/Object;
.source "UpdateListUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/update/view/UpdateListController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdateListUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdateListUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdateListUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdateListUiController;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdateListUiController$1;->this$0:Lcom/parrot/freeflight/update/UpdateListUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListUpdated()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListUiController$1;->this$0:Lcom/parrot/freeflight/update/UpdateListUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateListUiController;->access$000(Lcom/parrot/freeflight/update/UpdateListUiController;)V

    .line 48
    return-void
.end method
