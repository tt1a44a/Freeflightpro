.class Lcom/parrot/freeflight/update/view/UpdateListController$5;
.super Ljava/lang/Object;
.source "UpdateListController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


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
    .line 130
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController$5;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$5;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$800(Lcom/parrot/freeflight/update/view/UpdateListController;)V

    .line 134
    return-void
.end method
